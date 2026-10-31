---
name: fmo-java-stub-pitfalls
description: FMO 把 game smali 类改写成 Java（src/java + gen_java_stubs 桩）时必踩的四类坑：桩把嵌套枚举/树外类型退化成 Object 导致的 NoSuchFieldError/NoSuchMethodError、枚举只能靠 ordinal 反射、build_java.sh 全量重编会覆盖 smali 侧的手工修复、以及"能编出来能装上、一开打才崩"的排查路径。任何要新建/修改 src/java 里引用游戏类的批次先读它。
---

# FMO Java 桩的四个坑（2026-10-31 血泪版）

> 背景：项目铁律是"逻辑写 Java"（`src/java/**` → `bash tools/build_java.sh` → javac → d8 → baksmali → 覆盖 `src/smali`）。
> 但 javac 编译时用的是 `tools/gen_java_stubs.py` 生成的**桩**——桩只保留签名，**类型信息被降级**。
> 这一份记的就是降级带来的四类事故，以及每一类怎么提前发现。

## 1. 桩会把"树外/嵌套类型"退化成 `Object` ⇒ 字段引用类型对不上（v143 真机闪退）

`gen_java_stubs.jtype()` 的规则：`java.*` 与已知类用真名，**其余一律 `Object`**。
于是 `AirMission.type`（真类型 `AirMission$MissionType`）在桩里是 `Object`。

javac 据此生成的字节码是：

```
sget-object v0, Laoc/.../AirMission;->type:Ljava/lang/Object;
```

而真类的字段是 `type:LMissionType;` —— **Dalvik 的字段引用带类型签名**，对不上就：

```
java.lang.NoSuchFieldError: No field type of type Ljava/lang/Object;
  in class Laoc/kingdoms/lukasz/map/battles/AirMission;
  at ...AirLaunch.tick(AirLaunch.java:46)
```

**症状特征**：编译通过、装机正常、**一进入那条代码路径就闪退**，且只在真机（离线 javac 测试发现不了）。

**正确写法**：这类字段一律**按名反射读**，带缓存：

```java
private static final java.util.HashMap<String, java.lang.reflect.Field> FIELD_CACHE = ...;

static Object field(Object o, String name) {
    String key = o.getClass().getName() + "#" + name;
    java.lang.reflect.Field f = FIELD_CACHE.get(key);
    if (f == null) { f = o.getClass().getField(name); FIELD_CACHE.put(key, f); }
    return f.get(o);
}
```

**同类风险**：`AirUnit.type`、`AirMission.state`、任何 `Xxx$Enum` / 树外类字段。
**排查**：装机前把 dex 反汇编，grep 该字段是否还有 `->type:Ljava/lang/Object;` 这种引用。

## 2. 枚举只能按 `ordinal()` 比 —— 而 ordinal 是**存档契约**

Java 侧拿不到枚举常量（桩里是 Object），所以：

```java
static int ord(Object e) {   // 与 AirBuildPick.ordinalOf 同款
    if (e instanceof Enum) return ((Enum<?>) e).ordinal();
    /* 反射兜底 */
}
```

然后把序号硬编码成常量，**但必须从 smali 的 `.field public static final enum` 顺序核对**：

| 枚举 | 序号 |
|---|---|
| `AirMission$MissionType` | AIR_SUPERIORITY=0, ATTACK_ARMY=1, INTERCEPT=2, PATROL=3, STRATEGIC_BOMBING=4 |
| `AirMission$MissionState` | ABORTED=0, COMPLETED=1, EN_ROUTE=2, EXECUTING=3, PLANNING=4, RETURNING=5 |
| `AirUnit$AirType` | ATTACKER=0, BOMBER=1, FIGHTER=2, INTERCEPTOR=3 |

⚠️ **顺序不能改**：`MissionType` 的 ordinal 进存档（`Save_AirMission.type` 是枚举名字？不，是枚举本身，序列化按名/序），
改顺序 = 旧档语义错乱。

## 3. `build_java.sh` 全量重编会**覆盖 smali 侧的手工修复**（v143–v144 教训）

`build_java.sh` 无参 = 编译 `src/java` 里**所有** `.java`，然后 baksmali 覆盖 `src/smali` 同名文件。

所以：**任何"只改了 smali 没回写 Java"的修复，下一次全量重编就没了。**

事故实例：v138 把建筑图标坐标改成实时相机，只改了 smali；v143 我跑了一次全量
`build_java.sh`，`AirProvinceIcons.smali` 被从（没跟上的）Java 源重新生成 ⇒ 修复被抹掉，
用户看到"图标 X 轴粘屏"又回来了。

**纪律**：
- 修 Java 产物类（有同名 `.java`）→ **一定改 `.java`**，别改 smali；
- 手改 smali 的例外类（`baseline/smali_exceptions.txt` 登记的）不受影响；
- 全量重编后跑 `gate_change_scope`，看有没有"你以为没动"的类出现在变更列表里。

## 4. 全量重编的"伪变更"：寄存器重排

全量 `build_java.sh` 后，某些类的 smali 会因 javac/d8 重新分配寄存器而变化
（如 `.registers 14 → 15`、标签平移），但 **Java 源一个字节没改**。

判断：`git diff` 该 `.java` 为空 ⇒ 是重编产物。变更范围白名单里注明一句即可，
不要为了消掉这个差异去手改 smali。

## 5. 一次真机定死问题的排查顺序

1. 崩溃先抓 `adb-shell "logcat -b crash -d"`（**只有这里能看到 `NoSuchFieldError`/`VerifyError`**）；
2. 看异常类型：
   - `NoSuchFieldError ... Ljava/lang/Object;` ⇒ 坑 1（桩降级）；
   - `VerifyError: Verifier rejected class` ⇒ 操作码/字段类型不合法（见 `fmo-air-defense` §8 的 `aget` 事故）；
   - `NoSuchMethodError` ⇒ 桩里方法签名与真实类不一致（多为参数类型被降级）；
3. 静态复核：把**装进包里的** `classes.dex` 反汇编，grep 崩溃点的方法/字段引用，确认已经改掉；
4. 再出包 —— 不要"改完就装"，一次真机周期很贵。

## 6. 闸门能覆盖什么

| 闸门 | 覆盖 | 抓不到 |
|---|---|---|
| B10 | `missileTick` 的接线/时钟契约（Java 侧查 `AirLaunch`） | 字段类型不匹配 |
| B53 | 伤害口径/结算/过期（离线真跑 Java + 桩） | 桩与真类的**字段类型**差异（桩测试永远绿） |
| B57 | `aget/aput` 家族操作码 | 字段引用签名 |
| B58 | 发射决策五条口径 | 同上 |

**结论**：桩测试全绿 ≠ 真机能跑。凡是新写的 Java 类第一次上真机，都要按 §5 的流程准备一次。

## 7. 检查清单（新建/修改 `src/java` 里的类时）

- [ ] 有没有直接读**非原始类型字段**（枚举/游戏类）？→ 改反射 + 缓存；
- [ ] 有没有比较枚举？→ 用 `ord()` + 硬编码序号（并从 smali 核对顺序）；
- [ ] 有没有调用**返回游戏类型**的方法（`Game.getProvince()` 之类）？→ 看现有类怎么写（`AirProjectileCore` 有先例）；
- [ ] 改的是不是有同名 `.java` 的 smali？→ 改 Java，别改 smali；
- [ ] 全量重编后 `gate_change_scope` 的"意外变更"是否都是寄存器重排？
- [ ] 装机前：反汇编包内 dex，grep 掉那个字段引用了吗？
