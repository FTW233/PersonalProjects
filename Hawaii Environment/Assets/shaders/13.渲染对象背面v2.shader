Shader "Custom/13.渲染对象背面v2" {
    Properties 
    {
        _Color("主颜色",Color) =(1,1,1,0)
        _SpecColor("高光颜色",Color)=(1,1,1,1)
        _Emission("光泽颜色",Color)=(0,0,0,0)
        _Shininess("光泽度",Range(0.03,1))=0.7
        _MainTex("基础纹理",2D)="white" {}    
    }	
    SubShader 
    {
        Pass
        {
             Material
             {
                 Diffuse[_Color]
                 Ambient[_Color]
                 Shininess[_Shininess]
                 Specular[_SpecColor]
                 Emission[_Emission]
             }
             Lighting on
             
             SetTexture[_MainTex]
             {
                  Combine primary*Texture 
             }
        }
        Pass
        {
             Color(0,0,1,1)
             Cull Front
        }
    }
}