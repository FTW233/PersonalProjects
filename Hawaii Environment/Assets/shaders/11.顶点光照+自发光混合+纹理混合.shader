Shader "Custom/11.顶点光照+自发光混合+纹理混合" {
	Properties 
	{
	     _IlluminCol("自发光",Color)=(0,0,0,0)
	     _Color ("主颜色",Color)=(1,1,1,0)
	     _SpecColor("高光颜色",Color)=(1,1,1,1)
	     _Emission("光泽颜色",Color)=(0,0,0,0)
	     _Shininess("光泽度",Range(0.01,1))=0.7
	     _MainTex("基础纹理",2D)="white"{}
	     _BlendTex("混合纹理",2D)="white" {}
	}
	SubShader
	{ 
	   Pass
	   {
	         Material 
	         {
	             Diffuse[_Color]
	             Ambient[_Color]
	             Shininess[_Color]  
	             Specular[_SpecClor]
	             Emission [_Emission]
	         }
	         lighting on 
	         SeparateSpecular on
	         SetTexture [_Maintex]
	         {
	             constantColor [_IlluminCol]
	             combine constant lerp(texture ) previous 
	         }
	         SetTexture[_BlendTex]
	         {
	             combine previous *texture	         
	         }
	         SetTexture [_MainTex]
	         {
	              Combine previous *primary DOUBLE,previous *primary
	         }
	   }
	}
}
