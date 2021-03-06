// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARps;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec2 VARps;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0010;
vec4 _v0010;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _v0010 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _r0010 = _v0010.x*MVPMatrix[0];
    _r0010 = _r0010 + _v0010.y*MVPMatrix[1];
    _r0010 = _r0010 + _v0010.z*MVPMatrix[2];
    _r0010 = _r0010 + _v0010.w*MVPMatrix[3];
    _OUT._position1 = vec4(float(_r0010.x), float(_r0010.y), float(_r0010.z), float(_r0010.w));
    _ps = 1.00000000E+00/TextureSize;
    _OUT._t1 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT._t2 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT._t3 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    VARps = _ps;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec2 VARps;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec2 VARps;
};
vec4 _ret_0;
float _TMP44;
vec4 _TMP40;
float _TMP39;
float _TMP37;
vec2 _TMP38;
float _TMP36;
float _TMP35;
float _TMP34;
float _TMP43;
bool _TMP33;
bool _TMP32;
bool _TMP31;
bool _TMP30;
vec3 _TMP42;
bool _TMP29;
bool _TMP28;
bool _TMP27;
bool _TMP26;
bool _TMP25;
bool _TMP24;
bool _TMP23;
bool _TMP22;
vec4 _TMP20;
vec4 _TMP18;
vec4 _TMP16;
vec4 _TMP14;
vec4 _TMP11;
vec4 _TMP9;
vec4 _TMP7;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
uniform sampler2D LUT;
vec2 _x0063;
vec2 _val0065;
vec2 _a0065;
vec2 _c0069;
vec2 _c0071;
vec2 _c0073;
vec3 _r0077;
vec3 _v0077;
vec3 _r0087;
vec3 _v0087;
vec3 _r0097;
vec3 _v0097;
vec3 _r0107;
vec3 _v0107;
vec3 _r0115;
vec3 _v0115;
vec3 _r0125;
vec3 _v0125;
vec3 _r0135;
vec3 _v0135;
vec3 _r0145;
vec3 _v0145;
vec3 _r0155;
vec3 _v0155;
bvec3 _res0163;
vec3 _a0165;
bvec3 _res0167;
vec3 _a0169;
bvec3 _res0171;
vec3 _a0173;
bvec3 _res0175;
vec3 _a0177;
bvec3 _res0179;
vec3 _a0181;
bvec3 _res0183;
vec3 _a0185;
bvec3 _res0187;
vec3 _a0189;
bvec3 _res0191;
vec3 _a0193;
bvec3 _res0195;
vec3 _a0197;
bvec3 _res0199;
vec3 _a0201;
bvec3 _res0203;
vec3 _a0205;
bvec3 _res0207;
vec3 _a0209;
vec3 _a0211;
vec3 _a0213;
vec3 _a0215;
vec4 _a0217;
vec2 _x0219;
vec2 _c0223;
vec3 _r0229;
vec4 _v0229;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec2 _quad;
    vec3 _w1;
    vec3 _w2;
    vec3 _w3;
    vec3 _w4;
    vec3 _w5;
    vec3 _w6;
    vec3 _w7;
    vec3 _w8;
    vec3 _w9;
    bvec4 _cross;
    vec2 _index;
    vec4 _weights;
    float _sum;
    bvec3 _TMP50[3];
    _x0063 = TEX0.xy*TextureSize;
    _fp = fract(_x0063);
    _a0065 = -5.00000000E-01 + _fp;
    _val0065 = vec2(float((_a0065.x > 0.00000000E+00)), float((_a0065.y > 0.00000000E+00)));
    _TMP0 = _val0065 - vec2(float((_a0065.x < 0.00000000E+00)), float((_a0065.y < 0.00000000E+00)));
    _quad = vec2(float(_TMP0.x), float(_TMP0.y));
    _TMP1 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _c0069 = TEX0.xy + vec2(VARps.x, VARps.y)*vec2(float(_quad.x), float(_quad.y));
    _TMP2 = COMPAT_TEXTURE(Texture, _c0069);
    _c0071 = TEX0.xy + vec2(VARps.x, 0.00000000E+00)*vec2(float(_quad.x), float(_quad.y));
    _TMP3 = COMPAT_TEXTURE(Texture, _c0071);
    _c0073 = TEX0.xy + vec2(0.00000000E+00, VARps.y)*vec2(float(_quad.x), float(_quad.y));
    _TMP4 = COMPAT_TEXTURE(Texture, _c0073);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _v0077 = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0077.x), float(_v0077.y), float(_v0077.z)));
    _r0077.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0077.x), float(_v0077.y), float(_v0077.z)));
    _r0077.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0077.x), float(_v0077.y), float(_v0077.z)));
    _r0077.z = float(_TMP43);
    _w1 = vec3(float(_r0077.x), float(_r0077.y), float(_r0077.z));
    _TMP7 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _v0087 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0087.x), float(_v0087.y), float(_v0087.z)));
    _r0087.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0087.x), float(_v0087.y), float(_v0087.z)));
    _r0087.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0087.x), float(_v0087.y), float(_v0087.z)));
    _r0087.z = float(_TMP43);
    _w2 = vec3(float(_r0087.x), float(_r0087.y), float(_r0087.z));
    _TMP9 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _v0097 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0097.x), float(_v0097.y), float(_v0097.z)));
    _r0097.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0097.x), float(_v0097.y), float(_v0097.z)));
    _r0097.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0097.x), float(_v0097.y), float(_v0097.z)));
    _r0097.z = float(_TMP43);
    _w3 = vec3(float(_r0097.x), float(_r0097.y), float(_r0097.z));
    _TMP11 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _v0107 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0107.x), float(_v0107.y), float(_v0107.z)));
    _r0107.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0107.x), float(_v0107.y), float(_v0107.z)));
    _r0107.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0107.x), float(_v0107.y), float(_v0107.z)));
    _r0107.z = float(_TMP43);
    _w4 = vec3(float(_r0107.x), float(_r0107.y), float(_r0107.z));
    _v0115 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.z = float(_TMP43);
    _w5 = vec3(float(_r0115.x), float(_r0115.y), float(_r0115.z));
    _TMP14 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _v0125 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.z = float(_TMP43);
    _w6 = vec3(float(_r0125.x), float(_r0125.y), float(_r0125.z));
    _TMP16 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _v0135 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.z = float(_TMP43);
    _w7 = vec3(float(_r0135.x), float(_r0135.y), float(_r0135.z));
    _TMP18 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _v0145 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0145.x), float(_v0145.y), float(_v0145.z)));
    _r0145.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0145.x), float(_v0145.y), float(_v0145.z)));
    _r0145.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0145.x), float(_v0145.y), float(_v0145.z)));
    _r0145.z = float(_TMP43);
    _w8 = vec3(float(_r0145.x), float(_r0145.y), float(_r0145.z));
    _TMP20 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _v0155 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP43 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0155.x), float(_v0155.y), float(_v0155.z)));
    _r0155.x = float(_TMP43);
    _TMP43 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0155.x), float(_v0155.y), float(_v0155.z)));
    _r0155.y = float(_TMP43);
    _TMP43 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0155.x), float(_v0155.y), float(_v0155.z)));
    _r0155.z = float(_TMP43);
    _w9 = vec3(float(_r0155.x), float(_r0155.y), float(_r0155.z));
    _a0165 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w1 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0165);
    _res0163 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP22 = _res0163.x || _res0163.y || _res0163.z;
    _a0169 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0169);
    _res0167 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP23 = _res0167.x || _res0167.y || _res0167.z;
    _a0173 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w3 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0173);
    _res0171 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP24 = _res0171.x || _res0171.y || _res0171.z;
    _a0177 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0177);
    _res0175 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP25 = _res0175.x || _res0175.y || _res0175.z;
    _a0181 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0181);
    _res0179 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP26 = _res0179.x || _res0179.y || _res0179.z;
    _a0185 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w7 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0185);
    _res0183 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP27 = _res0183.x || _res0183.y || _res0183.z;
    _a0189 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0189);
    _res0187 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP28 = _res0187.x || _res0187.y || _res0187.z;
    _a0193 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w9 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0193);
    _res0191 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP29 = _res0191.x || _res0191.y || _res0191.z;
    _TMP50[0] = bvec3(_TMP22, _TMP23, _TMP24);
    _TMP50[1] = bvec3(_TMP25, false, _TMP26);
    _TMP50[2] = bvec3(_TMP27, _TMP28, _TMP29);
    _a0197 = (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0197);
    _res0195 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP30 = _res0195.x || _res0195.y || _res0195.z;
    _a0201 = (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0201);
    _res0199 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP31 = _res0199.x || _res0199.y || _res0199.z;
    _a0205 = (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0205);
    _res0203 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP32 = _res0203.x || _res0203.y || _res0203.z;
    _a0209 = (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP42 = abs(_a0209);
    _res0207 = bvec3(_TMP42.x > 1.88232422E-01, _TMP42.y > 2.74505615E-02, _TMP42.z > 2.35290527E-02);
    _TMP33 = _res0207.x || _res0207.y || _res0207.z;
    _cross = bvec4(_TMP30, _TMP31, _TMP32, _TMP33);
    _a0211 = vec3(float(_TMP50[0].x), float(_TMP50[0].y), float(_TMP50[0].z));
    _TMP43 = dot(vec3(float(_a0211.x), float(_a0211.y), float(_a0211.z)), vec3( 1.00000000E+00, 2.00000000E+00, 4.00000000E+00));
    _TMP34 = float(_TMP43);
    _a0213 = vec3(float(_TMP50[1].x), float(_TMP50[1].y), float(_TMP50[1].z));
    _TMP43 = dot(vec3(float(_a0213.x), float(_a0213.y), float(_a0213.z)), vec3( 8.00000000E+00, 0.00000000E+00, 1.60000000E+01));
    _TMP35 = float(_TMP43);
    _a0215 = vec3(float(_TMP50[2].x), float(_TMP50[2].y), float(_TMP50[2].z));
    _TMP43 = dot(vec3(float(_a0215.x), float(_a0215.y), float(_a0215.z)), vec3( 3.20000000E+01, 6.40000000E+01, 1.28000000E+02));
    _TMP36 = float(_TMP43);
    _index.x = _TMP34 + _TMP35 + _TMP36;
    _a0217 = vec4(float(_cross.x), float(_cross.y), float(_cross.z), float(_cross.w));
    _TMP44 = dot(vec4(float(_a0217.x), float(_a0217.y), float(_a0217.z), float(_a0217.w)), vec4( 1.00000000E+00, 2.00000000E+00, 4.00000000E+00, 8.00000000E+00));
    _TMP37 = float(_TMP44);
    _x0219 = _fp*2.00000000E+00;
    _TMP38 = floor(_x0219);
    _TMP39 = dot(_TMP38, vec2( 1.00000000E+00, 2.00000000E+00));
    _index.y = float((float((_TMP37*4.00000000E+00)) + _TMP39));
    _c0223 = vec2(float((_index*vec2( 3.90625000E-03, 1.56250000E-02) + vec2( 1.95312500E-03, 7.81250000E-03)).x), float((_index*vec2( 3.90625000E-03, 1.56250000E-02) + vec2( 1.95312500E-03, 7.81250000E-03)).y));
    _TMP40 = COMPAT_TEXTURE(LUT, _c0223);
    _weights = vec4(float(_TMP40.x), float(_TMP40.y), float(_TMP40.z), float(_TMP40.w));
    _TMP44 = dot(vec4(float(_weights.x), float(_weights.y), float(_weights.z), float(_weights.w)), vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _sum = float(_TMP44);
    _v0229 = vec4(float((_weights/_sum).x), float((_weights/_sum).y), float((_weights/_sum).z), float((_weights/_sum).w));
    _r0229 = _v0229.x*_TMP1.xyz;
    _r0229 = _r0229 + _v0229.y*_TMP2.xyz;
    _r0229 = _r0229 + _v0229.z*_TMP3.xyz;
    _r0229 = _r0229 + _v0229.w*_TMP4.xyz;
    _ret_0 = vec4(_r0229.x, _r0229.y, _r0229.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
