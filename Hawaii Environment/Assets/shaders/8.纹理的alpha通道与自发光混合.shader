Shader "Custom/8.纹理的alpha通道与自发光混合" {
	Properties 
	{
	     _MainTex("基础纹理(RGB)-自发光(A)",2D)="red"{}
	}
	SubShader
	{
	     pass
	     {
	         Material
	         {
	             Diffuse(1,1,1,1)
	             Ambient(1,1,1,1)
	         }
	         lighting on
	         settexture [_MainTex]
	         {
	             constantcolor (1,1,1,1)
	             combine constant lerp(texture) previous
	         }
	         settexture[_MainTex]
	         {
	            combine previous*texture
	         }
	     }
	}
}
