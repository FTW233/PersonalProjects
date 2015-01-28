Shader "Custom/10.顶点光照+纹理alpha自发光混合" {
	 Properties 
   {
       _IlluminCol("自发光色",Color)=(1,1,1,1)   
       _Color("主颜色",Color)=(1,1,1,0)
       _SpecColor("高光颜色",Color)=(1,1,1,1)
       _Emission("光泽颜色",Color)=(0,0,0,0)
       _Shininess("光泽度",Range(0.01,1))=0.7
       _MainTex("基础纹理",2D)="white" {}
   }
   SubShader
   {
       Pass
       {
            Material 
            {
                 Diffuse [_Color]
                 Ambient [_Color]
                 Shininess[_Shininess]
                 Specular [_SpecColor]
                 Emission [_Emission]
            }
            Lighting on
            SeparateSpecular On
            SetTexture [_MainTex]
            {
                constantColor [_IlluminCol]
                combine constant lerp(texture) previous
            }
            SetTexture [_MainTex]
            {
                 combine previous*texture
            }
            SetTexture [_MainTex]
            {   combine previous *primary DOUBLE,previous*primary}
       }
   }
}
