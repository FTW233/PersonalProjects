Shader "Custom/7.alpha纹理混合" {
	Properties
	{
	    _MainTex("基础纹理(RGB)",2D)="white"{}
	    _BlendTex("混合纹理(RGB)",2D)="white"{}   
	}
	SubShader
	{
	    Pass
	    {
	        SetTexture [_MainTex] {combine texture}
	        SetTexture [_BlendTex] {combine texture*previous}
	    }	
	}
}
