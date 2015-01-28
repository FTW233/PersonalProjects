Shader "Custom/16.顶点光照+可调透明度" {
	Properties 
	{
	    _Color("主颜色",Color)=(1,1,1,0)
	    _SpecColor("高光颜色",Color)=(1,1,1,1)
	    _Emission("光泽颜色",Color)=(0,0,0,0)
	    _Shininess("光泽度",Range(0.01,1))=0.5
	    _MainTex("基础纹理",2D)="white"{}
	    _Cutoff ("Alpha透明度阈值",Range(0,1))=0.5
	}
	SubShader
	{
	   pass
	   {
	       Alphatest greater[_cutoff]
	       
	       material 
	       {
	           Diffuse[_Color]
	           Ambient[_Color]
	           Shininess[_Shininess]
	           Specular [_SpecColor]
	           Emission [_Emission]
	       }
	       lighting on 
	       
	       Settexture [_MainTex] {   combine texture *primary}
	   }
	}
}
