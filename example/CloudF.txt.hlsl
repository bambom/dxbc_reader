class INPUT {
	float4 v2 :TEXCOORD0;
	float v3 :TEXCOORD1; //顶点index？ 反推uv
	float4 v4:TEXCOORD2;
	float3 v5:TEXCOORD3;
	float3 v6:TEXCOORD4;
	float3 v7:TEXCOORD5;
	float3 v8:TEXCOORD6;
	float3 v9:TEXCOORD7;
}

sampler2D t0;
sampler2D t1;

class OUT {
}

void main(INPUT in) {
        r0.x = v3.w + 0.1;
        r0.x = saturate(r0.x * 5.0);
        r0.y = r0.x*-2.0 + 3.0;
        r0.x = r0.x * r0.x;
        r0.x = r0.x * r0.y;
        r0.yz = v4.yz + v4.ww;
        r0.yz = min(r0.yz, float2(1.0, 1.0));
        r0.w = -v4.y + v4.w;
        r0.w = max(r0.w, 0);
        r0.yz = -r0.ww + r0.yz;
        r0.yz = float2(1.0, 1.0)/r0.yz;
        r1.xyz = tex2D(t0, v2.zw).xyz //sample_state s1;
        r1.xy = r1.xy + float2(-0.5, -0.5);
        r1.xy = r1.zz * r1.xy;
        r1.xy = r1.xy*cb0[36].yy + v2.xy;
        r1.xyzw = tex2D(t1, r1.xy).xyzw //sample_state s0;
        r0.w = -r0.w + r1.z;
        r0.yz = saturate(r0.yz * r0.ww);
        r2.xy = r0.yz*float2(-2.0, -2.0) + float2(3.0, 3.0);
        r0.yz = r0.yz * r0.yz;
        r0.y = r0.y * r2.x;
        r0.z = -r2.y*r0.z + 1.0;
        r0.z = r0.z*4.0-r1.y;
        r0.z = v4.w*r0.z + r1.y;
        r0.y = r0.y * r1.w;
        r0.w = r0.y*r0.x-0.01;
        r2.w = r0.x * r0.y;
        r0.x = r0.w < 0;
        if (r0.x != 0) discard;
        r0.xyw = v8.xyz-v9.xyz;
        r0.xyw = r1.xxx*r0.xyw + v9.xyz;
        r0.xyz = v7.xyz*r0.zzz + r0.xyw;
        r1.yzw = v8.xyz * cb0[27].zzz;
        r0.xyz = r1.yzw*float3(0.4, 0.4, 0.4) + r0.xyz;
        r0.xyz = v6.xyz*r1.xxx + r0.xyz;
        r0.w = v4.x + 1.0;
        r0.xyz = r0.xyz*r0.www-v5.xyz;
        r0.w = cb0[27].z-0.4;
        r0.w = saturate(r0.w * 3.3333);
        r1.x = r0.w*-2.0 + 3.0;
        r0.w = r0.w * r0.w;
        r0.w = r0.w * r1.x;
        r1.x = saturate(v3.w * 10.0);
        r1.y = r1.x*-2.0 + 3.0;
        r1.x = r1.x * r1.x;
        r1.x = r1.x * r1.y;
        r1.x = min(r1.x, 1.0);
        r1.y = -r1.x + 1.0;
        r0.w = r0.w*r1.y + r1.x;
        r2.xyz = r0.www*r0.xyz + v5.xyz;
        o0.xyzw = r2.xyzw;
        o1.xyzw = r2.xyzw;
        return;
}
