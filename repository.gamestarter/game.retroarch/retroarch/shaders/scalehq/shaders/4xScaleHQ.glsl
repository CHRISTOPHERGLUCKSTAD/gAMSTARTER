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
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0025;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _x;
    float _y;
    vec2 _dg1;
    vec2 _dg2;
    vec2 _sd1;
    vec2 _sd2;
    vec2 _ddx;
    vec2 _ddy;
    vec2 _TMP9;
    vec2 _TMP10;
    vec2 _TMP11;
    vec2 _TMP12;
    vec2 _TMP13;
    vec2 _TMP14;
    vec2 _TMP15;
    vec2 _TMP16;
    vec2 _TMP17;
    vec2 _TMP18;
    vec2 _TMP19;
    vec2 _TMP20;
    out_vertex _TMP21;
    _x = 5.00000000E-01*(1.00000000E+00/TextureSize.x);
    _y = 5.00000000E-01*(1.00000000E+00/TextureSize.y);
    _dg1 = vec2(_x, _y);
    _dg2 = vec2(-_x, _y);
    _sd1 = _dg1*5.00000000E-01;
    _sd2 = _dg2*5.00000000E-01;
    _ddx = vec2(_x, 0.00000000E+00);
    _ddy = vec2(0.00000000E+00, _y);
    _r0025 = VertexCoord.x*MVPMatrix[0];
    _r0025 = _r0025 + VertexCoord.y*MVPMatrix[1];
    _r0025 = _r0025 + VertexCoord.z*MVPMatrix[2];
    _r0025 = _r0025 + VertexCoord.w*MVPMatrix[3];
    _TMP19 = TexCoord.xy - _sd1;
    _TMP20 = TexCoord.xy - _ddy;
    _TMP21._t1 = vec4(_TMP19.x, _TMP19.y, _TMP20.x, _TMP20.y);
    _TMP17 = TexCoord.xy - _sd2;
    _TMP18 = TexCoord.xy + _ddx;
    _TMP21._t2 = vec4(_TMP17.x, _TMP17.y, _TMP18.x, _TMP18.y);
    _TMP15 = TexCoord.xy + _sd1;
    _TMP16 = TexCoord.xy + _ddy;
    _TMP21._t3 = vec4(_TMP15.x, _TMP15.y, _TMP16.x, _TMP16.y);
    _TMP13 = TexCoord.xy + _sd2;
    _TMP14 = TexCoord.xy - _ddx;
    _TMP21._t4 = vec4(_TMP13.x, _TMP13.y, _TMP14.x, _TMP14.y);
    _TMP11 = TexCoord.xy - _dg1;
    _TMP12 = TexCoord.xy - _dg2;
    _TMP21._t5 = vec4(_TMP11.x, _TMP11.y, _TMP12.x, _TMP12.y);
    _TMP9 = TexCoord.xy + _dg1;
    _TMP10 = TexCoord.xy + _dg2;
    _TMP21._t6 = vec4(_TMP9.x, _TMP9.y, _TMP10.x, _TMP10.y);
    _ret_0._position1 = _r0025;
    _ret_0._texCoord = TexCoord.xy;
    _ret_0._t1 = _TMP21._t1;
    _ret_0._t2 = _TMP21._t2;
    _ret_0._t3 = _TMP21._t3;
    _ret_0._t4 = _TMP21._t4;
    _ret_0._t5 = _TMP21._t5;
    _ret_0._t6 = _TMP21._t6;
    gl_Position = _r0025;
    TEX0.xy = TexCoord.xy;
    TEX1 = _TMP21._t1;
    TEX2 = _TMP21._t2;
    TEX3 = _TMP21._t3;
    TEX4 = _TMP21._t4;
    TEX5 = _TMP21._t5;
    TEX6 = _TMP21._t6;
    return;
    TEX0.xy = _ret_0._texCoord;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
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
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
};
vec4 _ret_0;
float _TMP39;
float _TMP38;
float _TMP37;
vec3 _TMP36;
vec3 _TMP35;
float _TMP34;
float _TMP33;
vec3 _TMP32;
vec3 _TMP31;
float _TMP30;
float _TMP29;
vec3 _TMP28;
vec3 _TMP27;
float _TMP26;
float _TMP25;
vec3 _TMP24;
vec3 _TMP23;
float _TMP22;
float _TMP21;
vec3 _TMP20;
float _TMP19;
float _TMP18;
vec3 _TMP17;
vec3 _TMP16;
vec3 _TMP15;
vec3 _TMP14;
vec3 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec3 _a0076;
vec3 _a0080;
vec3 _a0084;
vec3 _a0088;
vec3 _a0092;
vec3 _a0100;
vec3 _a0108;
vec3 _a0110;
vec3 _a0112;
vec3 _a0114;
vec3 _a0116;
vec3 _a0118;
vec3 _a0120;
vec3 _a0122;
vec3 _a0124;
vec3 _a0126;
vec3 _a0128;
vec3 _a0130;
vec3 _a0132;
vec3 _a0134;
vec3 _a0136;
vec3 _a0138;
float _TMP139;
float _x0140;
float _TMP145;
float _x0146;
float _TMP151;
float _x0152;
float _TMP157;
float _x0158;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _c;
    float _ko1;
    float _ko2;
    float _ko3;
    float _ko4;
    float _k1;
    float _k2;
    float _w1;
    float _w2;
    float _w3;
    float _w4;
    vec3 _TMP48;
    _TMP0 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX3.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX4.xy);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX5.xy);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX6.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _a0076 = _TMP5.xyz - _TMP0.xyz;
    _TMP13 = abs(_a0076);
    _ko1 = dot(_TMP13, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0080 = _TMP7.xyz - _TMP0.xyz;
    _TMP14 = abs(_a0080);
    _ko2 = dot(_TMP14, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0084 = _TMP6.xyz - _TMP0.xyz;
    _TMP15 = abs(_a0084);
    _ko3 = dot(_TMP15, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0088 = _TMP8.xyz - _TMP0.xyz;
    _TMP16 = abs(_a0088);
    _ko4 = dot(_TMP16, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0092 = _TMP1.xyz - _TMP3.xyz;
    _TMP17 = abs(_a0092);
    _TMP18 = dot(_TMP17, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP19 = max(_ko1, _ko3);
    _k1 = min(_TMP18, _TMP19);
    _a0100 = _TMP2.xyz - _TMP4.xyz;
    _TMP20 = abs(_a0100);
    _TMP21 = dot(_TMP20, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _TMP22 = max(_ko2, _ko4);
    _k2 = min(_TMP21, _TMP22);
    _w1 = _k2;
    if (_ko3 < _ko1) { 
        _w1 = _k2*(_ko3/_ko1);
    } 
    _w2 = _k1;
    if (_ko4 < _ko2) { 
        _w2 = _k1*(_ko4/_ko2);
    } 
    _w3 = _k2;
    if (_ko1 < _ko3) { 
        _w3 = _k2*(_ko1/_ko3);
    } 
    _w4 = _k1;
    if (_ko2 < _ko4) { 
        _w4 = _k1*(_ko2/_ko4);
    } 
    _c = (_w1*_TMP5.xyz + _w2*_TMP7.xyz + _w3*_TMP6.xyz + _w4*_TMP8.xyz + 1.00000005E-03*_TMP0.xyz)/(_w1 + _w2 + _w3 + _w4 + 1.00000005E-03);
    _a0108 = _TMP1.xyz - _c;
    _TMP23 = abs(_a0108);
    _a0110 = _TMP3.xyz - _c;
    _TMP24 = abs(_a0110);
    _a0112 = _TMP23 + _TMP24;
    _TMP25 = dot(_a0112, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0114 = _TMP1.xyz + _TMP3.xyz;
    _TMP26 = dot(_a0114, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _w1 = (-1.10000002E+00*_TMP25)/(1.25000000E-01*_TMP26 + 3.30000013E-01);
    _a0116 = _TMP2.xyz - _c;
    _TMP27 = abs(_a0116);
    _a0118 = _TMP4.xyz - _c;
    _TMP28 = abs(_a0118);
    _a0120 = _TMP27 + _TMP28;
    _TMP29 = dot(_a0120, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0122 = _TMP2.xyz + _TMP4.xyz;
    _TMP30 = dot(_a0122, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _w2 = (-1.10000002E+00*_TMP29)/(1.25000000E-01*_TMP30 + 3.30000013E-01);
    _a0124 = _TMP9.xyz - _c;
    _TMP31 = abs(_a0124);
    _a0126 = _TMP11.xyz - _c;
    _TMP32 = abs(_a0126);
    _a0128 = _TMP31 + _TMP32;
    _TMP33 = dot(_a0128, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0130 = _TMP9.xyz + _TMP11.xyz;
    _TMP34 = dot(_a0130, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _w3 = (-1.10000002E+00*_TMP33)/(1.25000000E-01*_TMP34 + 3.30000013E-01);
    _a0132 = _TMP10.xyz - _c;
    _TMP35 = abs(_a0132);
    _a0134 = _TMP12.xyz - _c;
    _TMP36 = abs(_a0134);
    _a0136 = _TMP35 + _TMP36;
    _TMP37 = dot(_a0136, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _a0138 = _TMP10.xyz + _TMP12.xyz;
    _TMP38 = dot(_a0138, vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
    _w4 = (-1.10000002E+00*_TMP37)/(1.25000000E-01*_TMP38 + 3.30000013E-01);
    _x0140 = _w1 + 1.00000000E+00;
    _TMP39 = min(7.50000000E-01, _x0140);
    _TMP139 = max(2.99999993E-02, _TMP39);
    _x0146 = _w2 + 1.00000000E+00;
    _TMP39 = min(7.50000000E-01, _x0146);
    _TMP145 = max(2.99999993E-02, _TMP39);
    _x0152 = _w3 + 1.00000000E+00;
    _TMP39 = min(7.50000000E-01, _x0152);
    _TMP151 = max(2.99999993E-02, _TMP39);
    _x0158 = _w4 + 1.00000000E+00;
    _TMP39 = min(7.50000000E-01, _x0158);
    _TMP157 = max(2.99999993E-02, _TMP39);
    _TMP48 = (_TMP139*(_TMP1.xyz + _TMP3.xyz) + _TMP145*(_TMP2.xyz + _TMP4.xyz) + _TMP151*(_TMP9.xyz + _TMP11.xyz) + _TMP157*(_TMP10.xyz + _TMP12.xyz) + _c)/(2.00000000E+00*(_TMP139 + _TMP145 + _TMP151 + _TMP157) + 1.00000000E+00);
    _ret_0 = vec4(_TMP48.x, _TMP48.y, _TMP48.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
