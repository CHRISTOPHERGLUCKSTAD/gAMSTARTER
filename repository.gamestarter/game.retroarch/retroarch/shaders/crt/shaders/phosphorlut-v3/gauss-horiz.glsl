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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _oTexCoord;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _oTexCoord = TexCoord.xy;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
float _TMP21;
float _TMP20;
float _TMP19;
float _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
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
input_dummy _IN1;
float _TMP24;
float _TMP28;
float _TMP32;
float _TMP36;
vec2 _c0041;
vec2 _c0053;
vec2 _c0065;
vec2 _c0077;
vec2 _c0101;
vec2 _c0113;
vec2 _c0125;
vec2 _c0137;
vec4 _a0149;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _onex;
    vec4 _sum;
    _onex = 1.00000000E+00/TextureSize.x;
    _TMP24 = pow(2.71828198E+00, -6.94444418E-01);
    _TMP28 = pow(2.71828198E+00, -2.77777767E+00);
    _TMP32 = pow(2.71828198E+00, -6.24999952E+00);
    _TMP36 = pow(2.71828198E+00, -1.11111107E+01);
    _c0041 = TEX0.xy + vec2(-4.00000000E+00*_onex, 0.00000000E+00);
    _TMP0 = COMPAT_TEXTURE(Texture, _c0041);
    _TMP18 = pow(_TMP0.x, 2.20000005E+00);
    _TMP19 = pow(_TMP0.y, 2.20000005E+00);
    _TMP20 = pow(_TMP0.z, 2.20000005E+00);
    _TMP21 = pow(_TMP0.w, 2.20000005E+00);
    _TMP1 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _TMP1*vec4(_TMP36, _TMP36, _TMP36, _TMP36);
    _c0053 = TEX0.xy + vec2(-3.00000000E+00*_onex, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0053);
    _TMP18 = pow(_TMP2.x, 2.20000005E+00);
    _TMP19 = pow(_TMP2.y, 2.20000005E+00);
    _TMP20 = pow(_TMP2.z, 2.20000005E+00);
    _TMP21 = pow(_TMP2.w, 2.20000005E+00);
    _TMP3 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP3*vec4(_TMP32, _TMP32, _TMP32, _TMP32);
    _c0065 = TEX0.xy + vec2(-2.00000000E+00*_onex, 0.00000000E+00);
    _TMP4 = COMPAT_TEXTURE(Texture, _c0065);
    _TMP18 = pow(_TMP4.x, 2.20000005E+00);
    _TMP19 = pow(_TMP4.y, 2.20000005E+00);
    _TMP20 = pow(_TMP4.z, 2.20000005E+00);
    _TMP21 = pow(_TMP4.w, 2.20000005E+00);
    _TMP5 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP5*vec4(_TMP28, _TMP28, _TMP28, _TMP28);
    _c0077 = TEX0.xy + vec2(-_onex, 0.00000000E+00);
    _TMP6 = COMPAT_TEXTURE(Texture, _c0077);
    _TMP18 = pow(_TMP6.x, 2.20000005E+00);
    _TMP19 = pow(_TMP6.y, 2.20000005E+00);
    _TMP20 = pow(_TMP6.z, 2.20000005E+00);
    _TMP21 = pow(_TMP6.w, 2.20000005E+00);
    _TMP7 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP7*vec4(_TMP24, _TMP24, _TMP24, _TMP24);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP18 = pow(_TMP8.x, 2.20000005E+00);
    _TMP19 = pow(_TMP8.y, 2.20000005E+00);
    _TMP20 = pow(_TMP8.z, 2.20000005E+00);
    _TMP21 = pow(_TMP8.w, 2.20000005E+00);
    _TMP9 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP9;
    _c0101 = TEX0.xy + vec2(_onex, 0.00000000E+00);
    _TMP10 = COMPAT_TEXTURE(Texture, _c0101);
    _TMP18 = pow(_TMP10.x, 2.20000005E+00);
    _TMP19 = pow(_TMP10.y, 2.20000005E+00);
    _TMP20 = pow(_TMP10.z, 2.20000005E+00);
    _TMP21 = pow(_TMP10.w, 2.20000005E+00);
    _TMP11 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP11*vec4(_TMP24, _TMP24, _TMP24, _TMP24);
    _c0113 = TEX0.xy + vec2(2.00000000E+00*_onex, 0.00000000E+00);
    _TMP12 = COMPAT_TEXTURE(Texture, _c0113);
    _TMP18 = pow(_TMP12.x, 2.20000005E+00);
    _TMP19 = pow(_TMP12.y, 2.20000005E+00);
    _TMP20 = pow(_TMP12.z, 2.20000005E+00);
    _TMP21 = pow(_TMP12.w, 2.20000005E+00);
    _TMP13 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP13*vec4(_TMP28, _TMP28, _TMP28, _TMP28);
    _c0125 = TEX0.xy + vec2(3.00000000E+00*_onex, 0.00000000E+00);
    _TMP14 = COMPAT_TEXTURE(Texture, _c0125);
    _TMP18 = pow(_TMP14.x, 2.20000005E+00);
    _TMP19 = pow(_TMP14.y, 2.20000005E+00);
    _TMP20 = pow(_TMP14.z, 2.20000005E+00);
    _TMP21 = pow(_TMP14.w, 2.20000005E+00);
    _TMP15 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP15*vec4(_TMP32, _TMP32, _TMP32, _TMP32);
    _c0137 = TEX0.xy + vec2(4.00000000E+00*_onex, 0.00000000E+00);
    _TMP16 = COMPAT_TEXTURE(Texture, _c0137);
    _TMP18 = pow(_TMP16.x, 2.20000005E+00);
    _TMP19 = pow(_TMP16.y, 2.20000005E+00);
    _TMP20 = pow(_TMP16.z, 2.20000005E+00);
    _TMP21 = pow(_TMP16.w, 2.20000005E+00);
    _TMP17 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    _sum = _sum + _TMP17*vec4(_TMP36, _TMP36, _TMP36, _TMP36);
    _a0149 = _sum*vec4( 8.99999976E-01, 8.99999976E-01, 8.99999976E-01, 8.99999976E-01);
    _TMP18 = pow(_a0149.x, 4.54545438E-01);
    _TMP19 = pow(_a0149.y, 4.54545438E-01);
    _TMP20 = pow(_a0149.z, 4.54545438E-01);
    _TMP21 = pow(_a0149.w, 4.54545438E-01);
    _ret_0 = vec4(_TMP18, _TMP19, _TMP20, _TMP21);
    FragColor = _ret_0;
    return;
} 
#endif
