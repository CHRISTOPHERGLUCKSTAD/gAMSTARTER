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
COMPAT_VARYING     vec2 _tex_index;
COMPAT_VARYING     vec2 _coord_prev_prev;
COMPAT_VARYING     vec2 _coord_prev;
COMPAT_VARYING     vec2 _coord;
struct coords {
    vec2 _coord;
    vec2 _coord_prev;
    vec2 _coord_prev_prev;
    vec2 _tex_index;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    coords _co;
    vec2 _one_x;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _one_x = vec2(1.00000000E+00/(3.00000000E+00*TextureSize.x), 0.00000000E+00);
    _co._coord = TexCoord.xy;
    _co._coord_prev = TexCoord.xy - _one_x;
    _co._coord_prev_prev = TexCoord.xy - 2.00000000E+00*_one_x;
    _co._tex_index = TexCoord.xy*TextureSize;
    gl_Position = _r0006;
    TEX1.xy = TexCoord.xy;
    TEX2.xy = _co._coord_prev;
    TEX3.xy = _co._coord_prev_prev;
    TEX4.xy = _co._tex_index;
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
COMPAT_VARYING     vec2 _tex_index;
COMPAT_VARYING     vec2 _coord_prev_prev;
COMPAT_VARYING     vec2 _coord_prev;
COMPAT_VARYING     vec2 _coord;
struct coords {
    vec2 _coord;
    vec2 _coord_prev;
    vec2 _coord_prev_prev;
    vec2 _tex_index;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP4;
vec3 _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
vec3 _TMP3;
float _TMP9;
float _TMP8;
float _TMP7;
float _TMP6;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
float _c0017;
float _TMP24;
float _x0025;
vec3 _TMP58;
float _a0061;
float _c0061;
float _a0063;
vec3 _TMP68;
float _pixel0069;
float _a0071;
float _c0071;
float _a0073;
vec3 _TMP78;
float _pixel0079;
float _a0081;
float _c0081;
float _a0083;
vec3 _a0097;
vec3 _TMP104;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _color;
    vec3 _color_prev;
    vec3 _color_prev_prev;
    float _pixel_x;
    vec3 _result;
    _TMP6 = abs(TEX4.y);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(1.00000000E+00);
    _c0017 = _TMP7*_TMP8;
    if (TEX4.y < 0.00000000E+00) { 
        _TMP9 = -_c0017;
    } else {
        _TMP9 = _c0017;
    } 
    _x0025 = -2.00000003E-01*_TMP9;
    _TMP24 = pow(2.71828198E+00, _x0025);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP10 = pow(_TMP0.x, 2.40000010E+00);
    _TMP11 = pow(_TMP0.y, 2.40000010E+00);
    _TMP12 = pow(_TMP0.z, 2.40000010E+00);
    _color = vec3(_TMP10, _TMP11, _TMP12);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP10 = pow(_TMP1.x, 2.40000010E+00);
    _TMP11 = pow(_TMP1.y, 2.40000010E+00);
    _TMP12 = pow(_TMP1.z, 2.40000010E+00);
    _color_prev = vec3(_TMP10, _TMP11, _TMP12);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX3.xy);
    _TMP10 = pow(_TMP2.x, 2.40000010E+00);
    _TMP11 = pow(_TMP2.y, 2.40000010E+00);
    _TMP12 = pow(_TMP2.z, 2.40000010E+00);
    _color_prev_prev = vec3(_TMP10, _TMP11, _TMP12);
    _pixel_x = 3.00000000E+00*TEX4.x;
    _a0061 = _pixel_x + 3.00000000E+00;
    _a0063 = _a0061/3.00000000E+00;
    _TMP6 = abs(_a0063);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0061 = _TMP7*_TMP8;
    if (_a0061 < 0.00000000E+00) { 
        _TMP9 = -_c0061;
    } else {
        _TMP9 = _c0061;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP58 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP58 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP58 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _pixel0069 = _pixel_x - 1.00000000E+00;
    _a0071 = _pixel0069 + 3.00000000E+00;
    _a0073 = _a0071/3.00000000E+00;
    _TMP6 = abs(_a0073);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0071 = _TMP7*_TMP8;
    if (_a0071 < 0.00000000E+00) { 
        _TMP9 = -_c0071;
    } else {
        _TMP9 = _c0071;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP68 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP68 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP68 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _pixel0079 = _pixel_x - 2.00000000E+00;
    _a0081 = _pixel0079 + 3.00000000E+00;
    _a0083 = _a0081/3.00000000E+00;
    _TMP6 = abs(_a0083);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0081 = _TMP7*_TMP8;
    if (_a0081 < 0.00000000E+00) { 
        _TMP9 = -_c0081;
    } else {
        _TMP9 = _c0081;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP78 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP78 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP78 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _result = (8.00000012E-01*_color)*_TMP58 + (6.00000024E-01*_color_prev)*_TMP68 + (3.00000012E-01*_color_prev_prev)*_TMP78;
    _TMP10 = pow(_result.x, 1.39999998E+00);
    _TMP11 = pow(_result.y, 1.39999998E+00);
    _TMP12 = pow(_result.z, 1.39999998E+00);
    _TMP3 = vec3(_TMP10, _TMP11, _TMP12);
    _result = 2.29999995E+00*_TMP3;
    _result = _result*vec3( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _a0097 = _TMP24*_result;
    _TMP10 = pow(_a0097.x, 4.54545438E-01);
    _TMP11 = pow(_a0097.y, 4.54545438E-01);
    _TMP12 = pow(_a0097.z, 4.54545438E-01);
    _TMP4 = vec3(_TMP10, _TMP11, _TMP12);
    _TMP13 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP4);
    _TMP104 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP13);
    _ret_0 = vec4(_TMP104.x, _TMP104.y, _TMP104.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
