Shader "Custom/12.用剔除操作渲染对象背面" {
	SubShader
	{
	    Pass
	    {  
	       Material
	       {
	            Emission(0.3,0.3,0.3,0.3)
	            Diffuse(1,1,1,1)
	       }
	       
	       Lighting on 
	       
	       cull Front 	   
	    }	
	}
}
