Shader "Custom/0.shader框架示例" {
	Properties 
	{
	     _MainTex("基本纹理",2D)="White"{TexGen objectLinear}
	}
	SubShader
	{
	    Pass
	    {
	          SetTexture[_MainTex]{combine texture}	    
	    }	
	}
	FallBack "Diffuse"
}
