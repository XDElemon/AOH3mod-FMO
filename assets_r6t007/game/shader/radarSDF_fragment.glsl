#ifdef GL_ES
precision highp float;
#endif
varying vec2 v_texCoords;
uniform vec2 uRes;
uniform vec2 uPos[64];
uniform vec2 uRad[64];
uniform float uN;
void main() {
    vec2 p = v_texCoords * uRes;
    float d = 1e10;
    for (int i = 0; i < 64; i++) {
        if (float(i) >= uN) break;
        vec2 q = (p - uPos[i]) / max(uRad[i], vec2(2.0));
        d = min(d, length(q));
    }
    float a = (1.0 - smoothstep(0.93, 1.0, d)) * 0.216;
    gl_FragColor = vec4(0.345, 0.675, 1.0, a);
}
