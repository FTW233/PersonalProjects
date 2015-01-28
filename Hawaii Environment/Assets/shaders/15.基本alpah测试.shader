Shader "Custom/15.基本alpah测试" {
	Properties 
	{
	     _MainTex("基础纹理",2D)="white"{}
	}
	
	SubShader
	{
       Pass 
       {
            Alphatest greater 0.08
            settexture [_MainTex] { combine texture}
       }	
	}
}
