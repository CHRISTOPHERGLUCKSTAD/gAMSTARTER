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
COMPAT_VARYING     float _interlaced;
COMPAT_VARYING     vec2 _uv_step;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size1;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _uv_step;
    float _interlaced;
};
out_vertex _ret_0;
bool _TMP13;
input_dummy _IN1;
vec4 _r0221;
bool _sd_interlace10223;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    _r0221 = VertexCoord.x*MVPMatrix[0];
    _r0221 = _r0221 + VertexCoord.y*MVPMatrix[1];
    _r0221 = _r0221 + VertexCoord.z*MVPMatrix[2];
    _r0221 = _r0221 + VertexCoord.w*MVPMatrix[3];
    _OUT._uv_step = vec2( 1.00000000E+00, 1.00000000E+00)/TextureSize;
    _sd_interlace10223 = InputSize.y > 2.88500000E+02 && InputSize.y < 5.76500000E+02;
    _TMP13 = _sd_interlace10223 || false;
    _OUT._interlaced = float(_TMP13);
    _ret_0._position1 = _r0221;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._uv_step = _OUT._uv_step;
    _ret_0._interlaced = _OUT._interlaced;
    gl_Position = _r0221;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._uv_step;
    TEX2.x = _OUT._interlaced;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._uv_step;
    TEX2.x = _ret_0._interlaced;
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
COMPAT_VARYING     float _interlaced;
COMPAT_VARYING     vec2 _uv_step;
COMPAT_VARYING     vec2 _tex_uv;
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
    vec2 _tex_uv;
    vec2 _uv_step;
    float _interlaced;
};
float _TMP21;
float _TMP20;
float _TMP19;
float _TMP18;
vec4 _TMP17;
vec3 _TMP23;
float _TMP26;
float _TMP25;
float _TMP24;
uniform sampler2D Texture;
input_dummy _IN1;
vec4 _TMP232;
vec4 _TMP252;
vec2 _tex_coords0253;
vec4 _TMP272;
vec2 _tex_coords0273;
float _c0293;
float _a0295;
float _x0301;
float _a0303;
float _c0303;
float _a0305;
vec4 _color0313;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
float _crt_gamma;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _v_step1;
    vec3 _interpolated_line1;
    float _modulus1;
    float _curr_line_texel1;
    float _line_num_last1;
    vec3 _color11;
    _crt_gamma = max(0.00000000E+00, 2.50000000E+00);
    _v_step1 = vec2(0.00000000E+00, TEX1.y);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP24 = pow(_TMP17.x, _crt_gamma);
    _TMP25 = pow(_TMP17.y, _crt_gamma);
    _TMP26 = pow(_TMP17.z, _crt_gamma);
    _TMP23 = vec3(_TMP24, _TMP25, _TMP26);
    _TMP232 = vec4(_TMP23.x, _TMP23.y, _TMP23.z, _TMP17.w);
    _tex_coords0253 = TEX0.xy - _v_step1;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0253);
    _TMP24 = pow(_TMP17.x, _crt_gamma);
    _TMP25 = pow(_TMP17.y, _crt_gamma);
    _TMP26 = pow(_TMP17.z, _crt_gamma);
    _TMP23 = vec3(_TMP24, _TMP25, _TMP26);
    _TMP252 = vec4(_TMP23.x, _TMP23.y, _TMP23.z, _TMP17.w);
    _tex_coords0273 = TEX0.xy + _v_step1;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0273);
    _TMP24 = pow(_TMP17.x, _crt_gamma);
    _TMP25 = pow(_TMP17.y, _crt_gamma);
    _TMP26 = pow(_TMP17.z, _crt_gamma);
    _TMP23 = vec3(_TMP24, _TMP25, _TMP26);
    _TMP272 = vec4(_TMP23.x, _TMP23.y, _TMP23.z, _TMP17.w);
    _interpolated_line1 = 5.00000000E-01*(_TMP252.xyz + _TMP272.xyz);
    _modulus1 = TEX2.x + 1.00000000E+00;
    _a0295 = float(FrameCount)/_modulus1;
    _TMP18 = abs(_a0295);
    _TMP19 = fract(_TMP18);
    _TMP20 = abs(_modulus1);
    _c0293 = _TMP19*_TMP20;
    if (float(FrameCount) < 0.00000000E+00) { 
        _TMP21 = -_c0293;
    } else {
        _TMP21 = _c0293;
    } 
    _curr_line_texel1 = TEX0.y*TextureSize.y;
    _x0301 = _curr_line_texel1 - 4.99500006E-01;
    _line_num_last1 = floor(_x0301);
    _a0303 = _line_num_last1 + _TMP21;
    _a0305 = _a0303/_modulus1;
    _TMP18 = abs(_a0305);
    _TMP19 = fract(_TMP18);
    _TMP20 = abs(_modulus1);
    _c0303 = _TMP19*_TMP20;
    if (_a0303 < 0.00000000E+00) { 
        _TMP21 = -_c0303;
    } else {
        _TMP21 = _c0303;
    } 
    _color11 = _TMP232.xyz + _TMP21*(_interpolated_line1 - _TMP232.xyz);
    _color0313 = vec4(_color11.x, _color11.y, _color11.z, 1.00000000E+00);
    FragColor = _color0313;
    return;
} 
#endif
