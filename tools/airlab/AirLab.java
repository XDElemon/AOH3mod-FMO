package fmo.airlab;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpServer;

import aoc.kingdoms.lukasz.map.battles.AirCraft;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

/**
 * AirLab：空军参数调参台（本地 Java 服务器 + HTML 页面）。
 *
 * <p>为什么是 Java 起服务：浏览器跑不了 Java，但**飞行物理必须和游戏同一份代码**
 * （{@link AirCraft}），所以让 Java 当后端算轨迹，页面只负责画。
 * 这样网页上调出来的手感 = 游戏里的手感。</p>
 *
 * 用法：
 *   javac -encoding UTF-8 -d /tmp/airlab_cls src/java/aoc/kingdoms/lukasz/map/battles/AirCraft.java tools/airlab/AirLab.java
 *   java -cp /tmp/airlab_cls AirLab 8765
 * 然后浏览器开 http://127.0.0.1:8765/
 */
public final class AirLab {

    private static Path tsv;
    private static Path tuned;

    public static void main(String[] args) throws Exception {
        String root = System.getenv("AIRLAB_ROOT");
        if (root == null) {
            root = ".";
        }
        Path base = Paths.get(root, "tools", "airlab");
        tsv = base.resolve("models.tsv");
        tuned = base.resolve("tuned.tsv");
        int port = args.length > 0 ? Integer.parseInt(args[0]) : 8765;

        HttpServer srv = HttpServer.create(new InetSocketAddress("127.0.0.1", port), 0);
        srv.createContext("/", AirLab::handle);
        srv.setExecutor(null);
        srv.start();
        System.out.println("AirLab listening on http://127.0.0.1:" + port + "/");
        System.out.println("models: " + tsv);
    }

    private static void handle(HttpExchange ex) throws IOException {
        try {
            String path = ex.getRequestURI().getPath();
            if ("/".equals(path) || "/index.html".equals(path)) {
                send(ex, 200, "text/html; charset=utf-8", page());
            } else if ("/api/models".equals(path)) {
                send(ex, 200, "application/json; charset=utf-8", modelsJson());
            } else if ("/api/sim".equals(path)) {
                send(ex, 200, "application/json; charset=utf-8", sim(ex));
            } else if ("/api/save".equals(path)) {
                send(ex, 200, "application/json; charset=utf-8", save(ex));
            } else {
                send(ex, 404, "text/plain; charset=utf-8", "not found");
            }
        } catch (Throwable t) {
            send(ex, 500, "text/plain; charset=utf-8", "err: " + t);
        } finally {
            ex.close();
        }
    }

    private static void send(HttpExchange ex, int code, String type, String body) throws IOException {
        byte[] b = body.getBytes(StandardCharsets.UTF_8);
        ex.getResponseHeaders().set("Content-Type", type);
        ex.getResponseHeaders().set("Cache-Control", "no-store");
        ex.sendResponseHeaders(code, b.length);
        try (OutputStream os = ex.getResponseBody()) {
            os.write(b);
        }
    }

    /** 读 models.tsv（tab 分隔，首行 # 注释）。 */
    private static List<String[]> readModels() throws IOException {
        List<String[]> rows = new ArrayList<>();
        if (!Files.isRegularFile(tsv)) {
            return rows;
        }
        for (String line : Files.readAllLines(tsv, StandardCharsets.UTF_8)) {
            if (line.isEmpty() || line.charAt(0) == '#') {
                continue;
            }
            String[] f = line.split("\t");
            if (f.length >= 8) {
                rows.add(f);
            }
        }
        return rows;
    }

    private static String modelsJson() throws IOException {
        List<String[]> rows = readModels();
        StringBuilder sb = new StringBuilder("[");
        for (int i = 0; i < rows.size(); i++) {
            String[] r = rows.get(i);
            if (i > 0) {
                sb.append(',');
            }
            sb.append("{\"key\":\"").append(esc(r[0]))
              .append("\",\"name\":\"").append(esc(r[1]))
              .append("\",\"type\":\"").append(esc(r[2]))
              .append("\",\"gen\":").append(r[3])
              .append(",\"speed\":").append(r[4])
              .append(",\"agility\":").append(r[5])
              .append(",\"fuel\":").append(r[6])
              .append(",\"radarDetect\":").append(r[7])
              .append('}');
        }
        return sb.append(']').toString();
    }

    /** /api/sim?speed=800&agility=0.8&fuel=4&x0=..&y0=..&x1=..&y1=..&dt=0.0167 */
    private static String sim(HttpExchange ex) {
        java.util.Map<String, String> q = query(ex.getRequestURI().getRawQuery());
        float speed = f(q, "speed", 800f);
        float agility = f(q, "agility", 0.8f);
        float fuel = f(q, "fuel", 4f);
        float x0 = f(q, "x0", 0f), y0 = f(q, "y0", 0f);
        float x1 = f(q, "x1", 40f), y1 = f(q, "y1", 0f);
        float dt = f(q, "dt", 1f / 60f);
        float[] pts = AirCraft.sampleRoute(x0, y0, speed, agility, fuel, x1, y1, dt, 4000);
        int n = pts.length / 2;
        float turns = (n - 1) * dt;
        float mx = Math.abs(x1 - x0), my = Math.abs(y1 - y0);
        float dist = (float) Math.sqrt(mx * mx + my * my);
        AirCraft c = new AirCraft(x0, y0, 0f, speed, agility, fuel);
        StringBuilder sb = new StringBuilder("{\"points\":[");
        for (int i = 0; i < n; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append('[').append(r2(pts[i * 2])).append(',').append(r2(pts[i * 2 + 1])).append(']');
        }
        sb.append("],\"turns\":").append(r3(turns))
          .append(",\"dist\":").append(r2(dist))
          .append(",\"arrived\":").append(dist <= 2.0f || turns * 40f >= dist)
          .append(",\"radius\":").append(r2(c.turnRadius()))
          .append(",\"pxPerTurn\":").append(r2(c.speedPxPerTurn))
          .append(",\"msAt3\":").append(Math.round(turns * 250f))
          .append('}');
        return sb.toString();
    }

    /** /api/save  body: "key\tspeed\tagility\tfuel" 每行一条；写到 tuned.tsv */
    private static String save(HttpExchange ex) throws IOException {
        String body = readBody(ex);
        StringBuilder sb = new StringBuilder("# key\tspeed\tagility\tfuel\t(saved by AirLab)\n");
        int n = 0;
        for (String line : body.split("\n")) {
            String t = line.trim();
            if (t.isEmpty()) {
                continue;
            }
            String[] f = t.split("\t");
            if (f.length >= 4) {
                sb.append(f[0]).append('\t').append(f[1]).append('\t').append(f[2]).append('\t').append(f[3]).append('\n');
                n++;
            }
        }
        Files.write(tuned, sb.toString().getBytes(StandardCharsets.UTF_8));
        return "{\"ok\":true,\"saved\":" + n + ",\"file\":\"" + esc(tuned.toString()) + "\"}";
    }

    private static String readBody(HttpExchange ex) throws IOException {
        InputStream in = ex.getRequestBody();
        ByteArrayOutputStream bo = new ByteArrayOutputStream();
        byte[] buf = new byte[4096];
        int r;
        while ((r = in.read(buf)) > 0) {
            bo.write(buf, 0, r);
        }
        return new String(bo.toByteArray(), StandardCharsets.UTF_8);
    }

    private static java.util.Map<String, String> query(String raw) {
        java.util.Map<String, String> m = new java.util.HashMap<>();
        if (raw == null || raw.isEmpty()) {
            return m;
        }
        for (String kv : raw.split("&")) {
            int i = kv.indexOf('=');
            if (i > 0) {
                try {
                    m.put(kv.substring(0, i), java.net.URLDecoder.decode(kv.substring(i + 1), "UTF-8"));
                } catch (Exception ignored) {
                }
            }
        }
        return m;
    }

    private static float f(java.util.Map<String, String> q, String k, float def) {
        String v = q.get(k);
        if (v == null) {
            return def;
        }
        try {
            return Float.parseFloat(v);
        } catch (Exception e) {
            return def;
        }
    }

    private static String r2(float v) {
        return String.format(java.util.Locale.ROOT, "%.2f", v);
    }

    private static String r3(float v) {
        return String.format(java.util.Locale.ROOT, "%.3f", v);
    }

    private static String esc(String s) {
        return s.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    private static String page() throws IOException {
        Path p = Paths.get("tools", "airlab", "index.html");
        String root = System.getenv("AIRLAB_ROOT");
        if (root != null) {
            p = Paths.get(root, "tools", "airlab", "index.html");
        }
        return new String(Files.readAllBytes(p), StandardCharsets.UTF_8);
    }
}
