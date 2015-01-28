Shader "Custom/3.简单的可调漫反射光照" {
	Properties
	{
	    _MainColor("主颜色",Color)=(1,.1,.5,1)
	}
	SubShader
	{
	    Pass
	    {
            Material
            {
                 Diffuse[_MainColor]
                 Ambient[_MainColor]
            }
            Lighting On	    
	    }
	}
}
