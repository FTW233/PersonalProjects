Shader "Custom/2.材质颜色设置&开启光照" {
	SubShader
	{
	    Pass
	    {
	          Material 
	          {
	              Diffuse(0.9,0.5,0.4,1)
	              Ambient(0.9,0.5,0.4,1)
	          }   
	          Lighting On 
	    }
	}
}
