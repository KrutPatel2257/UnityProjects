Shader "Custom/InstancedColors" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Glossiness ("Smoothness", Range(0,1)) = 0.5
		_Metallic ("Metallic", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		// surface shader with errors was here
Pass { }
/*// errors analysing surface function 'surf':
// :27 Unexpected identifier "UNITY_INSTANCING_BUFFER_START". Expected one of: typedef const void inline uniform nointerpolation extern shared static volatile row_major column_major struct or a user-defined type
*/
#LINE 39

	}
	FallBack "Diffuse"
}