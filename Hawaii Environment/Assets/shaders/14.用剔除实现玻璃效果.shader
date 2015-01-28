Shader "Custom/14.用剔除i实现玻璃效果" {
	Properties 
	{
	    _Color("主颜色",Color)=(1,1,1,0)
	    _SpecColor("高光颜色",Color)=(1,1,1,1)
	    _Emission("光泽颜色",Color)=(0,0,0,0)
	    _Shininess("光泽度",Range(0.01,1))=0.7
	    _MainTex("基础纹理",2D)="white" {}
	}
	SubShader
	{
	   Material 
	   {
	       Diffuse[_Color]
	       Ambient [_Color]
	       Shininess[_Shininess]
	       Specular[_SpecColor]
	       Emission [_Emission]
	   }
	   lighting on 
	   
	   separateSpecular on
	   
	   blend srcalpha oneMinusSrcalpha 
	   
	   Pass
	   {
	       cull front 
	       
	       setTexture [_MainTex]
	       {
	           combine Primary*texture
	       }
	   }
	   Pass
	   {
	       cull Back
	       settexture [_MainTex]
	       {  combine primary *texture }
	   }
	}
}
