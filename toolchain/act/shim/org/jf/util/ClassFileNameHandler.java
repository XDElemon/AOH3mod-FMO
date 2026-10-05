package org.jf.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * 兼容垫片：baksmali 2.5.2 依赖 org.jf.util.ClassFileNameHandler，
 * 但本机 lib 里的 baksmali.jar/smali.jar/dexlib2.jar 都没打这个类（它在发行版的 util 里）。
 * 只实现 baksmali 用到的 API：构造 (File, String) + File getUniqueFilenameForClass(String)。
 */
public class ClassFileNameHandler {
  private final File baseDir;
  private final String extension;
  private final Map<String, String> used = new HashMap<String, String>();

  public ClassFileNameHandler(File path, String fileExtension) {
    this.baseDir = path;
    this.extension = fileExtension == null ? "" : fileExtension;
  }

  /** 由类型描述符（如 La/b/C; 或 La/b/C$D;）得到唯一文件路径 */
  public File getUniqueFilenameForClass(String classType) {
    String name = classType;
    if (name.startsWith("L")) name = name.substring(1);
    if (name.endsWith(";")) name = name.substring(0, name.length() - 1);
    String key = name.toLowerCase();
    File f = new File(baseDir, name + extension);
    File parent = f.getParentFile();
    if (parent != null && !parent.exists()) parent.mkdirs();
    String prev = used.get(key);
    if (prev != null && !prev.equals(name)) {
      // 大小写冲突：退化为平铺名，避免互相覆盖
      String flat = name.replace('/', '_') + extension;
      f = new File(baseDir, flat);
      parent = f.getParentFile();
      if (parent != null && !parent.exists()) parent.mkdirs();
    }
    used.put(key, name);
    return f;
  }

  public File getFilenameForClass(String classType) {
    return getUniqueFilenameForClass(classType);
  }
}