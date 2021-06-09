// Compiled shader for Android

//////////////////////////////////////////////////////////////////////////
// 
// NOTE: This is *not* a valid shader file, the contents are provided just
// for information and for debugging purposes only.
// 
//////////////////////////////////////////////////////////////////////////
// Skipping shader variants that would not be included into build of current scene.

Shader "Shader Graphs/Skybox" {
Properties {
 Color_a9774a7f2c954a1bab281452cf78804e ("Top", Color) = (0.000000,0.838149,0.971698,0.000000)
 Color_5c59ccbcfb2b4c1ab7e2045918282ea1 ("Bottom", Color) = (0.383011,0.000000,0.886792,0.000000)
 Vector1_4bfc834651c5434e9f19af8fc35e919e ("height", Float) = 1.000000
 Vector2_5976ef1d76374e4785031b790bc9eb86 ("tilling", Vector) = (8.000000,4.000000,0.000000,0.000000)
 Vector1_c00e08f72ec44b8883f14de4a1f61a13 ("Stars size", Float) = 100.000000
 Vector1_163de7d269404bae89f9ad5d5901b979 ("stars", Float) = 5.000000
[HideInInspector] [NoScaleOffset]  unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" { }
[HideInInspector] [NoScaleOffset]  unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" { }
[HideInInspector] [NoScaleOffset]  unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" { }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
 Pass {
  Name "Pass"
  Tags { "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Constant Buffer "UnityPerMaterial" (56 bytes) on slot 0 {
  Vector4 Color_a9774a7f2c954a1bab281452cf78804e at 0
  Vector4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1 at 16
  Float Vector1_4bfc834651c5434e9f19af8fc35e919e at 32
  Vector2 Vector2_5976ef1d76374e4785031b790bc9eb86 at 40
  Float Vector1_c00e08f72ec44b8883f14de4a1f61a13 at 48
  Float Vector1_163de7d269404bae89f9ad5d5901b979 at 52
}
Constant Buffer "$Globals" (64 bytes) {
  Matrix4x4 unity_MatrixVP at 0
}
Constant Buffer "UnityPerDraw" (400 bytes) on slot 1 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Vector4 unity_LODFade at 128
  Vector4 unity_WorldTransformParams at 144
  Vector4 unity_LightData at 160
  Vector4 unity_LightIndices[2] at 176
  Vector4 unity_ProbesOcclusion at 208
  Vector4 unity_SpecCube0_HDR at 224
  Vector4 unity_LightmapST at 240
  Vector4 unity_LightmapIndex at 256
  Vector4 unity_DynamicLightmapST at 272
  Vector4 unity_SHAr at 288
  Vector4 unity_SHAg at 304
  Vector4 unity_SHAb at 320
  Vector4 unity_SHBr at 336
  Vector4 unity_SHBg at 352
  Vector4 unity_SHBb at 368
  Vector4 unity_SHC at 384
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(1) uniform UnityPerDraw {
#endif
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	UNITY_UNIFORM vec4 unity_LODFade;
	UNITY_UNIFORM mediump vec4 unity_WorldTransformParams;
	UNITY_UNIFORM mediump vec4 unity_LightData;
	UNITY_UNIFORM mediump vec4 unity_LightIndices[2];
	UNITY_UNIFORM vec4 unity_ProbesOcclusion;
	UNITY_UNIFORM mediump vec4 unity_SpecCube0_HDR;
	UNITY_UNIFORM vec4 unity_LightmapST;
	UNITY_UNIFORM vec4 unity_LightmapIndex;
	UNITY_UNIFORM vec4 unity_DynamicLightmapST;
	UNITY_UNIFORM mediump vec4 unity_SHAr;
	UNITY_UNIFORM mediump vec4 unity_SHAg;
	UNITY_UNIFORM mediump vec4 unity_SHAb;
	UNITY_UNIFORM mediump vec4 unity_SHBr;
	UNITY_UNIFORM mediump vec4 unity_SHBg;
	UNITY_UNIFORM mediump vec4 unity_SHBb;
	UNITY_UNIFORM mediump vec4 unity_SHC;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 in_POSITION0;
out highp vec3 vs_TEXCOORD0;
vec3 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0.xyz = in_POSITION0.yyy * hlslcc_mtx4x4unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + hlslcc_mtx4x4unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    vs_TEXCOORD0.xyz = u_xlat0.xyz;
    gl_Position = u_xlat1 + hlslcc_mtx4x4unity_MatrixVP[3];
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(0) uniform UnityPerMaterial {
#endif
	UNITY_UNIFORM vec4 Color_a9774a7f2c954a1bab281452cf78804e;
	UNITY_UNIFORM vec4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1;
	UNITY_UNIFORM float Vector1_4bfc834651c5434e9f19af8fc35e919e;
	UNITY_UNIFORM vec2 Vector2_5976ef1d76374e4785031b790bc9eb86;
	UNITY_UNIFORM float Vector1_c00e08f72ec44b8883f14de4a1f61a13;
	UNITY_UNIFORM float Vector1_163de7d269404bae89f9ad5d5901b979;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_TARGET0;
vec3 u_xlat0;
vec3 u_xlat1;
vec2 u_xlat2;
vec4 u_xlat3;
vec2 u_xlat4;
vec2 u_xlat5;
vec2 u_xlat6;
vec2 u_xlat12;
vec2 u_xlat14;
bool u_xlatb14;
int u_xlati15;
int u_xlati19;
float u_xlat21;
bool u_xlatb21;
void main()
{
    u_xlat0.x = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat6.xy = u_xlat0.xx * vs_TEXCOORD0.xy;
    u_xlat0.x = vs_TEXCOORD0.y * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat0.x * 0.5;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * Vector1_4bfc834651c5434e9f19af8fc35e919e;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat1.xyz = (-Color_a9774a7f2c954a1bab281452cf78804e.xyz) + Color_5c59ccbcfb2b4c1ab7e2045918282ea1.xyz;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + Color_a9774a7f2c954a1bab281452cf78804e.xyz;
    u_xlat0.xy = u_xlat6.xy * vec2(Vector2_5976ef1d76374e4785031b790bc9eb86.x, Vector2_5976ef1d76374e4785031b790bc9eb86.y);
    u_xlat0.xy = u_xlat0.xy * vec2(Vector1_163de7d269404bae89f9ad5d5901b979);
    u_xlat12.xy = floor(u_xlat0.xy);
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat2.x = float(0.0);
    u_xlat2.y = float(8.0);
    for(int u_xlati_loop_1 = int(0xFFFFFFFFu) ; u_xlati_loop_1<=1 ; u_xlati_loop_1++)
    {
        u_xlat3.y = float(u_xlati_loop_1);
        u_xlat14.xy = u_xlat2.xy;
        for(int u_xlati_loop_2 = int(0xFFFFFFFFu) ; u_xlati_loop_2<=1 ; u_xlati_loop_2++)
        {
            u_xlat3.x = float(u_xlati_loop_2);
            u_xlat4.xy = u_xlat12.xy + u_xlat3.xy;
            u_xlat21 = dot(u_xlat4.xy, vec2(15.2700005, 99.4100037));
            u_xlat4.x = dot(u_xlat4.xy, vec2(47.6300011, 89.9800034));
            u_xlat5.y = sin(u_xlat21);
            u_xlat5.x = sin(u_xlat4.x);
            u_xlat4.xy = fract(u_xlat5.xy);
            u_xlat4.xy = u_xlat4.xy * vec2(100.0, 100.0);
            u_xlat21 = sin(u_xlat4.x);
            u_xlat5.x = u_xlat21 * 0.5 + u_xlat3.x;
            u_xlat3.x = cos(u_xlat4.y);
            u_xlat5.y = u_xlat3.x * 0.5 + u_xlat3.y;
            u_xlat3.xw = (-u_xlat0.xy) + u_xlat5.xy;
            u_xlat3.xw = u_xlat3.xw + vec2(0.5, 0.5);
            u_xlat3.x = dot(u_xlat3.xw, u_xlat3.xw);
            u_xlat3.x = sqrt(u_xlat3.x);
#ifdef UNITY_ADRENO_ES3
            u_xlatb21 = !!(u_xlat3.x<u_xlat14.y);
#else
            u_xlatb21 = u_xlat3.x<u_xlat14.y;
#endif
            u_xlat14.xy = (bool(u_xlatb21)) ? u_xlat3.xx : u_xlat14.xy;
        }
        u_xlat2.xy = u_xlat14.xy;
    }
    u_xlat0.x = min(u_xlat2.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * Vector1_c00e08f72ec44b8883f14de4a1f61a13;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx + u_xlat1.xyz;
    SV_TARGET0.xyz = u_xlat0.xyz;
    SV_TARGET0.w = 1.0;
    return;
}

#endif


//////////////////////////////////////////////////////
Global Keywords: DIRLIGHTMAP_COMBINED 
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Constant Buffer "UnityPerMaterial" (56 bytes) on slot 0 {
  Vector4 Color_a9774a7f2c954a1bab281452cf78804e at 0
  Vector4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1 at 16
  Float Vector1_4bfc834651c5434e9f19af8fc35e919e at 32
  Vector2 Vector2_5976ef1d76374e4785031b790bc9eb86 at 40
  Float Vector1_c00e08f72ec44b8883f14de4a1f61a13 at 48
  Float Vector1_163de7d269404bae89f9ad5d5901b979 at 52
}
Constant Buffer "$Globals" (64 bytes) {
  Matrix4x4 unity_MatrixVP at 0
}
Constant Buffer "UnityPerDraw" (400 bytes) on slot 1 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Vector4 unity_LODFade at 128
  Vector4 unity_WorldTransformParams at 144
  Vector4 unity_LightData at 160
  Vector4 unity_LightIndices[2] at 176
  Vector4 unity_ProbesOcclusion at 208
  Vector4 unity_SpecCube0_HDR at 224
  Vector4 unity_LightmapST at 240
  Vector4 unity_LightmapIndex at 256
  Vector4 unity_DynamicLightmapST at 272
  Vector4 unity_SHAr at 288
  Vector4 unity_SHAg at 304
  Vector4 unity_SHAb at 320
  Vector4 unity_SHBr at 336
  Vector4 unity_SHBg at 352
  Vector4 unity_SHBb at 368
  Vector4 unity_SHC at 384
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(1) uniform UnityPerDraw {
#endif
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	UNITY_UNIFORM vec4 unity_LODFade;
	UNITY_UNIFORM mediump vec4 unity_WorldTransformParams;
	UNITY_UNIFORM mediump vec4 unity_LightData;
	UNITY_UNIFORM mediump vec4 unity_LightIndices[2];
	UNITY_UNIFORM vec4 unity_ProbesOcclusion;
	UNITY_UNIFORM mediump vec4 unity_SpecCube0_HDR;
	UNITY_UNIFORM vec4 unity_LightmapST;
	UNITY_UNIFORM vec4 unity_LightmapIndex;
	UNITY_UNIFORM vec4 unity_DynamicLightmapST;
	UNITY_UNIFORM mediump vec4 unity_SHAr;
	UNITY_UNIFORM mediump vec4 unity_SHAg;
	UNITY_UNIFORM mediump vec4 unity_SHAb;
	UNITY_UNIFORM mediump vec4 unity_SHBr;
	UNITY_UNIFORM mediump vec4 unity_SHBg;
	UNITY_UNIFORM mediump vec4 unity_SHBb;
	UNITY_UNIFORM mediump vec4 unity_SHC;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 in_POSITION0;
out highp vec3 vs_TEXCOORD0;
vec3 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0.xyz = in_POSITION0.yyy * hlslcc_mtx4x4unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + hlslcc_mtx4x4unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    vs_TEXCOORD0.xyz = u_xlat0.xyz;
    gl_Position = u_xlat1 + hlslcc_mtx4x4unity_MatrixVP[3];
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(0) uniform UnityPerMaterial {
#endif
	UNITY_UNIFORM vec4 Color_a9774a7f2c954a1bab281452cf78804e;
	UNITY_UNIFORM vec4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1;
	UNITY_UNIFORM float Vector1_4bfc834651c5434e9f19af8fc35e919e;
	UNITY_UNIFORM vec2 Vector2_5976ef1d76374e4785031b790bc9eb86;
	UNITY_UNIFORM float Vector1_c00e08f72ec44b8883f14de4a1f61a13;
	UNITY_UNIFORM float Vector1_163de7d269404bae89f9ad5d5901b979;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 vs_TEXCOORD0;
layout(location = 0) out mediump vec4 SV_TARGET0;
vec3 u_xlat0;
vec3 u_xlat1;
vec2 u_xlat2;
vec4 u_xlat3;
vec2 u_xlat4;
vec2 u_xlat5;
vec2 u_xlat6;
vec2 u_xlat12;
vec2 u_xlat14;
bool u_xlatb14;
int u_xlati15;
int u_xlati19;
float u_xlat21;
bool u_xlatb21;
void main()
{
    u_xlat0.x = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat6.xy = u_xlat0.xx * vs_TEXCOORD0.xy;
    u_xlat0.x = vs_TEXCOORD0.y * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat0.x * 0.5;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * Vector1_4bfc834651c5434e9f19af8fc35e919e;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat1.xyz = (-Color_a9774a7f2c954a1bab281452cf78804e.xyz) + Color_5c59ccbcfb2b4c1ab7e2045918282ea1.xyz;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + Color_a9774a7f2c954a1bab281452cf78804e.xyz;
    u_xlat0.xy = u_xlat6.xy * vec2(Vector2_5976ef1d76374e4785031b790bc9eb86.x, Vector2_5976ef1d76374e4785031b790bc9eb86.y);
    u_xlat0.xy = u_xlat0.xy * vec2(Vector1_163de7d269404bae89f9ad5d5901b979);
    u_xlat12.xy = floor(u_xlat0.xy);
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat2.x = float(0.0);
    u_xlat2.y = float(8.0);
    for(int u_xlati_loop_1 = int(0xFFFFFFFFu) ; u_xlati_loop_1<=1 ; u_xlati_loop_1++)
    {
        u_xlat3.y = float(u_xlati_loop_1);
        u_xlat14.xy = u_xlat2.xy;
        for(int u_xlati_loop_2 = int(0xFFFFFFFFu) ; u_xlati_loop_2<=1 ; u_xlati_loop_2++)
        {
            u_xlat3.x = float(u_xlati_loop_2);
            u_xlat4.xy = u_xlat12.xy + u_xlat3.xy;
            u_xlat21 = dot(u_xlat4.xy, vec2(15.2700005, 99.4100037));
            u_xlat4.x = dot(u_xlat4.xy, vec2(47.6300011, 89.9800034));
            u_xlat5.y = sin(u_xlat21);
            u_xlat5.x = sin(u_xlat4.x);
            u_xlat4.xy = fract(u_xlat5.xy);
            u_xlat4.xy = u_xlat4.xy * vec2(100.0, 100.0);
            u_xlat21 = sin(u_xlat4.x);
            u_xlat5.x = u_xlat21 * 0.5 + u_xlat3.x;
            u_xlat3.x = cos(u_xlat4.y);
            u_xlat5.y = u_xlat3.x * 0.5 + u_xlat3.y;
            u_xlat3.xw = (-u_xlat0.xy) + u_xlat5.xy;
            u_xlat3.xw = u_xlat3.xw + vec2(0.5, 0.5);
            u_xlat3.x = dot(u_xlat3.xw, u_xlat3.xw);
            u_xlat3.x = sqrt(u_xlat3.x);
#ifdef UNITY_ADRENO_ES3
            u_xlatb21 = !!(u_xlat3.x<u_xlat14.y);
#else
            u_xlatb21 = u_xlat3.x<u_xlat14.y;
#endif
            u_xlat14.xy = (bool(u_xlatb21)) ? u_xlat3.xx : u_xlat14.xy;
        }
        u_xlat2.xy = u_xlat14.xy;
    }
    u_xlat0.x = min(u_xlat2.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * Vector1_c00e08f72ec44b8883f14de4a1f61a13;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx + u_xlat1.xyz;
    SV_TARGET0.xyz = u_xlat0.xyz;
    SV_TARGET0.w = 1.0;
    return;
}

#endif


 }
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE"="SHADOWCASTER" "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Constant Buffer "$Globals" (92 bytes) {
  Matrix4x4 unity_MatrixVP at 0
  Vector4 _ShadowBias at 64
  Vector3 _LightDirection at 80
}
Constant Buffer "UnityPerDraw" (400 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Vector4 unity_LODFade at 128
  Vector4 unity_WorldTransformParams at 144
  Vector4 unity_LightData at 160
  Vector4 unity_LightIndices[2] at 176
  Vector4 unity_ProbesOcclusion at 208
  Vector4 unity_SpecCube0_HDR at 224
  Vector4 unity_LightmapST at 240
  Vector4 unity_LightmapIndex at 256
  Vector4 unity_DynamicLightmapST at 272
  Vector4 unity_SHAr at 288
  Vector4 unity_SHAg at 304
  Vector4 unity_SHAb at 320
  Vector4 unity_SHBr at 336
  Vector4 unity_SHBg at 352
  Vector4 unity_SHBb at 368
  Vector4 unity_SHC at 384
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
uniform 	vec4 _ShadowBias;
uniform 	vec3 _LightDirection;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(0) uniform UnityPerDraw {
#endif
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	UNITY_UNIFORM vec4 unity_LODFade;
	UNITY_UNIFORM mediump vec4 unity_WorldTransformParams;
	UNITY_UNIFORM mediump vec4 unity_LightData;
	UNITY_UNIFORM mediump vec4 unity_LightIndices[2];
	UNITY_UNIFORM vec4 unity_ProbesOcclusion;
	UNITY_UNIFORM mediump vec4 unity_SpecCube0_HDR;
	UNITY_UNIFORM vec4 unity_LightmapST;
	UNITY_UNIFORM vec4 unity_LightmapIndex;
	UNITY_UNIFORM vec4 unity_DynamicLightmapST;
	UNITY_UNIFORM mediump vec4 unity_SHAr;
	UNITY_UNIFORM mediump vec4 unity_SHAg;
	UNITY_UNIFORM mediump vec4 unity_SHAb;
	UNITY_UNIFORM mediump vec4 unity_SHBr;
	UNITY_UNIFORM mediump vec4 unity_SHBg;
	UNITY_UNIFORM mediump vec4 unity_SHBb;
	UNITY_UNIFORM mediump vec4 unity_SHC;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 in_POSITION0;
in highp vec3 in_NORMAL0;
vec4 u_xlat0;
vec4 u_xlat1;
mediump float u_xlat16_2;
float u_xlat9;
void main()
{
    u_xlat0.xyz = in_POSITION0.yyy * hlslcc_mtx4x4unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + hlslcc_mtx4x4unity_ObjectToWorld[3].xyz;
    u_xlat0.xyz = _LightDirection.xyz * _ShadowBias.xxx + u_xlat0.xyz;
    u_xlat1.x = dot(in_NORMAL0.xyz, hlslcc_mtx4x4unity_WorldToObject[0].xyz);
    u_xlat1.y = dot(in_NORMAL0.xyz, hlslcc_mtx4x4unity_WorldToObject[1].xyz);
    u_xlat1.z = dot(in_NORMAL0.xyz, hlslcc_mtx4x4unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat9 = max(u_xlat9, 1.17549435e-38);
    u_xlat16_2 = inversesqrt(u_xlat9);
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat16_2);
    u_xlat9 = dot(_LightDirection.xyz, u_xlat1.xyz);
#ifdef UNITY_ADRENO_ES3
    u_xlat9 = min(max(u_xlat9, 0.0), 1.0);
#else
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
#endif
    u_xlat9 = (-u_xlat9) + 1.0;
    u_xlat9 = u_xlat9 * _ShadowBias.y;
    u_xlat0.xyz = u_xlat1.xyz * vec3(u_xlat9) + u_xlat0.xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + hlslcc_mtx4x4unity_MatrixVP[3];
    gl_Position.z = max((-u_xlat0.w), u_xlat0.z);
    gl_Position.xyw = u_xlat0.xyw;
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
layout(location = 0) out mediump vec4 SV_TARGET0;
void main()
{
    SV_TARGET0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

#endif


 }
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE"="DepthOnly" "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "gles3":
Constant Buffer "$Globals" (64 bytes) {
  Matrix4x4 unity_MatrixVP at 0
}
Constant Buffer "UnityPerDraw" (400 bytes) on slot 0 {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
  Vector4 unity_LODFade at 128
  Vector4 unity_WorldTransformParams at 144
  Vector4 unity_LightData at 160
  Vector4 unity_LightIndices[2] at 176
  Vector4 unity_ProbesOcclusion at 208
  Vector4 unity_SpecCube0_HDR at 224
  Vector4 unity_LightmapST at 240
  Vector4 unity_LightmapIndex at 256
  Vector4 unity_DynamicLightmapST at 272
  Vector4 unity_SHAr at 288
  Vector4 unity_SHAg at 304
  Vector4 unity_SHAb at 320
  Vector4 unity_SHBr at 336
  Vector4 unity_SHBg at 352
  Vector4 unity_SHBb at 368
  Vector4 unity_SHC at 384
}

Shader Disassembly:
#ifdef VERTEX
#version 300 es

#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
uniform 	vec4 hlslcc_mtx4x4unity_MatrixVP[4];
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
UNITY_BINDING(0) uniform UnityPerDraw {
#endif
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_ObjectToWorld[4];
	UNITY_UNIFORM vec4 hlslcc_mtx4x4unity_WorldToObject[4];
	UNITY_UNIFORM vec4 unity_LODFade;
	UNITY_UNIFORM mediump vec4 unity_WorldTransformParams;
	UNITY_UNIFORM mediump vec4 unity_LightData;
	UNITY_UNIFORM mediump vec4 unity_LightIndices[2];
	UNITY_UNIFORM vec4 unity_ProbesOcclusion;
	UNITY_UNIFORM mediump vec4 unity_SpecCube0_HDR;
	UNITY_UNIFORM vec4 unity_LightmapST;
	UNITY_UNIFORM vec4 unity_LightmapIndex;
	UNITY_UNIFORM vec4 unity_DynamicLightmapST;
	UNITY_UNIFORM mediump vec4 unity_SHAr;
	UNITY_UNIFORM mediump vec4 unity_SHAg;
	UNITY_UNIFORM mediump vec4 unity_SHAb;
	UNITY_UNIFORM mediump vec4 unity_SHBr;
	UNITY_UNIFORM mediump vec4 unity_SHBg;
	UNITY_UNIFORM mediump vec4 unity_SHBb;
	UNITY_UNIFORM mediump vec4 unity_SHC;
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
};
#endif
in highp vec3 in_POSITION0;
vec4 u_xlat0;
vec4 u_xlat1;
void main()
{
    u_xlat0.xyz = in_POSITION0.yyy * hlslcc_mtx4x4unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = hlslcc_mtx4x4unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + hlslcc_mtx4x4unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * hlslcc_mtx4x4unity_MatrixVP[1];
    u_xlat1 = hlslcc_mtx4x4unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = hlslcc_mtx4x4unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = u_xlat0 + hlslcc_mtx4x4unity_MatrixVP[3];
    return;
}

#endif
#ifdef FRAGMENT
#version 300 es

precision highp float;
precision highp int;
layout(location = 0) out mediump vec4 SV_TARGET0;
void main()
{
    SV_TARGET0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

#endif


 }
}
SubShader { 
 Tags { "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
 Pass {
  Name "Pass"
  Tags { "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"

Constant Buffer "UnityPerDraw" (400 bytes) on set: 1, binding: 2, used in: Vertex  {
  Matrix4x4 unity_ObjectToWorld at 0
}
Constant Buffer "UnityPerMaterial" (56 bytes) on set: 1, binding: 0, used in: Fragment  {
  Vector4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1 at 16
  Vector4 Color_a9774a7f2c954a1bab281452cf78804e at 0
  Float Vector1_163de7d269404bae89f9ad5d5901b979 at 52
  Float Vector1_4bfc834651c5434e9f19af8fc35e919e at 32
  Float Vector1_c00e08f72ec44b8883f14de4a1f61a13 at 48
  Vector2 Vector2_5976ef1d76374e4785031b790bc9eb86 at 40
}
Constant Buffer "VGlobals2416031727" (64 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 112

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 81 87
                              Name 81  "vs_TEXCOORD0"
                              Decorate 11 Location 0
                              Decorate 17 ArrayStride 16
                              Decorate 18 ArrayStride 16
                              Decorate 20 ArrayStride 16
                              MemberDecorate 21 0 Offset 0
                              MemberDecorate 21 1 Offset 64
                              MemberDecorate 21 2 Offset 128
                              MemberDecorate 21 3 RelaxedPrecision
                              MemberDecorate 21 3 Offset 144
                              MemberDecorate 21 4 RelaxedPrecision
                              MemberDecorate 21 4 Offset 160
                              MemberDecorate 21 5 RelaxedPrecision
                              MemberDecorate 21 5 Offset 176
                              MemberDecorate 21 6 Offset 208
                              MemberDecorate 21 7 RelaxedPrecision
                              MemberDecorate 21 7 Offset 224
                              MemberDecorate 21 8 Offset 240
                              MemberDecorate 21 9 Offset 256
                              MemberDecorate 21 10 Offset 272
                              MemberDecorate 21 11 RelaxedPrecision
                              MemberDecorate 21 11 Offset 288
                              MemberDecorate 21 12 RelaxedPrecision
                              MemberDecorate 21 12 Offset 304
                              MemberDecorate 21 13 RelaxedPrecision
                              MemberDecorate 21 13 Offset 320
                              MemberDecorate 21 14 RelaxedPrecision
                              MemberDecorate 21 14 Offset 336
                              MemberDecorate 21 15 RelaxedPrecision
                              MemberDecorate 21 15 Offset 352
                              MemberDecorate 21 16 RelaxedPrecision
                              MemberDecorate 21 16 Offset 368
                              MemberDecorate 21 17 RelaxedPrecision
                              MemberDecorate 21 17 Offset 384
                              Decorate 21 Block
                              Decorate 23 DescriptorSet 1
                              Decorate 23 Binding 2
                              Decorate 59 ArrayStride 16
                              MemberDecorate 60 0 Offset 0
                              Decorate 60 Block
                              Decorate 62 DescriptorSet 1
                              Decorate 62 Binding 1
                              Decorate 81(vs_TEXCOORD0) Location 0
                              MemberDecorate 85 0 BuiltIn Position
                              MemberDecorate 85 1 BuiltIn PointSize
                              MemberDecorate 85 2 BuiltIn ClipDistance
                              Decorate 85 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 3
               8:             TypePointer Private 7(fvec3)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec3)
              11:     10(ptr) Variable Input
              14:             TypeVector 6(float) 4
              15:             TypeInt 32 0
              16:     15(int) Constant 4
              17:             TypeArray 14(fvec4) 16
              18:             TypeArray 14(fvec4) 16
              19:     15(int) Constant 2
              20:             TypeArray 14(fvec4) 19
              21:             TypeStruct 17 18 14(fvec4) 14(fvec4) 14(fvec4) 20 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4)
              22:             TypePointer Uniform 21(struct)
              23:     22(ptr) Variable Uniform
              24:             TypeInt 32 1
              25:     24(int) Constant 0
              26:     24(int) Constant 1
              27:             TypePointer Uniform 14(fvec4)
              40:     24(int) Constant 2
              50:     24(int) Constant 3
              55:             TypePointer Private 14(fvec4)
              56:     55(ptr) Variable Private
              59:             TypeArray 14(fvec4) 16
              60:             TypeStruct 59
              61:             TypePointer Uniform 60(struct)
              62:     61(ptr) Variable Uniform
              80:             TypePointer Output 7(fvec3)
81(vs_TEXCOORD0):     80(ptr) Variable Output
              83:     15(int) Constant 1
              84:             TypeArray 6(float) 83
              85:             TypeStruct 14(fvec4) 6(float) 84
              86:             TypePointer Output 85(struct)
              87:     86(ptr) Variable Output
              92:             TypePointer Output 14(fvec4)
              94:             TypePointer Output 6(float)
             100:             TypePointer Function 14(fvec4)
             102:             TypeVector 24(int) 4
             103:             TypePointer Function 102(ivec4)
             105:             TypeBool
             106:             TypeVector 105(bool) 4
             107:             TypePointer Function 106(bvec4)
             109:             TypeVector 15(int) 4
             110:             TypePointer Function 109(ivec4)
               4:           2 Function None 3
               5:             Label
             101:    100(ptr) Variable Function
             104:    103(ptr) Variable Function
             108:    107(ptr) Variable Function
             111:    110(ptr) Variable Function
              12:    7(fvec3) Load 11
              13:    7(fvec3) VectorShuffle 12 12 1 1 1
              28:     27(ptr) AccessChain 23 25 26
              29:   14(fvec4) Load 28
              30:    7(fvec3) VectorShuffle 29 29 0 1 2
              31:    7(fvec3) FMul 13 30
                              Store 9 31
              32:     27(ptr) AccessChain 23 25 25
              33:   14(fvec4) Load 32
              34:    7(fvec3) VectorShuffle 33 33 0 1 2
              35:    7(fvec3) Load 11
              36:    7(fvec3) VectorShuffle 35 35 0 0 0
              37:    7(fvec3) FMul 34 36
              38:    7(fvec3) Load 9
              39:    7(fvec3) FAdd 37 38
                              Store 9 39
              41:     27(ptr) AccessChain 23 25 40
              42:   14(fvec4) Load 41
              43:    7(fvec3) VectorShuffle 42 42 0 1 2
              44:    7(fvec3) Load 11
              45:    7(fvec3) VectorShuffle 44 44 2 2 2
              46:    7(fvec3) FMul 43 45
              47:    7(fvec3) Load 9
              48:    7(fvec3) FAdd 46 47
                              Store 9 48
              49:    7(fvec3) Load 9
              51:     27(ptr) AccessChain 23 25 50
              52:   14(fvec4) Load 51
              53:    7(fvec3) VectorShuffle 52 52 0 1 2
              54:    7(fvec3) FAdd 49 53
                              Store 9 54
              57:    7(fvec3) Load 9
              58:   14(fvec4) VectorShuffle 57 57 1 1 1 1
              63:     27(ptr) AccessChain 62 25 26
              64:   14(fvec4) Load 63
              65:   14(fvec4) FMul 58 64
                              Store 56 65
              66:     27(ptr) AccessChain 62 25 25
              67:   14(fvec4) Load 66
              68:    7(fvec3) Load 9
              69:   14(fvec4) VectorShuffle 68 68 0 0 0 0
              70:   14(fvec4) FMul 67 69
              71:   14(fvec4) Load 56
              72:   14(fvec4) FAdd 70 71
                              Store 56 72
              73:     27(ptr) AccessChain 62 25 40
              74:   14(fvec4) Load 73
              75:    7(fvec3) Load 9
              76:   14(fvec4) VectorShuffle 75 75 2 2 2 2
              77:   14(fvec4) FMul 74 76
              78:   14(fvec4) Load 56
              79:   14(fvec4) FAdd 77 78
                              Store 56 79
              82:    7(fvec3) Load 9
                              Store 81(vs_TEXCOORD0) 82
              88:   14(fvec4) Load 56
              89:     27(ptr) AccessChain 62 25 50
              90:   14(fvec4) Load 89
              91:   14(fvec4) FAdd 88 90
              93:     92(ptr) AccessChain 87 25
                              Store 93 91
              95:     94(ptr) AccessChain 87 25 83
              96:    6(float) Load 95
              97:    6(float) FNegate 96
              98:     94(ptr) AccessChain 87 25 83
                              Store 98 97
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 297

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 11 274
                              ExecutionMode 4 OriginUpperLeft
                              Name 11  "vs_TEXCOORD0"
                              Decorate 11(vs_TEXCOORD0) Location 0
                              MemberDecorate 53 0 Offset 0
                              MemberDecorate 53 1 Offset 16
                              MemberDecorate 53 2 Offset 32
                              MemberDecorate 53 3 Offset 40
                              MemberDecorate 53 4 Offset 48
                              MemberDecorate 53 5 Offset 52
                              Decorate 53 Block
                              Decorate 55 DescriptorSet 1
                              Decorate 55 Binding 0
                              Decorate 274 RelaxedPrecision
                              Decorate 274 Location 0
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 3
               8:             TypePointer Private 7(fvec3)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec3)
11(vs_TEXCOORD0):     10(ptr) Variable Input
              15:             TypeInt 32 0
              16:     15(int) Constant 0
              17:             TypePointer Private 6(float)
              23:             TypeVector 6(float) 2
              24:             TypePointer Private 23(fvec2)
              25:     24(ptr) Variable Private
              31:     15(int) Constant 1
              32:             TypePointer Input 6(float)
              38:    6(float) Constant 1065353216
              43:    6(float) Constant 1056964608
              52:             TypeVector 6(float) 4
              53:             TypeStruct 52(fvec4) 52(fvec4) 6(float) 23(fvec2) 6(float) 6(float)
              54:             TypePointer Uniform 53(struct)
              55:     54(ptr) Variable Uniform
              56:             TypeInt 32 1
              57:     56(int) Constant 2
              58:             TypePointer Uniform 6(float)
              67:      8(ptr) Variable Private
              68:     56(int) Constant 0
              69:             TypePointer Uniform 52(fvec4)
              74:     56(int) Constant 1
              88:     56(int) Constant 3
              99:     56(int) Constant 5
             106:     24(ptr) Variable Private
             115:     24(ptr) Variable Private
             116:    6(float) Constant 0
             118:    6(float) Constant 1090519040
             120:             TypePointer Function 56(int)
             122:     56(int) Constant 4294967295
             129:             TypeBool
             131:             TypePointer Private 52(fvec4)
             132:    131(ptr) Variable Private
             136:     24(ptr) Variable Private
             149:     24(ptr) Variable Private
             154:     17(ptr) Variable Private
             156:    6(float) Constant 1098142188
             157:    6(float) Constant 1120326124
             158:   23(fvec2) ConstantComposite 156 157
             161:    6(float) Constant 1111393567
             162:    6(float) Constant 1119090115
             163:   23(fvec2) ConstantComposite 161 162
             166:     24(ptr) Variable Private
             177:    6(float) Constant 1120403456
             178:   23(fvec2) ConstantComposite 177 177
             209:   23(fvec2) ConstantComposite 43 43
             223:             TypePointer Private 129(bool)
             224:    223(ptr) Variable Private
             231:             TypePointer Function 23(fvec2)
             260:     56(int) Constant 4
             273:             TypePointer Output 52(fvec4)
             274:    273(ptr) Variable Output
             278:     15(int) Constant 3
             279:             TypePointer Output 6(float)
             282:             TypePointer Function 52(fvec4)
             284:             TypeVector 56(int) 4
             285:             TypePointer Function 284(ivec4)
             287:             TypeVector 129(bool) 4
             288:             TypePointer Function 287(bvec4)
             290:             TypeVector 15(int) 4
             291:             TypePointer Function 290(ivec4)
             293:    223(ptr) Variable Private
             294:             TypePointer Private 56(int)
             295:    294(ptr) Variable Private
             296:    294(ptr) Variable Private
               4:           2 Function None 3
               5:             Label
             121:    120(ptr) Variable Function
             138:    120(ptr) Variable Function
             232:    231(ptr) Variable Function
             283:    282(ptr) Variable Function
             286:    285(ptr) Variable Function
             289:    288(ptr) Variable Function
             292:    291(ptr) Variable Function
              12:    7(fvec3) Load 11(vs_TEXCOORD0)
              13:    7(fvec3) Load 11(vs_TEXCOORD0)
              14:    6(float) Dot 12 13
              18:     17(ptr) AccessChain 9 16
                              Store 18 14
              19:     17(ptr) AccessChain 9 16
              20:    6(float) Load 19
              21:    6(float) ExtInst 1(GLSL.std.450) 32(InverseSqrt) 20
              22:     17(ptr) AccessChain 9 16
                              Store 22 21
              26:    7(fvec3) Load 9
              27:   23(fvec2) VectorShuffle 26 26 0 0
              28:    7(fvec3) Load 11(vs_TEXCOORD0)
              29:   23(fvec2) VectorShuffle 28 28 0 1
              30:   23(fvec2) FMul 27 29
                              Store 25 30
              33:     32(ptr) AccessChain 11(vs_TEXCOORD0) 31
              34:    6(float) Load 33
              35:     17(ptr) AccessChain 9 16
              36:    6(float) Load 35
              37:    6(float) FMul 34 36
              39:    6(float) FAdd 37 38
              40:     17(ptr) AccessChain 9 16
                              Store 40 39
              41:     17(ptr) AccessChain 9 16
              42:    6(float) Load 41
              44:    6(float) FMul 42 43
              45:     17(ptr) AccessChain 9 16
                              Store 45 44
              46:     17(ptr) AccessChain 9 16
              47:    6(float) Load 46
              48:    6(float) ExtInst 1(GLSL.std.450) 30(Log2) 47
              49:     17(ptr) AccessChain 9 16
                              Store 49 48
              50:     17(ptr) AccessChain 9 16
              51:    6(float) Load 50
              59:     58(ptr) AccessChain 55 57
              60:    6(float) Load 59
              61:    6(float) FMul 51 60
              62:     17(ptr) AccessChain 9 16
                              Store 62 61
              63:     17(ptr) AccessChain 9 16
              64:    6(float) Load 63
              65:    6(float) ExtInst 1(GLSL.std.450) 29(Exp2) 64
              66:     17(ptr) AccessChain 9 16
                              Store 66 65
              70:     69(ptr) AccessChain 55 68
              71:   52(fvec4) Load 70
              72:    7(fvec3) VectorShuffle 71 71 0 1 2
              73:    7(fvec3) FNegate 72
              75:     69(ptr) AccessChain 55 74
              76:   52(fvec4) Load 75
              77:    7(fvec3) VectorShuffle 76 76 0 1 2
              78:    7(fvec3) FAdd 73 77
                              Store 67 78
              79:    7(fvec3) Load 9
              80:    7(fvec3) VectorShuffle 79 79 0 0 0
              81:    7(fvec3) Load 67
              82:    7(fvec3) FMul 80 81
              83:     69(ptr) AccessChain 55 68
              84:   52(fvec4) Load 83
              85:    7(fvec3) VectorShuffle 84 84 0 1 2
              86:    7(fvec3) FAdd 82 85
                              Store 67 86
              87:   23(fvec2) Load 25
              89:     58(ptr) AccessChain 55 88 16
              90:    6(float) Load 89
              91:     58(ptr) AccessChain 55 88 31
              92:    6(float) Load 91
              93:   23(fvec2) CompositeConstruct 90 92
              94:   23(fvec2) FMul 87 93
              95:    7(fvec3) Load 9
              96:    7(fvec3) VectorShuffle 95 94 3 4 2
                              Store 9 96
              97:    7(fvec3) Load 9
              98:   23(fvec2) VectorShuffle 97 97 0 1
             100:     58(ptr) AccessChain 55 99
             101:    6(float) Load 100
             102:   23(fvec2) CompositeConstruct 101 101
             103:   23(fvec2) FMul 98 102
             104:    7(fvec3) Load 9
             105:    7(fvec3) VectorShuffle 104 103 3 4 2
                              Store 9 105
             107:    7(fvec3) Load 9
             108:   23(fvec2) VectorShuffle 107 107 0 1
             109:   23(fvec2) ExtInst 1(GLSL.std.450) 8(Floor) 108
                              Store 106 109
             110:    7(fvec3) Load 9
             111:   23(fvec2) VectorShuffle 110 110 0 1
             112:   23(fvec2) ExtInst 1(GLSL.std.450) 10(Fract) 111
             113:    7(fvec3) Load 9
             114:    7(fvec3) VectorShuffle 113 112 3 4 2
                              Store 9 114
             117:     17(ptr) AccessChain 115 16
                              Store 117 116
             119:     17(ptr) AccessChain 115 31
                              Store 119 118
                              Store 121 122
                              Branch 123
             123:             Label
                              LoopMerge 125 126 None
                              Branch 127
             127:             Label
             128:     56(int) Load 121
             130:   129(bool) SLessThanEqual 128 74
                              BranchConditional 130 124 125
             124:               Label
             133:     56(int)   Load 121
             134:    6(float)   ConvertSToF 133
             135:     17(ptr)   AccessChain 132 31
                                Store 135 134
             137:   23(fvec2)   Load 115
                                Store 136 137
                                Store 138 122
                                Branch 139
             139:               Label
                                LoopMerge 141 142 None
                                Branch 143
             143:               Label
             144:     56(int)   Load 138
             145:   129(bool)   SLessThanEqual 144 74
                                BranchConditional 145 140 141
             140:                 Label
             146:     56(int)     Load 138
             147:    6(float)     ConvertSToF 146
             148:     17(ptr)     AccessChain 132 16
                                  Store 148 147
             150:   23(fvec2)     Load 106
             151:   52(fvec4)     Load 132
             152:   23(fvec2)     VectorShuffle 151 151 0 1
             153:   23(fvec2)     FAdd 150 152
                                  Store 149 153
             155:   23(fvec2)     Load 149
             159:    6(float)     Dot 155 158
                                  Store 154 159
             160:   23(fvec2)     Load 149
             164:    6(float)     Dot 160 163
             165:     17(ptr)     AccessChain 149 16
                                  Store 165 164
             167:    6(float)     Load 154
             168:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 167
             169:     17(ptr)     AccessChain 166 31
                                  Store 169 168
             170:     17(ptr)     AccessChain 149 16
             171:    6(float)     Load 170
             172:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 171
             173:     17(ptr)     AccessChain 166 16
                                  Store 173 172
             174:   23(fvec2)     Load 166
             175:   23(fvec2)     ExtInst 1(GLSL.std.450) 10(Fract) 174
                                  Store 149 175
             176:   23(fvec2)     Load 149
             179:   23(fvec2)     FMul 176 178
                                  Store 149 179
             180:     17(ptr)     AccessChain 149 16
             181:    6(float)     Load 180
             182:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 181
                                  Store 154 182
             183:    6(float)     Load 154
             184:    6(float)     FMul 183 43
             185:     17(ptr)     AccessChain 132 16
             186:    6(float)     Load 185
             187:    6(float)     FAdd 184 186
             188:     17(ptr)     AccessChain 166 16
                                  Store 188 187
             189:     17(ptr)     AccessChain 149 31
             190:    6(float)     Load 189
             191:    6(float)     ExtInst 1(GLSL.std.450) 14(Cos) 190
             192:     17(ptr)     AccessChain 132 16
                                  Store 192 191
             193:     17(ptr)     AccessChain 132 16
             194:    6(float)     Load 193
             195:    6(float)     FMul 194 43
             196:     17(ptr)     AccessChain 132 31
             197:    6(float)     Load 196
             198:    6(float)     FAdd 195 197
             199:     17(ptr)     AccessChain 166 31
                                  Store 199 198
             200:    7(fvec3)     Load 9
             201:   23(fvec2)     VectorShuffle 200 200 0 1
             202:   23(fvec2)     FNegate 201
             203:   23(fvec2)     Load 166
             204:   23(fvec2)     FAdd 202 203
             205:   52(fvec4)     Load 132
             206:   52(fvec4)     VectorShuffle 205 204 4 1 2 5
                                  Store 132 206
             207:   52(fvec4)     Load 132
             208:   23(fvec2)     VectorShuffle 207 207 0 3
             210:   23(fvec2)     FAdd 208 209
             211:   52(fvec4)     Load 132
             212:   52(fvec4)     VectorShuffle 211 210 4 1 2 5
                                  Store 132 212
             213:   52(fvec4)     Load 132
             214:   23(fvec2)     VectorShuffle 213 213 0 3
             215:   52(fvec4)     Load 132
             216:   23(fvec2)     VectorShuffle 215 215 0 3
             217:    6(float)     Dot 214 216
             218:     17(ptr)     AccessChain 132 16
                                  Store 218 217
             219:     17(ptr)     AccessChain 132 16
             220:    6(float)     Load 219
             221:    6(float)     ExtInst 1(GLSL.std.450) 31(Sqrt) 220
             222:     17(ptr)     AccessChain 132 16
                                  Store 222 221
             225:     17(ptr)     AccessChain 132 16
             226:    6(float)     Load 225
             227:     17(ptr)     AccessChain 136 31
             228:    6(float)     Load 227
             229:   129(bool)     FOrdLessThan 226 228
                                  Store 224 229
             230:   129(bool)     Load 224
                                  SelectionMerge 234 None
                                  BranchConditional 230 233 237
             233:                   Label
             235:   52(fvec4)       Load 132
             236:   23(fvec2)       VectorShuffle 235 235 0 0
                                    Store 232 236
                                    Branch 234
             237:                   Label
             238:   23(fvec2)       Load 136
                                    Store 232 238
                                    Branch 234
             234:                 Label
             239:   23(fvec2)     Load 232
                                  Store 136 239
                                  Branch 142
             142:                 Label
             240:     56(int)     Load 138
             241:     56(int)     IAdd 240 74
                                  Store 138 241
                                  Branch 139
             141:               Label
             242:   23(fvec2)   Load 136
                                Store 115 242
                                Branch 126
             126:               Label
             243:     56(int)   Load 121
             244:     56(int)   IAdd 243 74
                                Store 121 244
                                Branch 123
             125:             Label
             245:     17(ptr) AccessChain 115 16
             246:    6(float) Load 245
             247:    6(float) ExtInst 1(GLSL.std.450) 37(FMin) 246 38
             248:     17(ptr) AccessChain 9 16
                              Store 248 247
             249:     17(ptr) AccessChain 9 16
             250:    6(float) Load 249
             251:    6(float) FNegate 250
             252:    6(float) FAdd 251 38
             253:     17(ptr) AccessChain 9 16
                              Store 253 252
             254:     17(ptr) AccessChain 9 16
             255:    6(float) Load 254
             256:    6(float) ExtInst 1(GLSL.std.450) 30(Log2) 255
             257:     17(ptr) AccessChain 9 16
                              Store 257 256
             258:     17(ptr) AccessChain 9 16
             259:    6(float) Load 258
             261:     58(ptr) AccessChain 55 260
             262:    6(float) Load 261
             263:    6(float) FMul 259 262
             264:     17(ptr) AccessChain 9 16
                              Store 264 263
             265:     17(ptr) AccessChain 9 16
             266:    6(float) Load 265
             267:    6(float) ExtInst 1(GLSL.std.450) 29(Exp2) 266
             268:     17(ptr) AccessChain 9 16
                              Store 268 267
             269:    7(fvec3) Load 9
             270:    7(fvec3) VectorShuffle 269 269 0 0 0
             271:    7(fvec3) Load 67
             272:    7(fvec3) FAdd 270 271
                              Store 9 272
             275:    7(fvec3) Load 9
             276:   52(fvec4) Load 274
             277:   52(fvec4) VectorShuffle 276 275 4 5 6 3
                              Store 274 277
             280:    279(ptr) AccessChain 274 278
                              Store 280 38
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



//////////////////////////////////////////////////////
Global Keywords: DIRLIGHTMAP_COMBINED 
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"

Constant Buffer "UnityPerDraw" (400 bytes) on set: 1, binding: 2, used in: Vertex  {
  Matrix4x4 unity_ObjectToWorld at 0
}
Constant Buffer "UnityPerMaterial" (56 bytes) on set: 1, binding: 0, used in: Fragment  {
  Vector4 Color_5c59ccbcfb2b4c1ab7e2045918282ea1 at 16
  Vector4 Color_a9774a7f2c954a1bab281452cf78804e at 0
  Float Vector1_163de7d269404bae89f9ad5d5901b979 at 52
  Float Vector1_4bfc834651c5434e9f19af8fc35e919e at 32
  Float Vector1_c00e08f72ec44b8883f14de4a1f61a13 at 48
  Vector2 Vector2_5976ef1d76374e4785031b790bc9eb86 at 40
}
Constant Buffer "VGlobals2416031727" (64 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 112

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 11 81 87
                              Name 81  "vs_TEXCOORD0"
                              Decorate 11 Location 0
                              Decorate 17 ArrayStride 16
                              Decorate 18 ArrayStride 16
                              Decorate 20 ArrayStride 16
                              MemberDecorate 21 0 Offset 0
                              MemberDecorate 21 1 Offset 64
                              MemberDecorate 21 2 Offset 128
                              MemberDecorate 21 3 RelaxedPrecision
                              MemberDecorate 21 3 Offset 144
                              MemberDecorate 21 4 RelaxedPrecision
                              MemberDecorate 21 4 Offset 160
                              MemberDecorate 21 5 RelaxedPrecision
                              MemberDecorate 21 5 Offset 176
                              MemberDecorate 21 6 Offset 208
                              MemberDecorate 21 7 RelaxedPrecision
                              MemberDecorate 21 7 Offset 224
                              MemberDecorate 21 8 Offset 240
                              MemberDecorate 21 9 Offset 256
                              MemberDecorate 21 10 Offset 272
                              MemberDecorate 21 11 RelaxedPrecision
                              MemberDecorate 21 11 Offset 288
                              MemberDecorate 21 12 RelaxedPrecision
                              MemberDecorate 21 12 Offset 304
                              MemberDecorate 21 13 RelaxedPrecision
                              MemberDecorate 21 13 Offset 320
                              MemberDecorate 21 14 RelaxedPrecision
                              MemberDecorate 21 14 Offset 336
                              MemberDecorate 21 15 RelaxedPrecision
                              MemberDecorate 21 15 Offset 352
                              MemberDecorate 21 16 RelaxedPrecision
                              MemberDecorate 21 16 Offset 368
                              MemberDecorate 21 17 RelaxedPrecision
                              MemberDecorate 21 17 Offset 384
                              Decorate 21 Block
                              Decorate 23 DescriptorSet 1
                              Decorate 23 Binding 2
                              Decorate 59 ArrayStride 16
                              MemberDecorate 60 0 Offset 0
                              Decorate 60 Block
                              Decorate 62 DescriptorSet 1
                              Decorate 62 Binding 1
                              Decorate 81(vs_TEXCOORD0) Location 0
                              MemberDecorate 85 0 BuiltIn Position
                              MemberDecorate 85 1 BuiltIn PointSize
                              MemberDecorate 85 2 BuiltIn ClipDistance
                              Decorate 85 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 3
               8:             TypePointer Private 7(fvec3)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec3)
              11:     10(ptr) Variable Input
              14:             TypeVector 6(float) 4
              15:             TypeInt 32 0
              16:     15(int) Constant 4
              17:             TypeArray 14(fvec4) 16
              18:             TypeArray 14(fvec4) 16
              19:     15(int) Constant 2
              20:             TypeArray 14(fvec4) 19
              21:             TypeStruct 17 18 14(fvec4) 14(fvec4) 14(fvec4) 20 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4) 14(fvec4)
              22:             TypePointer Uniform 21(struct)
              23:     22(ptr) Variable Uniform
              24:             TypeInt 32 1
              25:     24(int) Constant 0
              26:     24(int) Constant 1
              27:             TypePointer Uniform 14(fvec4)
              40:     24(int) Constant 2
              50:     24(int) Constant 3
              55:             TypePointer Private 14(fvec4)
              56:     55(ptr) Variable Private
              59:             TypeArray 14(fvec4) 16
              60:             TypeStruct 59
              61:             TypePointer Uniform 60(struct)
              62:     61(ptr) Variable Uniform
              80:             TypePointer Output 7(fvec3)
81(vs_TEXCOORD0):     80(ptr) Variable Output
              83:     15(int) Constant 1
              84:             TypeArray 6(float) 83
              85:             TypeStruct 14(fvec4) 6(float) 84
              86:             TypePointer Output 85(struct)
              87:     86(ptr) Variable Output
              92:             TypePointer Output 14(fvec4)
              94:             TypePointer Output 6(float)
             100:             TypePointer Function 14(fvec4)
             102:             TypeVector 24(int) 4
             103:             TypePointer Function 102(ivec4)
             105:             TypeBool
             106:             TypeVector 105(bool) 4
             107:             TypePointer Function 106(bvec4)
             109:             TypeVector 15(int) 4
             110:             TypePointer Function 109(ivec4)
               4:           2 Function None 3
               5:             Label
             101:    100(ptr) Variable Function
             104:    103(ptr) Variable Function
             108:    107(ptr) Variable Function
             111:    110(ptr) Variable Function
              12:    7(fvec3) Load 11
              13:    7(fvec3) VectorShuffle 12 12 1 1 1
              28:     27(ptr) AccessChain 23 25 26
              29:   14(fvec4) Load 28
              30:    7(fvec3) VectorShuffle 29 29 0 1 2
              31:    7(fvec3) FMul 13 30
                              Store 9 31
              32:     27(ptr) AccessChain 23 25 25
              33:   14(fvec4) Load 32
              34:    7(fvec3) VectorShuffle 33 33 0 1 2
              35:    7(fvec3) Load 11
              36:    7(fvec3) VectorShuffle 35 35 0 0 0
              37:    7(fvec3) FMul 34 36
              38:    7(fvec3) Load 9
              39:    7(fvec3) FAdd 37 38
                              Store 9 39
              41:     27(ptr) AccessChain 23 25 40
              42:   14(fvec4) Load 41
              43:    7(fvec3) VectorShuffle 42 42 0 1 2
              44:    7(fvec3) Load 11
              45:    7(fvec3) VectorShuffle 44 44 2 2 2
              46:    7(fvec3) FMul 43 45
              47:    7(fvec3) Load 9
              48:    7(fvec3) FAdd 46 47
                              Store 9 48
              49:    7(fvec3) Load 9
              51:     27(ptr) AccessChain 23 25 50
              52:   14(fvec4) Load 51
              53:    7(fvec3) VectorShuffle 52 52 0 1 2
              54:    7(fvec3) FAdd 49 53
                              Store 9 54
              57:    7(fvec3) Load 9
              58:   14(fvec4) VectorShuffle 57 57 1 1 1 1
              63:     27(ptr) AccessChain 62 25 26
              64:   14(fvec4) Load 63
              65:   14(fvec4) FMul 58 64
                              Store 56 65
              66:     27(ptr) AccessChain 62 25 25
              67:   14(fvec4) Load 66
              68:    7(fvec3) Load 9
              69:   14(fvec4) VectorShuffle 68 68 0 0 0 0
              70:   14(fvec4) FMul 67 69
              71:   14(fvec4) Load 56
              72:   14(fvec4) FAdd 70 71
                              Store 56 72
              73:     27(ptr) AccessChain 62 25 40
              74:   14(fvec4) Load 73
              75:    7(fvec3) Load 9
              76:   14(fvec4) VectorShuffle 75 75 2 2 2 2
              77:   14(fvec4) FMul 74 76
              78:   14(fvec4) Load 56
              79:   14(fvec4) FAdd 77 78
                              Store 56 79
              82:    7(fvec3) Load 9
                              Store 81(vs_TEXCOORD0) 82
              88:   14(fvec4) Load 56
              89:     27(ptr) AccessChain 62 25 50
              90:   14(fvec4) Load 89
              91:   14(fvec4) FAdd 88 90
              93:     92(ptr) AccessChain 87 25
                              Store 93 91
              95:     94(ptr) AccessChain 87 25 83
              96:    6(float) Load 95
              97:    6(float) FNegate 96
              98:     94(ptr) AccessChain 87 25 83
                              Store 98 97
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 297

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 11 274
                              ExecutionMode 4 OriginUpperLeft
                              Name 11  "vs_TEXCOORD0"
                              Decorate 11(vs_TEXCOORD0) Location 0
                              MemberDecorate 53 0 Offset 0
                              MemberDecorate 53 1 Offset 16
                              MemberDecorate 53 2 Offset 32
                              MemberDecorate 53 3 Offset 40
                              MemberDecorate 53 4 Offset 48
                              MemberDecorate 53 5 Offset 52
                              Decorate 53 Block
                              Decorate 55 DescriptorSet 1
                              Decorate 55 Binding 0
                              Decorate 274 RelaxedPrecision
                              Decorate 274 Location 0
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 3
               8:             TypePointer Private 7(fvec3)
               9:      8(ptr) Variable Private
              10:             TypePointer Input 7(fvec3)
11(vs_TEXCOORD0):     10(ptr) Variable Input
              15:             TypeInt 32 0
              16:     15(int) Constant 0
              17:             TypePointer Private 6(float)
              23:             TypeVector 6(float) 2
              24:             TypePointer Private 23(fvec2)
              25:     24(ptr) Variable Private
              31:     15(int) Constant 1
              32:             TypePointer Input 6(float)
              38:    6(float) Constant 1065353216
              43:    6(float) Constant 1056964608
              52:             TypeVector 6(float) 4
              53:             TypeStruct 52(fvec4) 52(fvec4) 6(float) 23(fvec2) 6(float) 6(float)
              54:             TypePointer Uniform 53(struct)
              55:     54(ptr) Variable Uniform
              56:             TypeInt 32 1
              57:     56(int) Constant 2
              58:             TypePointer Uniform 6(float)
              67:      8(ptr) Variable Private
              68:     56(int) Constant 0
              69:             TypePointer Uniform 52(fvec4)
              74:     56(int) Constant 1
              88:     56(int) Constant 3
              99:     56(int) Constant 5
             106:     24(ptr) Variable Private
             115:     24(ptr) Variable Private
             116:    6(float) Constant 0
             118:    6(float) Constant 1090519040
             120:             TypePointer Function 56(int)
             122:     56(int) Constant 4294967295
             129:             TypeBool
             131:             TypePointer Private 52(fvec4)
             132:    131(ptr) Variable Private
             136:     24(ptr) Variable Private
             149:     24(ptr) Variable Private
             154:     17(ptr) Variable Private
             156:    6(float) Constant 1098142188
             157:    6(float) Constant 1120326124
             158:   23(fvec2) ConstantComposite 156 157
             161:    6(float) Constant 1111393567
             162:    6(float) Constant 1119090115
             163:   23(fvec2) ConstantComposite 161 162
             166:     24(ptr) Variable Private
             177:    6(float) Constant 1120403456
             178:   23(fvec2) ConstantComposite 177 177
             209:   23(fvec2) ConstantComposite 43 43
             223:             TypePointer Private 129(bool)
             224:    223(ptr) Variable Private
             231:             TypePointer Function 23(fvec2)
             260:     56(int) Constant 4
             273:             TypePointer Output 52(fvec4)
             274:    273(ptr) Variable Output
             278:     15(int) Constant 3
             279:             TypePointer Output 6(float)
             282:             TypePointer Function 52(fvec4)
             284:             TypeVector 56(int) 4
             285:             TypePointer Function 284(ivec4)
             287:             TypeVector 129(bool) 4
             288:             TypePointer Function 287(bvec4)
             290:             TypeVector 15(int) 4
             291:             TypePointer Function 290(ivec4)
             293:    223(ptr) Variable Private
             294:             TypePointer Private 56(int)
             295:    294(ptr) Variable Private
             296:    294(ptr) Variable Private
               4:           2 Function None 3
               5:             Label
             121:    120(ptr) Variable Function
             138:    120(ptr) Variable Function
             232:    231(ptr) Variable Function
             283:    282(ptr) Variable Function
             286:    285(ptr) Variable Function
             289:    288(ptr) Variable Function
             292:    291(ptr) Variable Function
              12:    7(fvec3) Load 11(vs_TEXCOORD0)
              13:    7(fvec3) Load 11(vs_TEXCOORD0)
              14:    6(float) Dot 12 13
              18:     17(ptr) AccessChain 9 16
                              Store 18 14
              19:     17(ptr) AccessChain 9 16
              20:    6(float) Load 19
              21:    6(float) ExtInst 1(GLSL.std.450) 32(InverseSqrt) 20
              22:     17(ptr) AccessChain 9 16
                              Store 22 21
              26:    7(fvec3) Load 9
              27:   23(fvec2) VectorShuffle 26 26 0 0
              28:    7(fvec3) Load 11(vs_TEXCOORD0)
              29:   23(fvec2) VectorShuffle 28 28 0 1
              30:   23(fvec2) FMul 27 29
                              Store 25 30
              33:     32(ptr) AccessChain 11(vs_TEXCOORD0) 31
              34:    6(float) Load 33
              35:     17(ptr) AccessChain 9 16
              36:    6(float) Load 35
              37:    6(float) FMul 34 36
              39:    6(float) FAdd 37 38
              40:     17(ptr) AccessChain 9 16
                              Store 40 39
              41:     17(ptr) AccessChain 9 16
              42:    6(float) Load 41
              44:    6(float) FMul 42 43
              45:     17(ptr) AccessChain 9 16
                              Store 45 44
              46:     17(ptr) AccessChain 9 16
              47:    6(float) Load 46
              48:    6(float) ExtInst 1(GLSL.std.450) 30(Log2) 47
              49:     17(ptr) AccessChain 9 16
                              Store 49 48
              50:     17(ptr) AccessChain 9 16
              51:    6(float) Load 50
              59:     58(ptr) AccessChain 55 57
              60:    6(float) Load 59
              61:    6(float) FMul 51 60
              62:     17(ptr) AccessChain 9 16
                              Store 62 61
              63:     17(ptr) AccessChain 9 16
              64:    6(float) Load 63
              65:    6(float) ExtInst 1(GLSL.std.450) 29(Exp2) 64
              66:     17(ptr) AccessChain 9 16
                              Store 66 65
              70:     69(ptr) AccessChain 55 68
              71:   52(fvec4) Load 70
              72:    7(fvec3) VectorShuffle 71 71 0 1 2
              73:    7(fvec3) FNegate 72
              75:     69(ptr) AccessChain 55 74
              76:   52(fvec4) Load 75
              77:    7(fvec3) VectorShuffle 76 76 0 1 2
              78:    7(fvec3) FAdd 73 77
                              Store 67 78
              79:    7(fvec3) Load 9
              80:    7(fvec3) VectorShuffle 79 79 0 0 0
              81:    7(fvec3) Load 67
              82:    7(fvec3) FMul 80 81
              83:     69(ptr) AccessChain 55 68
              84:   52(fvec4) Load 83
              85:    7(fvec3) VectorShuffle 84 84 0 1 2
              86:    7(fvec3) FAdd 82 85
                              Store 67 86
              87:   23(fvec2) Load 25
              89:     58(ptr) AccessChain 55 88 16
              90:    6(float) Load 89
              91:     58(ptr) AccessChain 55 88 31
              92:    6(float) Load 91
              93:   23(fvec2) CompositeConstruct 90 92
              94:   23(fvec2) FMul 87 93
              95:    7(fvec3) Load 9
              96:    7(fvec3) VectorShuffle 95 94 3 4 2
                              Store 9 96
              97:    7(fvec3) Load 9
              98:   23(fvec2) VectorShuffle 97 97 0 1
             100:     58(ptr) AccessChain 55 99
             101:    6(float) Load 100
             102:   23(fvec2) CompositeConstruct 101 101
             103:   23(fvec2) FMul 98 102
             104:    7(fvec3) Load 9
             105:    7(fvec3) VectorShuffle 104 103 3 4 2
                              Store 9 105
             107:    7(fvec3) Load 9
             108:   23(fvec2) VectorShuffle 107 107 0 1
             109:   23(fvec2) ExtInst 1(GLSL.std.450) 8(Floor) 108
                              Store 106 109
             110:    7(fvec3) Load 9
             111:   23(fvec2) VectorShuffle 110 110 0 1
             112:   23(fvec2) ExtInst 1(GLSL.std.450) 10(Fract) 111
             113:    7(fvec3) Load 9
             114:    7(fvec3) VectorShuffle 113 112 3 4 2
                              Store 9 114
             117:     17(ptr) AccessChain 115 16
                              Store 117 116
             119:     17(ptr) AccessChain 115 31
                              Store 119 118
                              Store 121 122
                              Branch 123
             123:             Label
                              LoopMerge 125 126 None
                              Branch 127
             127:             Label
             128:     56(int) Load 121
             130:   129(bool) SLessThanEqual 128 74
                              BranchConditional 130 124 125
             124:               Label
             133:     56(int)   Load 121
             134:    6(float)   ConvertSToF 133
             135:     17(ptr)   AccessChain 132 31
                                Store 135 134
             137:   23(fvec2)   Load 115
                                Store 136 137
                                Store 138 122
                                Branch 139
             139:               Label
                                LoopMerge 141 142 None
                                Branch 143
             143:               Label
             144:     56(int)   Load 138
             145:   129(bool)   SLessThanEqual 144 74
                                BranchConditional 145 140 141
             140:                 Label
             146:     56(int)     Load 138
             147:    6(float)     ConvertSToF 146
             148:     17(ptr)     AccessChain 132 16
                                  Store 148 147
             150:   23(fvec2)     Load 106
             151:   52(fvec4)     Load 132
             152:   23(fvec2)     VectorShuffle 151 151 0 1
             153:   23(fvec2)     FAdd 150 152
                                  Store 149 153
             155:   23(fvec2)     Load 149
             159:    6(float)     Dot 155 158
                                  Store 154 159
             160:   23(fvec2)     Load 149
             164:    6(float)     Dot 160 163
             165:     17(ptr)     AccessChain 149 16
                                  Store 165 164
             167:    6(float)     Load 154
             168:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 167
             169:     17(ptr)     AccessChain 166 31
                                  Store 169 168
             170:     17(ptr)     AccessChain 149 16
             171:    6(float)     Load 170
             172:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 171
             173:     17(ptr)     AccessChain 166 16
                                  Store 173 172
             174:   23(fvec2)     Load 166
             175:   23(fvec2)     ExtInst 1(GLSL.std.450) 10(Fract) 174
                                  Store 149 175
             176:   23(fvec2)     Load 149
             179:   23(fvec2)     FMul 176 178
                                  Store 149 179
             180:     17(ptr)     AccessChain 149 16
             181:    6(float)     Load 180
             182:    6(float)     ExtInst 1(GLSL.std.450) 13(Sin) 181
                                  Store 154 182
             183:    6(float)     Load 154
             184:    6(float)     FMul 183 43
             185:     17(ptr)     AccessChain 132 16
             186:    6(float)     Load 185
             187:    6(float)     FAdd 184 186
             188:     17(ptr)     AccessChain 166 16
                                  Store 188 187
             189:     17(ptr)     AccessChain 149 31
             190:    6(float)     Load 189
             191:    6(float)     ExtInst 1(GLSL.std.450) 14(Cos) 190
             192:     17(ptr)     AccessChain 132 16
                                  Store 192 191
             193:     17(ptr)     AccessChain 132 16
             194:    6(float)     Load 193
             195:    6(float)     FMul 194 43
             196:     17(ptr)     AccessChain 132 31
             197:    6(float)     Load 196
             198:    6(float)     FAdd 195 197
             199:     17(ptr)     AccessChain 166 31
                                  Store 199 198
             200:    7(fvec3)     Load 9
             201:   23(fvec2)     VectorShuffle 200 200 0 1
             202:   23(fvec2)     FNegate 201
             203:   23(fvec2)     Load 166
             204:   23(fvec2)     FAdd 202 203
             205:   52(fvec4)     Load 132
             206:   52(fvec4)     VectorShuffle 205 204 4 1 2 5
                                  Store 132 206
             207:   52(fvec4)     Load 132
             208:   23(fvec2)     VectorShuffle 207 207 0 3
             210:   23(fvec2)     FAdd 208 209
             211:   52(fvec4)     Load 132
             212:   52(fvec4)     VectorShuffle 211 210 4 1 2 5
                                  Store 132 212
             213:   52(fvec4)     Load 132
             214:   23(fvec2)     VectorShuffle 213 213 0 3
             215:   52(fvec4)     Load 132
             216:   23(fvec2)     VectorShuffle 215 215 0 3
             217:    6(float)     Dot 214 216
             218:     17(ptr)     AccessChain 132 16
                                  Store 218 217
             219:     17(ptr)     AccessChain 132 16
             220:    6(float)     Load 219
             221:    6(float)     ExtInst 1(GLSL.std.450) 31(Sqrt) 220
             222:     17(ptr)     AccessChain 132 16
                                  Store 222 221
             225:     17(ptr)     AccessChain 132 16
             226:    6(float)     Load 225
             227:     17(ptr)     AccessChain 136 31
             228:    6(float)     Load 227
             229:   129(bool)     FOrdLessThan 226 228
                                  Store 224 229
             230:   129(bool)     Load 224
                                  SelectionMerge 234 None
                                  BranchConditional 230 233 237
             233:                   Label
             235:   52(fvec4)       Load 132
             236:   23(fvec2)       VectorShuffle 235 235 0 0
                                    Store 232 236
                                    Branch 234
             237:                   Label
             238:   23(fvec2)       Load 136
                                    Store 232 238
                                    Branch 234
             234:                 Label
             239:   23(fvec2)     Load 232
                                  Store 136 239
                                  Branch 142
             142:                 Label
             240:     56(int)     Load 138
             241:     56(int)     IAdd 240 74
                                  Store 138 241
                                  Branch 139
             141:               Label
             242:   23(fvec2)   Load 136
                                Store 115 242
                                Branch 126
             126:               Label
             243:     56(int)   Load 121
             244:     56(int)   IAdd 243 74
                                Store 121 244
                                Branch 123
             125:             Label
             245:     17(ptr) AccessChain 115 16
             246:    6(float) Load 245
             247:    6(float) ExtInst 1(GLSL.std.450) 37(FMin) 246 38
             248:     17(ptr) AccessChain 9 16
                              Store 248 247
             249:     17(ptr) AccessChain 9 16
             250:    6(float) Load 249
             251:    6(float) FNegate 250
             252:    6(float) FAdd 251 38
             253:     17(ptr) AccessChain 9 16
                              Store 253 252
             254:     17(ptr) AccessChain 9 16
             255:    6(float) Load 254
             256:    6(float) ExtInst 1(GLSL.std.450) 30(Log2) 255
             257:     17(ptr) AccessChain 9 16
                              Store 257 256
             258:     17(ptr) AccessChain 9 16
             259:    6(float) Load 258
             261:     58(ptr) AccessChain 55 260
             262:    6(float) Load 261
             263:    6(float) FMul 259 262
             264:     17(ptr) AccessChain 9 16
                              Store 264 263
             265:     17(ptr) AccessChain 9 16
             266:    6(float) Load 265
             267:    6(float) ExtInst 1(GLSL.std.450) 29(Exp2) 266
             268:     17(ptr) AccessChain 9 16
                              Store 268 267
             269:    7(fvec3) Load 9
             270:    7(fvec3) VectorShuffle 269 269 0 0 0
             271:    7(fvec3) Load 67
             272:    7(fvec3) FAdd 270 271
                              Store 9 272
             275:    7(fvec3) Load 9
             276:   52(fvec4) Load 274
             277:   52(fvec4) VectorShuffle 276 275 4 5 6 3
                              Store 274 277
             280:    279(ptr) AccessChain 274 278
                              Store 280 38
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



 }
 Pass {
  Name "ShadowCaster"
  Tags { "LIGHTMODE"="SHADOWCASTER" "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"
Uses vertex data channel "Normal"

Constant Buffer "UnityPerDraw" (400 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_ObjectToWorld at 0
  Matrix4x4 unity_WorldToObject at 64
}
Constant Buffer "VGlobals2799329404" (92 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 0
  Vector3 _LightDirection at 80
  Vector4 _ShadowBias at 64
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 209

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 12 83 177
                              Decorate 12 Location 0
                              Decorate 17 ArrayStride 16
                              Decorate 18 ArrayStride 16
                              Decorate 20 ArrayStride 16
                              MemberDecorate 21 0 Offset 0
                              MemberDecorate 21 1 Offset 64
                              MemberDecorate 21 2 Offset 128
                              MemberDecorate 21 3 RelaxedPrecision
                              MemberDecorate 21 3 Offset 144
                              MemberDecorate 21 4 RelaxedPrecision
                              MemberDecorate 21 4 Offset 160
                              MemberDecorate 21 5 RelaxedPrecision
                              MemberDecorate 21 5 Offset 176
                              MemberDecorate 21 6 Offset 208
                              MemberDecorate 21 7 RelaxedPrecision
                              MemberDecorate 21 7 Offset 224
                              MemberDecorate 21 8 Offset 240
                              MemberDecorate 21 9 Offset 256
                              MemberDecorate 21 10 Offset 272
                              MemberDecorate 21 11 RelaxedPrecision
                              MemberDecorate 21 11 Offset 288
                              MemberDecorate 21 12 RelaxedPrecision
                              MemberDecorate 21 12 Offset 304
                              MemberDecorate 21 13 RelaxedPrecision
                              MemberDecorate 21 13 Offset 320
                              MemberDecorate 21 14 RelaxedPrecision
                              MemberDecorate 21 14 Offset 336
                              MemberDecorate 21 15 RelaxedPrecision
                              MemberDecorate 21 15 Offset 352
                              MemberDecorate 21 16 RelaxedPrecision
                              MemberDecorate 21 16 Offset 368
                              MemberDecorate 21 17 RelaxedPrecision
                              MemberDecorate 21 17 Offset 384
                              Decorate 21 Block
                              Decorate 23 DescriptorSet 1
                              Decorate 23 Binding 1
                              Decorate 66 ArrayStride 16
                              MemberDecorate 67 0 Offset 0
                              MemberDecorate 67 1 Offset 64
                              MemberDecorate 67 2 Offset 80
                              Decorate 67 Block
                              Decorate 69 DescriptorSet 1
                              Decorate 69 Binding 0
                              Decorate 83 Location 1
                              Decorate 114 RelaxedPrecision
                              Decorate 119 RelaxedPrecision
                              MemberDecorate 175 0 BuiltIn Position
                              MemberDecorate 175 1 BuiltIn PointSize
                              MemberDecorate 175 2 BuiltIn ClipDistance
                              Decorate 175 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeVector 6(float) 3
              11:             TypePointer Input 10(fvec3)
              12:     11(ptr) Variable Input
              15:             TypeInt 32 0
              16:     15(int) Constant 4
              17:             TypeArray 7(fvec4) 16
              18:             TypeArray 7(fvec4) 16
              19:     15(int) Constant 2
              20:             TypeArray 7(fvec4) 19
              21:             TypeStruct 17 18 7(fvec4) 7(fvec4) 7(fvec4) 20 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4)
              22:             TypePointer Uniform 21(struct)
              23:     22(ptr) Variable Uniform
              24:             TypeInt 32 1
              25:     24(int) Constant 0
              26:     24(int) Constant 1
              27:             TypePointer Uniform 7(fvec4)
              45:     24(int) Constant 2
              59:     24(int) Constant 3
              66:             TypeArray 7(fvec4) 16
              67:             TypeStruct 66 7(fvec4) 10(fvec3)
              68:             TypePointer Uniform 67(struct)
              69:     68(ptr) Variable Uniform
              70:             TypePointer Uniform 10(fvec3)
              82:      8(ptr) Variable Private
              83:     11(ptr) Variable Input
              89:     15(int) Constant 0
              90:             TypePointer Private 6(float)
              97:     15(int) Constant 1
             105:     90(ptr) Variable Private
             112:    6(float) Constant 8388608
             114:     90(ptr) Variable Private
             130:    6(float) Constant 0
             131:    6(float) Constant 1065353216
             137:             TypePointer Uniform 6(float)
             174:             TypeArray 6(float) 97
             175:             TypeStruct 7(fvec4) 6(float) 174
             176:             TypePointer Output 175(struct)
             177:    176(ptr) Variable Output
             178:     15(int) Constant 3
             184:             TypePointer Output 6(float)
             188:             TypePointer Output 7(fvec4)
             197:             TypePointer Function 7(fvec4)
             199:             TypeVector 24(int) 4
             200:             TypePointer Function 199(ivec4)
             202:             TypeBool
             203:             TypeVector 202(bool) 4
             204:             TypePointer Function 203(bvec4)
             206:             TypeVector 15(int) 4
             207:             TypePointer Function 206(ivec4)
               4:           2 Function None 3
               5:             Label
             198:    197(ptr) Variable Function
             201:    200(ptr) Variable Function
             205:    204(ptr) Variable Function
             208:    207(ptr) Variable Function
              13:   10(fvec3) Load 12
              14:   10(fvec3) VectorShuffle 13 13 1 1 1
              28:     27(ptr) AccessChain 23 25 26
              29:    7(fvec4) Load 28
              30:   10(fvec3) VectorShuffle 29 29 0 1 2
              31:   10(fvec3) FMul 14 30
              32:    7(fvec4) Load 9
              33:    7(fvec4) VectorShuffle 32 31 4 5 6 3
                              Store 9 33
              34:     27(ptr) AccessChain 23 25 25
              35:    7(fvec4) Load 34
              36:   10(fvec3) VectorShuffle 35 35 0 1 2
              37:   10(fvec3) Load 12
              38:   10(fvec3) VectorShuffle 37 37 0 0 0
              39:   10(fvec3) FMul 36 38
              40:    7(fvec4) Load 9
              41:   10(fvec3) VectorShuffle 40 40 0 1 2
              42:   10(fvec3) FAdd 39 41
              43:    7(fvec4) Load 9
              44:    7(fvec4) VectorShuffle 43 42 4 5 6 3
                              Store 9 44
              46:     27(ptr) AccessChain 23 25 45
              47:    7(fvec4) Load 46
              48:   10(fvec3) VectorShuffle 47 47 0 1 2
              49:   10(fvec3) Load 12
              50:   10(fvec3) VectorShuffle 49 49 2 2 2
              51:   10(fvec3) FMul 48 50
              52:    7(fvec4) Load 9
              53:   10(fvec3) VectorShuffle 52 52 0 1 2
              54:   10(fvec3) FAdd 51 53
              55:    7(fvec4) Load 9
              56:    7(fvec4) VectorShuffle 55 54 4 5 6 3
                              Store 9 56
              57:    7(fvec4) Load 9
              58:   10(fvec3) VectorShuffle 57 57 0 1 2
              60:     27(ptr) AccessChain 23 25 59
              61:    7(fvec4) Load 60
              62:   10(fvec3) VectorShuffle 61 61 0 1 2
              63:   10(fvec3) FAdd 58 62
              64:    7(fvec4) Load 9
              65:    7(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 9 65
              71:     70(ptr) AccessChain 69 45
              72:   10(fvec3) Load 71
              73:     27(ptr) AccessChain 69 26
              74:    7(fvec4) Load 73
              75:   10(fvec3) VectorShuffle 74 74 0 0 0
              76:   10(fvec3) FMul 72 75
              77:    7(fvec4) Load 9
              78:   10(fvec3) VectorShuffle 77 77 0 1 2
              79:   10(fvec3) FAdd 76 78
              80:    7(fvec4) Load 9
              81:    7(fvec4) VectorShuffle 80 79 4 5 6 3
                              Store 9 81
              84:   10(fvec3) Load 83
              85:     27(ptr) AccessChain 23 26 25
              86:    7(fvec4) Load 85
              87:   10(fvec3) VectorShuffle 86 86 0 1 2
              88:    6(float) Dot 84 87
              91:     90(ptr) AccessChain 82 89
                              Store 91 88
              92:   10(fvec3) Load 83
              93:     27(ptr) AccessChain 23 26 26
              94:    7(fvec4) Load 93
              95:   10(fvec3) VectorShuffle 94 94 0 1 2
              96:    6(float) Dot 92 95
              98:     90(ptr) AccessChain 82 97
                              Store 98 96
              99:   10(fvec3) Load 83
             100:     27(ptr) AccessChain 23 26 45
             101:    7(fvec4) Load 100
             102:   10(fvec3) VectorShuffle 101 101 0 1 2
             103:    6(float) Dot 99 102
             104:     90(ptr) AccessChain 82 19
                              Store 104 103
             106:    7(fvec4) Load 82
             107:   10(fvec3) VectorShuffle 106 106 0 1 2
             108:    7(fvec4) Load 82
             109:   10(fvec3) VectorShuffle 108 108 0 1 2
             110:    6(float) Dot 107 109
                              Store 105 110
             111:    6(float) Load 105
             113:    6(float) ExtInst 1(GLSL.std.450) 40(FMax) 111 112
                              Store 105 113
             115:    6(float) Load 105
             116:    6(float) ExtInst 1(GLSL.std.450) 32(InverseSqrt) 115
                              Store 114 116
             117:    7(fvec4) Load 82
             118:   10(fvec3) VectorShuffle 117 117 0 1 2
             119:    6(float) Load 114
             120:   10(fvec3) CompositeConstruct 119 119 119
             121:   10(fvec3) FMul 118 120
             122:    7(fvec4) Load 82
             123:    7(fvec4) VectorShuffle 122 121 4 5 6 3
                              Store 82 123
             124:     70(ptr) AccessChain 69 45
             125:   10(fvec3) Load 124
             126:    7(fvec4) Load 82
             127:   10(fvec3) VectorShuffle 126 126 0 1 2
             128:    6(float) Dot 125 127
                              Store 105 128
             129:    6(float) Load 105
             132:    6(float) ExtInst 1(GLSL.std.450) 43(FClamp) 129 130 131
                              Store 105 132
             133:    6(float) Load 105
             134:    6(float) FNegate 133
             135:    6(float) FAdd 134 131
                              Store 105 135
             136:    6(float) Load 105
             138:    137(ptr) AccessChain 69 26 97
             139:    6(float) Load 138
             140:    6(float) FMul 136 139
                              Store 105 140
             141:    7(fvec4) Load 82
             142:   10(fvec3) VectorShuffle 141 141 0 1 2
             143:    6(float) Load 105
             144:   10(fvec3) CompositeConstruct 143 143 143
             145:   10(fvec3) FMul 142 144
             146:    7(fvec4) Load 9
             147:   10(fvec3) VectorShuffle 146 146 0 1 2
             148:   10(fvec3) FAdd 145 147
             149:    7(fvec4) Load 9
             150:    7(fvec4) VectorShuffle 149 148 4 5 6 3
                              Store 9 150
             151:    7(fvec4) Load 9
             152:    7(fvec4) VectorShuffle 151 151 1 1 1 1
             153:     27(ptr) AccessChain 69 25 26
             154:    7(fvec4) Load 153
             155:    7(fvec4) FMul 152 154
                              Store 82 155
             156:     27(ptr) AccessChain 69 25 25
             157:    7(fvec4) Load 156
             158:    7(fvec4) Load 9
             159:    7(fvec4) VectorShuffle 158 158 0 0 0 0
             160:    7(fvec4) FMul 157 159
             161:    7(fvec4) Load 82
             162:    7(fvec4) FAdd 160 161
                              Store 82 162
             163:     27(ptr) AccessChain 69 25 45
             164:    7(fvec4) Load 163
             165:    7(fvec4) Load 9
             166:    7(fvec4) VectorShuffle 165 165 2 2 2 2
             167:    7(fvec4) FMul 164 166
             168:    7(fvec4) Load 82
             169:    7(fvec4) FAdd 167 168
                              Store 9 169
             170:    7(fvec4) Load 9
             171:     27(ptr) AccessChain 69 25 59
             172:    7(fvec4) Load 171
             173:    7(fvec4) FAdd 170 172
                              Store 9 173
             179:     90(ptr) AccessChain 9 178
             180:    6(float) Load 179
             181:     90(ptr) AccessChain 9 19
             182:    6(float) Load 181
             183:    6(float) ExtInst 1(GLSL.std.450) 37(FMin) 180 182
             185:    184(ptr) AccessChain 177 25 19
                              Store 185 183
             186:    7(fvec4) Load 9
             187:   10(fvec3) VectorShuffle 186 186 0 1 3
             189:    188(ptr) AccessChain 177 25
             190:    7(fvec4) Load 189
             191:    7(fvec4) VectorShuffle 190 187 4 5 2 6
                              Store 189 191
             192:    184(ptr) AccessChain 177 25 97
             193:    6(float) Load 192
             194:    6(float) FNegate 193
             195:    184(ptr) AccessChain 177 25 97
                              Store 195 194
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 27

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 9
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:    6(float) Constant 0
              11:    7(fvec4) ConstantComposite 10 10 10 10
              13:             TypePointer Function 7(fvec4)
              15:             TypeInt 32 1
              16:             TypeVector 15(int) 4
              17:             TypePointer Function 16(ivec4)
              19:             TypeBool
              20:             TypeVector 19(bool) 4
              21:             TypePointer Function 20(bvec4)
              23:             TypeInt 32 0
              24:             TypeVector 23(int) 4
              25:             TypePointer Function 24(ivec4)
               4:           2 Function None 3
               5:             Label
              14:     13(ptr) Variable Function
              18:     17(ptr) Variable Function
              22:     21(ptr) Variable Function
              26:     25(ptr) Variable Function
                              Store 9 11
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



 }
 Pass {
  Name "DepthOnly"
  Tags { "LIGHTMODE"="DepthOnly" "QUEUE"="Transparent" "RenderType"="Transparent" "RenderPipeline"="UniversalPipeline" "UniversalMaterialType"="Unlit" }
  Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
  ColorMask 0
  //////////////////////////////////
  //                              //
  //      Compiled programs       //
  //                              //
  //////////////////////////////////
//////////////////////////////////////////////////////
Global Keywords: <none>
Local Keywords: <none>
-- Hardware tier variant: Tier 1
-- Vertex shader for "vulkan":
Uses vertex data channel "Vertex"

Constant Buffer "UnityPerDraw" (400 bytes) on set: 1, binding: 1, used in: Vertex  {
  Matrix4x4 unity_ObjectToWorld at 0
}
Constant Buffer "VGlobals2834298465" (64 bytes) on set: 1, binding: 0, used in: Vertex  {
  Matrix4x4 unity_MatrixVP at 0
}

Shader Disassembly:
Disassembly for Vertex:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 119

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Vertex 4  "main" 12 94
                              Decorate 12 Location 0
                              Decorate 17 ArrayStride 16
                              Decorate 18 ArrayStride 16
                              Decorate 20 ArrayStride 16
                              MemberDecorate 21 0 Offset 0
                              MemberDecorate 21 1 Offset 64
                              MemberDecorate 21 2 Offset 128
                              MemberDecorate 21 3 RelaxedPrecision
                              MemberDecorate 21 3 Offset 144
                              MemberDecorate 21 4 RelaxedPrecision
                              MemberDecorate 21 4 Offset 160
                              MemberDecorate 21 5 RelaxedPrecision
                              MemberDecorate 21 5 Offset 176
                              MemberDecorate 21 6 Offset 208
                              MemberDecorate 21 7 RelaxedPrecision
                              MemberDecorate 21 7 Offset 224
                              MemberDecorate 21 8 Offset 240
                              MemberDecorate 21 9 Offset 256
                              MemberDecorate 21 10 Offset 272
                              MemberDecorate 21 11 RelaxedPrecision
                              MemberDecorate 21 11 Offset 288
                              MemberDecorate 21 12 RelaxedPrecision
                              MemberDecorate 21 12 Offset 304
                              MemberDecorate 21 13 RelaxedPrecision
                              MemberDecorate 21 13 Offset 320
                              MemberDecorate 21 14 RelaxedPrecision
                              MemberDecorate 21 14 Offset 336
                              MemberDecorate 21 15 RelaxedPrecision
                              MemberDecorate 21 15 Offset 352
                              MemberDecorate 21 16 RelaxedPrecision
                              MemberDecorate 21 16 Offset 368
                              MemberDecorate 21 17 RelaxedPrecision
                              MemberDecorate 21 17 Offset 384
                              Decorate 21 Block
                              Decorate 23 DescriptorSet 1
                              Decorate 23 Binding 1
                              Decorate 69 ArrayStride 16
                              MemberDecorate 70 0 Offset 0
                              Decorate 70 Block
                              Decorate 72 DescriptorSet 1
                              Decorate 72 Binding 0
                              MemberDecorate 92 0 BuiltIn Position
                              MemberDecorate 92 1 BuiltIn PointSize
                              MemberDecorate 92 2 BuiltIn ClipDistance
                              Decorate 92 Block
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Private 7(fvec4)
               9:      8(ptr) Variable Private
              10:             TypeVector 6(float) 3
              11:             TypePointer Input 10(fvec3)
              12:     11(ptr) Variable Input
              15:             TypeInt 32 0
              16:     15(int) Constant 4
              17:             TypeArray 7(fvec4) 16
              18:             TypeArray 7(fvec4) 16
              19:     15(int) Constant 2
              20:             TypeArray 7(fvec4) 19
              21:             TypeStruct 17 18 7(fvec4) 7(fvec4) 7(fvec4) 20 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4) 7(fvec4)
              22:             TypePointer Uniform 21(struct)
              23:     22(ptr) Variable Uniform
              24:             TypeInt 32 1
              25:     24(int) Constant 0
              26:     24(int) Constant 1
              27:             TypePointer Uniform 7(fvec4)
              45:     24(int) Constant 2
              59:     24(int) Constant 3
              66:      8(ptr) Variable Private
              69:             TypeArray 7(fvec4) 16
              70:             TypeStruct 69
              71:             TypePointer Uniform 70(struct)
              72:     71(ptr) Variable Uniform
              90:     15(int) Constant 1
              91:             TypeArray 6(float) 90
              92:             TypeStruct 7(fvec4) 6(float) 91
              93:             TypePointer Output 92(struct)
              94:     93(ptr) Variable Output
              99:             TypePointer Output 7(fvec4)
             101:             TypePointer Output 6(float)
             107:             TypePointer Function 7(fvec4)
             109:             TypeVector 24(int) 4
             110:             TypePointer Function 109(ivec4)
             112:             TypeBool
             113:             TypeVector 112(bool) 4
             114:             TypePointer Function 113(bvec4)
             116:             TypeVector 15(int) 4
             117:             TypePointer Function 116(ivec4)
               4:           2 Function None 3
               5:             Label
             108:    107(ptr) Variable Function
             111:    110(ptr) Variable Function
             115:    114(ptr) Variable Function
             118:    117(ptr) Variable Function
              13:   10(fvec3) Load 12
              14:   10(fvec3) VectorShuffle 13 13 1 1 1
              28:     27(ptr) AccessChain 23 25 26
              29:    7(fvec4) Load 28
              30:   10(fvec3) VectorShuffle 29 29 0 1 2
              31:   10(fvec3) FMul 14 30
              32:    7(fvec4) Load 9
              33:    7(fvec4) VectorShuffle 32 31 4 5 6 3
                              Store 9 33
              34:     27(ptr) AccessChain 23 25 25
              35:    7(fvec4) Load 34
              36:   10(fvec3) VectorShuffle 35 35 0 1 2
              37:   10(fvec3) Load 12
              38:   10(fvec3) VectorShuffle 37 37 0 0 0
              39:   10(fvec3) FMul 36 38
              40:    7(fvec4) Load 9
              41:   10(fvec3) VectorShuffle 40 40 0 1 2
              42:   10(fvec3) FAdd 39 41
              43:    7(fvec4) Load 9
              44:    7(fvec4) VectorShuffle 43 42 4 5 6 3
                              Store 9 44
              46:     27(ptr) AccessChain 23 25 45
              47:    7(fvec4) Load 46
              48:   10(fvec3) VectorShuffle 47 47 0 1 2
              49:   10(fvec3) Load 12
              50:   10(fvec3) VectorShuffle 49 49 2 2 2
              51:   10(fvec3) FMul 48 50
              52:    7(fvec4) Load 9
              53:   10(fvec3) VectorShuffle 52 52 0 1 2
              54:   10(fvec3) FAdd 51 53
              55:    7(fvec4) Load 9
              56:    7(fvec4) VectorShuffle 55 54 4 5 6 3
                              Store 9 56
              57:    7(fvec4) Load 9
              58:   10(fvec3) VectorShuffle 57 57 0 1 2
              60:     27(ptr) AccessChain 23 25 59
              61:    7(fvec4) Load 60
              62:   10(fvec3) VectorShuffle 61 61 0 1 2
              63:   10(fvec3) FAdd 58 62
              64:    7(fvec4) Load 9
              65:    7(fvec4) VectorShuffle 64 63 4 5 6 3
                              Store 9 65
              67:    7(fvec4) Load 9
              68:    7(fvec4) VectorShuffle 67 67 1 1 1 1
              73:     27(ptr) AccessChain 72 25 26
              74:    7(fvec4) Load 73
              75:    7(fvec4) FMul 68 74
                              Store 66 75
              76:     27(ptr) AccessChain 72 25 25
              77:    7(fvec4) Load 76
              78:    7(fvec4) Load 9
              79:    7(fvec4) VectorShuffle 78 78 0 0 0 0
              80:    7(fvec4) FMul 77 79
              81:    7(fvec4) Load 66
              82:    7(fvec4) FAdd 80 81
                              Store 66 82
              83:     27(ptr) AccessChain 72 25 45
              84:    7(fvec4) Load 83
              85:    7(fvec4) Load 9
              86:    7(fvec4) VectorShuffle 85 85 2 2 2 2
              87:    7(fvec4) FMul 84 86
              88:    7(fvec4) Load 66
              89:    7(fvec4) FAdd 87 88
                              Store 9 89
              95:    7(fvec4) Load 9
              96:     27(ptr) AccessChain 72 25 59
              97:    7(fvec4) Load 96
              98:    7(fvec4) FAdd 95 97
             100:     99(ptr) AccessChain 94 25
                              Store 100 98
             102:    101(ptr) AccessChain 94 25 90
             103:    6(float) Load 102
             104:    6(float) FNegate 103
             105:    101(ptr) AccessChain 94 25 90
                              Store 105 104
                              Return
                              FunctionEnd

Disassembly for Fragment:
// Module Version 10000
// Generated by (magic number): 80006
// Id's are bound by 27

                              Capability Shader
               1:             ExtInstImport  "GLSL.std.450"
                              MemoryModel Logical GLSL450
                              EntryPoint Fragment 4  "main" 9
                              ExecutionMode 4 OriginUpperLeft
                              Decorate 9 RelaxedPrecision
                              Decorate 9 Location 0
               2:             TypeVoid
               3:             TypeFunction 2
               6:             TypeFloat 32
               7:             TypeVector 6(float) 4
               8:             TypePointer Output 7(fvec4)
               9:      8(ptr) Variable Output
              10:    6(float) Constant 0
              11:    7(fvec4) ConstantComposite 10 10 10 10
              13:             TypePointer Function 7(fvec4)
              15:             TypeInt 32 1
              16:             TypeVector 15(int) 4
              17:             TypePointer Function 16(ivec4)
              19:             TypeBool
              20:             TypeVector 19(bool) 4
              21:             TypePointer Function 20(bvec4)
              23:             TypeInt 32 0
              24:             TypeVector 23(int) 4
              25:             TypePointer Function 24(ivec4)
               4:           2 Function None 3
               5:             Label
              14:     13(ptr) Variable Function
              18:     17(ptr) Variable Function
              22:     21(ptr) Variable Function
              26:     25(ptr) Variable Function
                              Store 9 11
                              Return
                              FunctionEnd

Disassembly for Hull:
Not present.



 }
}
Fallback "Hidden/Shader Graph/FallbackError"
}