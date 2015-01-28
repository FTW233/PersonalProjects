Shader "Custom/5.简单纹理载入shader" {
	Properties
	{
        _MainTex("基本纹理",2D)="White"{TexGen SphereMap}	
	}
	SubShader
	{
	    Pass
	    {
	        SetTexture[_MainTex]{combine texture}
	    }
	}
	Fallback"Diffuse"
}
