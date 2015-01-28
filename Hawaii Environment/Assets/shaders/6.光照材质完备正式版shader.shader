Shader "Custom/6.光照材质完备正式版shader" {
    Properties
    {
        _Color("主颜色",Color)=(1,1,1,0)
        _SpecColor("高光颜色",Color)=(1,1,1,1)
        _Emission("自发光颜色",Color)=(0,0,0,0)
        _Shininess("光泽度",Range(0.01,1))=0.7    
        _MainTex("基本纹理",2D)="White"{}
    }
    SubShader
    {
       Pass
       {
            Material
            {
               Diffuse[_Color]
               Ambient[_Color]
               Shininess[_Color]
               Specular[_Color]
               Emission[_Color]
             }
             Lighting On
             SeparateSpecular On
             SetTexture[_MainTex]
             {
                 Combine texture*primary DOUBLE,texture +primary
             }
       }
    }
}
