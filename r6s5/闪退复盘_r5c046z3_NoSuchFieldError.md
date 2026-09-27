> 批次 **r5c046z3** ｜ 生成 2026-09-27 03:31 ｜ dex `e2efa805676bf81f95c2d6ffdc997a3c` ／ apk `39dc10c524ddf867f8a3a8119dc75e1e`（738,377,701 B）｜ Earth3=18510 ｜ 基线 `1263151053` ｜ 状态：已装机 · 三对齐全绿 · 待实测

# 闪退复盘 · r5c046z3（NoSuchFieldError：Float.POSITIVE_INFINITY 被当对象读）

## 一、现场（logcat crash buffer 原文）
```
09-27 11:14:01.764 16625 20833 E AndroidRuntime: FATAL EXCEPTION: Thread-6
09-27 11:14:01.764 16625 20833 E AndroidRuntime: Process: age.of.history3.qiamxi.zhiri, PID: 16625
09-27 11:14:01.764 16625 20833 E AndroidRuntime: java.lang.NoSuchFieldError:
    No static field POSITIVE_INFINITY of type Ljava/lang/Float; in class Ljava/lang/Float;
    or its superclasses (declaration of 'java.lang.Float' appears in /apex/com.android.art/javalib/core-oj.jar)
```
- 线程 `Thread-6`（回合推进线程）＝ `updateOffensivesP → tryStrikeForAirportP → pickStrikeTargetP` 首次真正执行到选靶。
- 这也是**好消息**：说明前几批的闸门全部打开，P 线终于"跑到了选靶"。

## 二、根因（逐字）
`pickStrikeTargetP` 原代码（r5c046z 批我写的）：
```
sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;
invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
move-result v3
```
`java.lang.Float.POSITIVE_INFINITY` 的真实声明是 **`public static final float`（类型 F）**，不是 `Float` 对象。
- smali 里把它写成 `Ljava/lang/Float;` 并配 `sget-object`：**ART 校验器按"smali 声明的类型"通过**，所以没有 VerifyError；
- 但**运行时字段解析**按真实签名查找 ⇒ 找不到 `...:Ljava/lang/Float;` ⇒ `NoSuchFieldError`。
⇒ 这类错误**只在实际执行到那一行时才炸**，因此前几批（闸门未开）都"看着没事"。

## 三、修复（唯一正确姿势）
```
# +Inf 必须走 float 渠道：
const v10, 0x7f800000                                  # int 位型：+Inf 的 IEEE754 编码
invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F
move-result v3                                         # v3 是 float
```
> 也可用 `double +Inf` 位型 `const-wide …0x7ff0000000000000L` + `double-to-float`（占两个寄存器），本批选单位寄存器方案。

## 四、新增铁律（写进编写规范）
1. **凡是 `java.lang.*` 的"静态常量"，先确认它是基本类型还是对象**：
   `Float.POSITIVE_INFINITY/MAX_VALUE/MIN_VALUE`、`Double.*`、`Integer.MAX_VALUE` 等全是**基本类型**；
   能按对象读的只有 `Boolean.TRUE/FALSE`、`Integer` 的缓存对象等（且签名要写对）。
2. smali 中 `sget-object …:Ljava/lang/X;` 读一个基本类型字段 ⇒ **能过校验、必炸运行**（比 VerifyError 更阴）。
3. 需要"无穷大/最大浮点"时，统一走 `Float.intBitsToFloat(0x7f800000)`（+Inf）
   或 `Float.intBitsToFloat(0x7f7fffff)`（Float.MAX_VALUE）。
4. 新门禁 **51-1 / 51-5** 已把"对象读 Float"写法纳入拦截。

## 五、症状 ↔ 修复对应表
| 症状 | 原因 | 修复 |
|---|---|---|
| 进入战斗若干回合后必崩（GLThread/Thread-6） | 选靶首次执行到 `POSITIVE_INFINITY` 对象读 | 改 `intBitsToFloat` 渠道 |
| 崩溃前 `nAS=0`（看日志像"没派机"） | 崩在派发之前 | 同上；修好后 `nAS` 才有机会 >0 |
