// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:1,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33131,y:32898,varname:node_2865,prsc:2|diff-6343-OUT,spec-3226-OUT,gloss-9869-OUT,normal-620-OUT,emission-2706-OUT,lwrap-124-OUT,difocc-9800-R,spcocc-9800-R;n:type:ShaderForge.SFN_Multiply,id:6343,x:32731,y:32671,varname:node_6343,prsc:2|A-7736-RGB,B-6665-RGB;n:type:ShaderForge.SFN_Color,id:6665,x:32407,y:32639,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:32407,y:32393,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a4960e7988aa71d4692943c7aca97a32,ntxv:0,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_Slider,id:358,x:31777,y:32528,ptovrint:False,ptlb:Metalness,ptin:_Metalness,varname:_Metalness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:31703,y:32670,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:3137,x:30516,y:33819,ptovrint:False,ptlb:Clip,ptin:_Clip,varname:_Clip,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_Tex2d,id:1461,x:30808,y:33396,ptovrint:False,ptlb:Speckle,ptin:_Speckle,varname:_Speckle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-7506-UVOUT;n:type:ShaderForge.SFN_ScreenPos,id:7506,x:30208,y:33364,varname:node_7506,prsc:2,sctp:1;n:type:ShaderForge.SFN_Lerp,id:7282,x:31462,y:33620,varname:node_7282,prsc:2|A-9348-OUT,B-5965-OUT,T-3137-R;n:type:ShaderForge.SFN_Slider,id:5396,x:29980,y:33755,ptovrint:True,ptlb:SpecklePower,ptin:_SpecklePower,cmnt:Brightness of sand emission For bloom shaders raise this value for nice effect,varname:_SpecklePower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5,max:50;n:type:ShaderForge.SFN_Vector1,id:5965,x:31016,y:33620,varname:node_5965,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9348,x:30845,y:33620,varname:node_9348,prsc:2|A-1461-R,B-5396-OUT;n:type:ShaderForge.SFN_Dot,id:3737,x:29244,y:33929,varname:node_3737,prsc:2,dt:1|A-9083-OUT,B-8526-OUT;n:type:ShaderForge.SFN_Multiply,id:2706,x:32462,y:33091,varname:node_2706,prsc:2|A-7282-OUT,B-1030-OUT;n:type:ShaderForge.SFN_Tex2d,id:9800,x:31972,y:33495,ptovrint:False,ptlb:AO,ptin:_AO,varname:_AO,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c6403fa5597003f489710f26e5551a03,ntxv:0,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_ViewVector,id:8031,x:27548,y:31488,varname:node_8031,prsc:2;n:type:ShaderForge.SFN_Transform,id:7058,x:27843,y:31524,varname:node_7058,prsc:2,tffrom:0,tfto:2|IN-8031-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3073,x:27718,y:31923,ptovrint:False,ptlb:Height Map,ptin:_HeightMap,varname:_HeightMap,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:66f1f088b41fb8e4795c7e32aa15b5da,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:6431,x:27764,y:31753,ptovrint:False,ptlb:Relief Depth,ptin:_ReliefDepth,varname:_ReliefDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_ValueProperty,id:953,x:29088,y:32096,ptovrint:False,ptlb:Relief Quality,ptin:_ReliefQuality,varname:_ReliefQuality,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:16;n:type:ShaderForge.SFN_TexCoord,id:79,x:29116,y:32172,varname:node_79,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:1475,x:28077,y:32595,ptovrint:False,ptlb:UV Tiling,ptin:_UVTiling,varname:_UVTiling,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Code,id:9977,x:28445,y:31696,varname:node_9977,prsc:2,code:IAB2AGkAZQB3AEQAaQByACAAPQAgAG4AbwByAG0AYQBsAGkAegBlACgAdgBpAGUAdwBEAGkAcgApADsACgAKACAAZgBsAG8AYQB0ADMAIABwACAAPQAgAGYAbABvAGEAdAAzACgAVQBWACoAVABpAGwAaQBuAGcALAAgADAAKQA7AAoAIABmAGwAbwBhAHQAMwAgAG4AZQB3AFYAaQBlAHcAIAA9ACAAbgBvAHIAbQBhAGwAaQB6AGUAKAB2AGkAZQB3AEQAaQByACAAKgAgAC0AMQApADsACgAgAG4AZQB3AFYAaQBlAHcALgB6ACAAIAAgACAAIAAgAD0AIABhAGIAcwAoAG4AZQB3AFYAaQBlAHcALgB6ACkAOwAKAAoAIABmAGwAbwBhAHQAIABkAGUAcAB0AGgAQgBpAGEAcwAgAD0AIAAxAC4AMAAgAC0AIABuAGUAdwBWAGkAZQB3AC4AegA7AAoAIABkAGUAcAB0AGgAQgBpAGEAcwAgACoAPQAgAGQAZQBwAHQAaABCAGkAYQBzADsACgAgAGQAZQBwAHQAaABCAGkAYQBzACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKACAAZABlAHAAdABoAEIAaQBhAHMAIAA9ACAAMQAuADAAIAAtACAAZABlAHAAdABoAEIAaQBhAHMAIAAqACAAZABlAHAAdABoAEIAaQBhAHMAOwAKAAoAIABuAGUAdwBWAGkAZQB3AC4AeAB5ACAAKgA9ACAAZABlAHAAdABoAEIAaQBhAHMAOwAKACAAbgBlAHcAVgBpAGUAdwAuAHgAeQAgACoAPQAgAEQAZQBwAHQAaAA7AAoACgAgAGMAbwBuAHMAdAAgAGkAbgB0ACAAYgBpAG4AYQByAHkAUwBlAGEAcgBjAGgAUwB0AGUAcABzACAAPQAgADEAMAA7AAoACgAgAG4AZQB3AFYAaQBlAHcAIAAvAD0AIABuAGUAdwBWAGkAZQB3AC4AegAgACoAIABsAGkAbgBlAGEAcgBTAGUAYQByAGMAaABTAHQAZQBwAHMAOwAKAAoAIAAvAC8AcAByAG8AZAB1AGMAZQBzACAAZABlAHAAdABoAAoAIABpAG4AdAAgAGkAOwAKACAAZgBvAHIAKAAgAGkAPQAwADsAIABpADwAbABpAG4AZQBhAHIAUwBlAGEAcgBjAGgAUwB0AGUAcABzADsAIABpACsAKwApAHsACgAgACAAZgBsAG8AYQB0ACAAdABlAHgAIAA9ACAAdABlAHgAMgBEACgASABlAGkAZwBoAHQATQBhAHAALAAgAHAALgB4AHkAKQAuAHIAOwAKACAAIABpAGYAIAAoAHAALgB6ADwAdABlAHgAKQAgAHAAKwA9AG4AZQB3AFYAaQBlAHcAOwAKACAAfQAKAAoACgAgAGYAbwByACgAIABpAD0AMAA7ACAAaQA8AGIAaQBuAGEAcgB5AFMAZQBhAHIAYwBoAFMAdABlAHAAcwA7ACAAaQArACsAIAApAHsACgAgACAAbgBlAHcAVgBpAGUAdwAgACoAPQAgADAALgA1ADsACgAgACAAZgBsAG8AYQB0ACAAdABlAHgAIAA9ACAAdABlAHgAMgBEACgASABlAGkAZwBoAHQATQBhAHAALAAgAHAALgB4AHkAKQAuAHIAOwAKACAAIABpAGYAKABwAC4AegAgADwAIAB0AGUAeAApACAAcAArAD0AIABuAGUAdwBWAGkAZQB3ADsACgAgACAAZQBsAHMAZQAgAHAAIAAtAD0AIABuAGUAdwBWAGkAZQB3ADsACgAgAH0ACgAKACAALwAvAHAALgB6ACAAcgBlAGEAcwBzAGkAZwBuAGUAZAAgAHQAbwAgAGEAbABwAGgAYQAKACAAcAAuAHoAIAA9ACAAMQA7AAoAIABpAGYAKABwAC4AeAAgADwAIAAwACkAcAAuAHoAIAA9ACAAMAA7AAoAIABpAGYAKABwAC4AeQAgADwAIAAwACkAcAAuAHoAIAA9ACAAMAA7AAoAIABpAGYAKABwAC4AeAAgAD4AIABUAGkAbABpAG4AZwApAHAALgB6AD0AMAA7AAoAIABpAGYAKABwAC4AeQAgAD4AIABUAGkAbABpAG4AZwApAHAALgB6AD0AMAA7AAoAIAByAGUAdAB1AHIAbgAgAHAAOwA=,output:2,fname:Relief,width:504,height:587,input:2,input:12,input:0,input:0,input:1,input:0,input_1_label:viewDir,input_2_label:HeightMap,input_3_label:Depth,input_4_label:linearSearchSteps,input_5_label:UV,input_6_label:Tiling|A-7058-XYZ,B-3073-TEX,C-6431-OUT,D-953-OUT,E-79-UVOUT,F-1475-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1351,x:29070,y:32548,varname:node_1351,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-9977-OUT;n:type:ShaderForge.SFN_Append,id:673,x:29070,y:32762,varname:node_673,prsc:2|A-1351-R,B-1351-G;n:type:ShaderForge.SFN_Tex2d,id:7992,x:31194,y:32680,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:_NormalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:54eaad46dc2937f4aa44914713716396,ntxv:3,isnm:True|UVIN-673-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6588,x:31417,y:32571,varname:node_6588,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7992-RGB;n:type:ShaderForge.SFN_Slider,id:9420,x:30545,y:33124,ptovrint:False,ptlb:Normal Amount,ptin:_NormalAmount,varname:_NormalAmount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:557,x:31417,y:32742,varname:node_557,prsc:2|A-6588-OUT,B-9420-OUT;n:type:ShaderForge.SFN_Vector1,id:4091,x:30844,y:33008,varname:node_4091,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:620,x:31417,y:32890,varname:node_620,prsc:2|A-557-OUT,B-4091-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:283,x:28958,y:34311,varname:node_283,prsc:2;n:type:ShaderForge.SFN_ViewReflectionVector,id:9083,x:28945,y:33899,varname:node_9083,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1030,x:29685,y:34039,varname:node_1030,prsc:2|A-3737-OUT,B-9073-OUT,C-283-OUT,D-4655-RGB;n:type:ShaderForge.SFN_Slider,id:6038,x:28947,y:34491,ptovrint:False,ptlb:SpeckleSpread,ptin:_SpeckleSpread,cmnt:Basically how much spread from the directional light of the sparkling effect.,varname:_SpeckleSpread,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:50,max:50;n:type:ShaderForge.SFN_Power,id:9073,x:29419,y:34167,varname:node_9073,prsc:2|VAL-3737-OUT,EXP-6038-OUT;n:type:ShaderForge.SFN_LightVector,id:8526,x:28945,y:34046,varname:node_8526,prsc:2;n:type:ShaderForge.SFN_LightColor,id:4655,x:28950,y:34187,varname:node_4655,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9200,x:31712,y:33240,ptovrint:False,ptlb:GlossMap,ptin:_GlossMap,varname:_GlossMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3226,x:32143,y:32584,ptovrint:False,ptlb:MetalSwitch,ptin:_MetalSwitch,varname:_MetalSwitch,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-358-OUT,B-9229-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:9869,x:32158,y:32788,ptovrint:False,ptlb:Rough/Gloss,ptin:_RoughGloss,varname:_RoughGloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1813-OUT,B-9200-R;n:type:ShaderForge.SFN_Vector1,id:6870,x:32227,y:33039,varname:node_6870,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:9229,x:31742,y:32957,ptovrint:False,ptlb:MetalMap,ptin:_MetalMap,varname:_MetalMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_Tex2d,id:7149,x:31997,y:33882,ptovrint:False,ptlb:Subsurf_Map,ptin:_Subsurf_Map,varname:_Subsurf_Map,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-673-OUT;n:type:ShaderForge.SFN_Color,id:9799,x:32244,y:33618,ptovrint:False,ptlb:Subsurf_Color,ptin:_Subsurf_Color,varname:_Subsurf_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:124,x:32577,y:33715,varname:node_124,prsc:2|A-9799-RGB,B-7149-R;proporder:6665-7736-358-1813-3137-1461-5396-9800-3073-6431-953-1475-7992-9420-6038-9200-3226-9869-9229-7149-9799;pass:END;sub:END;*/

Shader "Custom/SparkleShader" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Base Color", 2D) = "white" {}
        _Metalness ("Metalness", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Clip ("Clip", 2D) = "white" {}
        _Speckle ("Speckle", 2D) = "black" {}
        _SpecklePower ("SpecklePower", Range(0, 50)) = 5
        _AO ("AO", 2D) = "white" {}
        _HeightMap ("Height Map", 2D) = "white" {}
        _ReliefDepth ("Relief Depth", Range(-1, 1)) = 0
        _ReliefQuality ("Relief Quality", Float ) = 16
        _UVTiling ("UV Tiling", Float ) = 1
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalAmount ("Normal Amount", Range(0, 1)) = 1
        _SpeckleSpread ("SpeckleSpread", Range(0.1, 50)) = 50
        _GlossMap ("GlossMap", 2D) = "white" {}
        [MaterialToggle] _MetalSwitch ("MetalSwitch", Float ) = 0
        [MaterialToggle] _RoughGloss ("Rough/Gloss", Float ) = 0
        _MetalMap ("MetalMap", 2D) = "white" {}
        _Subsurf_Map ("Subsurf_Map", 2D) = "black" {}
        _Subsurf_Color ("Subsurf_Color", Color) = (1,1,1,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metalness;
            uniform float _Gloss;
            uniform sampler2D _Clip; uniform float4 _Clip_ST;
            uniform sampler2D _Speckle; uniform float4 _Speckle_ST;
            uniform float _SpecklePower;
            uniform sampler2D _AO; uniform float4 _AO_ST;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefDepth;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalAmount;
            uniform float _SpeckleSpread;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform fixed _MetalSwitch;
            uniform fixed _RoughGloss;
            uniform sampler2D _MetalMap; uniform float4 _MetalMap_ST;
            uniform sampler2D _Subsurf_Map; uniform float4 _Subsurf_Map_ST;
            uniform float4 _Subsurf_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD11;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_1351 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_673 = float2(node_1351.r,node_1351.g);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_673, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalAmount),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossMap_var = tex2D(_GlossMap,TRANSFORM_TEX(node_673, _GlossMap));
                float gloss = 1.0 - lerp( _Gloss, _GlossMap_var.r, _RoughGloss ); // Convert roughness to gloss
                float perceptualRoughness = lerp( _Gloss, _GlossMap_var.r, _RoughGloss );
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float4 _AO_var = tex2D(_AO,TRANSFORM_TEX(node_673, _AO));
                float3 specularAO = _AO_var.r;
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetalMap_var = tex2D(_MetalMap,TRANSFORM_TEX(node_673, _MetalMap));
                float3 specularColor = lerp( _Metalness, _MetalMap_var.rgb, _MetalSwitch ).r;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_673, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular) * specularAO;
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float4 _Subsurf_Map_var = tex2D(_Subsurf_Map,TRANSFORM_TEX(node_673, _Subsurf_Map));
                float3 w = (_Subsurf_Color.rgb*_Subsurf_Map_var.r)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                indirectDiffuse *= _AO_var.r; // Diffuse AO
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float4 _Speckle_var = tex2D(_Speckle,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _Speckle));
                float4 _Clip_var = tex2D(_Clip,TRANSFORM_TEX(node_673, _Clip));
                float node_3737 = max(0,dot(viewReflectDirection,lightDirection));
                float3 emissive = (lerp((_Speckle_var.r*_SpecklePower),0.0,_Clip_var.r)*(node_3737*pow(node_3737,_SpeckleSpread)*attenuation*_LightColor0.rgb));
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metalness;
            uniform float _Gloss;
            uniform sampler2D _Clip; uniform float4 _Clip_ST;
            uniform sampler2D _Speckle; uniform float4 _Speckle_ST;
            uniform float _SpecklePower;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefDepth;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalAmount;
            uniform float _SpeckleSpread;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform fixed _MetalSwitch;
            uniform fixed _RoughGloss;
            uniform sampler2D _MetalMap; uniform float4 _MetalMap_ST;
            uniform sampler2D _Subsurf_Map; uniform float4 _Subsurf_Map_ST;
            uniform float4 _Subsurf_Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_1351 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_673 = float2(node_1351.r,node_1351.g);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(node_673, _NormalMap)));
                float3 normalLocal = float3((_NormalMap_var.rgb.rg*_NormalAmount),1.0);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float4 _GlossMap_var = tex2D(_GlossMap,TRANSFORM_TEX(node_673, _GlossMap));
                float gloss = 1.0 - lerp( _Gloss, _GlossMap_var.r, _RoughGloss ); // Convert roughness to gloss
                float perceptualRoughness = lerp( _Gloss, _GlossMap_var.r, _RoughGloss );
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float4 _MetalMap_var = tex2D(_MetalMap,TRANSFORM_TEX(node_673, _MetalMap));
                float3 specularColor = lerp( _Metalness, _MetalMap_var.rgb, _MetalSwitch ).r;
                float specularMonochrome;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_673, _MainTex));
                float3 diffuseColor = (_MainTex_var.rgb*_Color.rgb); // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = dot( normalDirection, lightDirection );
                float4 _Subsurf_Map_var = tex2D(_Subsurf_Map,TRANSFORM_TEX(node_673, _Subsurf_Map));
                float3 w = (_Subsurf_Color.rgb*_Subsurf_Map_var.r)*0.5; // Light wrapping
                float3 NdotLWrap = NdotL * ( 1.0 - w );
                float3 forwardLight = max(float3(0.0,0.0,0.0), NdotLWrap + w );
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotLWrap);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = (forwardLight + ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL)) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Metalness;
            uniform float _Gloss;
            uniform sampler2D _Clip; uniform float4 _Clip_ST;
            uniform sampler2D _Speckle; uniform float4 _Speckle_ST;
            uniform float _SpecklePower;
            uniform sampler2D _HeightMap; uniform float4 _HeightMap_ST;
            uniform float _ReliefDepth;
            uniform float _ReliefQuality;
            uniform float _UVTiling;
            float3 Relief( float3 viewDir , sampler2D HeightMap , float Depth , float linearSearchSteps , float2 UV , float Tiling ){
             viewDir = normalize(viewDir);
            
             float3 p = float3(UV*Tiling, 0);
             float3 newView = normalize(viewDir * -1);
             newView.z      = abs(newView.z);
            
             float depthBias = 1.0 - newView.z;
             depthBias *= depthBias;
             depthBias *= depthBias;
             depthBias = 1.0 - depthBias * depthBias;
            
             newView.xy *= depthBias;
             newView.xy *= Depth;
            
             const int binarySearchSteps = 10;
            
             newView /= newView.z * linearSearchSteps;
            
             //produces depth
             int i;
             for( i=0; i<linearSearchSteps; i++){
              float tex = tex2D(HeightMap, p.xy).r;
              if (p.z<tex) p+=newView;
             }
            
            
             for( i=0; i<binarySearchSteps; i++ ){
              newView *= 0.5;
              float tex = tex2D(HeightMap, p.xy).r;
              if(p.z < tex) p+= newView;
              else p -= newView;
             }
            
             //p.z reassigned to alpha
             p.z = 1;
             if(p.x < 0)p.z = 0;
             if(p.y < 0)p.z = 0;
             if(p.x > Tiling)p.z=0;
             if(p.y > Tiling)p.z=0;
             return p;
            }
            
            uniform float _SpeckleSpread;
            uniform sampler2D _GlossMap; uniform float4 _GlossMap_ST;
            uniform fixed _MetalSwitch;
            uniform fixed _RoughGloss;
            uniform sampler2D _MetalMap; uniform float4 _MetalMap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 projPos : TEXCOORD7;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _Speckle_var = tex2D(_Speckle,TRANSFORM_TEX(float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _Speckle));
                float3 node_1351 = Relief( mul( tangentTransform, viewDirection ).xyz.rgb , _HeightMap , _ReliefDepth , _ReliefQuality , i.uv0 , _UVTiling ).rgb;
                float2 node_673 = float2(node_1351.r,node_1351.g);
                float4 _Clip_var = tex2D(_Clip,TRANSFORM_TEX(node_673, _Clip));
                float node_3737 = max(0,dot(viewReflectDirection,lightDirection));
                o.Emission = (lerp((_Speckle_var.r*_SpecklePower),0.0,_Clip_var.r)*(node_3737*pow(node_3737,_SpeckleSpread)*attenuation*_LightColor0.rgb));
                
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_673, _MainTex));
                float3 diffColor = (_MainTex_var.rgb*_Color.rgb);
                float specularMonochrome;
                float3 specColor;
                float4 _MetalMap_var = tex2D(_MetalMap,TRANSFORM_TEX(node_673, _MetalMap));
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, lerp( _Metalness, _MetalMap_var.rgb, _MetalSwitch ).r, specColor, specularMonochrome );
                float4 _GlossMap_var = tex2D(_GlossMap,TRANSFORM_TEX(node_673, _GlossMap));
                float roughness = lerp( _Gloss, _GlossMap_var.r, _RoughGloss );
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
