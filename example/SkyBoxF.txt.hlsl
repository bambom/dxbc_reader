class INPUT {
}
class OUT {
}
void main(INPUT in) {

        dp3 r0.x, v4.xyzx, v4.xyzx
        r0.x = dot(v4.xyzx, v4.xyzx);

        rsq r0.x, r0.x
        r0.x = rsqrt(r0.x);

        mul r0.xyz, r0.xxxx, v4.xyzx
        r0.xyz = r0.xxx * v4.xyz;

        dp3 r0.w, cb0[15].yzwy, r0.xyzx
        r0.w = dot(cb0[15].yzwy, r0.xyzx);

        mad r0.w, r0.w, l(0.5000), l(0.5000)
        0.5 = b-Error*c-Error + d-Error;

        max r0.w, r0.w, l(0)
        r0.w = max(r0.w, 0);

        min r1.x, r0.w, l(1.0000)
        r1.x = min(r0.w, 1.0);

        add r0.w, r0.w, l(-0.5000)
        r0.w = r0.w-0.5;

        add_sat r0.w, r0.w, r0.w
        r0.w = saturate(r0.w + r0.w);

        log r1.x, r1.x
        r1.x = log2(r1.x);

        dp3 r1.y, r0.xyzx, cb0[4].xyzx
        r1.y = dot(r0.xyzx, cb0[4].xyzx);

        dp3_sat r0.x, cb0[19].xyzx, r0.xyzx
        r0.x = saturate(dot(cb0[19].xyzx, r0.xyzx));

        add r0.x, r0.x, l(-1.0000)
        r0.x = r0.x-1.0;

        mul r0.y, r1.y, cb0[17].w
        r0.y = r1.y * cb0[17].w;

        mul r0.z, r1.x, r0.y
        r0.z = r1.x * r0.y;

        mul r1.yz, r0.yyyy, l(0.0000, 0.1000, 0.0100, 0.0000)
        r1.yz = r0.yy * float2(0.1, 0.01);

        mul r1.xy, r1.xxxx, r1.yzyy
        r1.xy = r1.xx * r1.yz;

        exp r1.xy, r1.xyxx
        r1.xy = exp2(r1.xyxx);

        min r1.xy, r1.xyxx, l(1.0000, 1.0000, 0.0000, 0.0000)
        r1.xy = min(r1.xy, float2(1.0, 1.0));

        exp r0.y, r0.z
        r0.y = exp2(r0.z);

        min r0.y, r0.y, l(1.0000)
        r0.y = min(r0.y, 1.0);

        mad r0.y, r1.x, l(0.1200), r0.y
        r0.y = b-Error*c-Error + d-Error;

        mad r0.y, r1.y, l(0.0300), r0.y
        r0.y = b-Error*c-Error + d-Error;

        mul r0.y, r0.y, cb0[18].w
        r0.y = r0.y * cb0[18].w;

        mul r1.xyz, r0.yyyy, cb0[18].xyzx
        r1.xyz = r0.yyy * cb0[18].xyz;

        mad r0.y, r0.w, l(-2.0000), l(3.0000)
        3.0 = b-Error*c-Error + d-Error;

        mul r0.z, r0.w, r0.w
        r0.z = r0.w * r0.w;

        mul r0.y, r0.z, r0.y
        r0.y = r0.z * r0.y;

        mad r0.yzw, r1.xxyz, r0.yyyy, v5.xxyz
        v5.xyz = b-Error*c-Error + d-Error;

        mul r1.x, cb0[19].w, l(0.1000)
        r1.x = cb0[19].w * 0.1;

        max r1.x, r1.x, l(0.0000)
        r1.x = max(r1.x, 0.0);

        div r1.x, l(1.0000, 1.0000, 1.0000, 1.0000), r1.x
        r1.x = 1.0/r1.x;

        mad r0.x, r0.x, r1.x, l(1.0000)
        1.0 = b-Error*c-Error + d-Error;

        max r0.x, r0.x, l(0)
        r0.x = max(r0.x, 0);

        mul r0.x, r0.x, r0.x
        r0.x = r0.x * r0.x;

        mul r1.x, r0.x, r0.x
        r1.x = r0.x * r0.x;

        mul r0.x, r0.x, r1.x
        r0.x = r0.x * r1.x;

        add r1.x, cb0[21].y, l(-0.5000)
        r1.x = cb0[21].y-0.5;

        mad r1.x, r1.x, l(2.0000), l(1.0000)
        1.0 = b-Error*c-Error + d-Error;

        mul r1.x, r1.x, cb0[21].x
        r1.x = r1.x * cb0[21].x;

        mul r0.x, r0.x, r1.x
        r0.x = r0.x * r1.x;

        mul r1.xyz, r0.xxxx, cb0[20].xyzx
        r1.xyz = r0.xxx * cb0[20].xyz;

        ge r0.x, l(0.0500), r0.x
        r0.x = 0.05 >= r0.x;

        and r0.x, r0.x, l(1.0000)
        r0.x = r0.x & 1.0 ;

        mov_sat r1.w, cb0[20].w
        r1.w = saturate(cb0[20].w);

        mad r0.yzw, r1.xxyz, r1.wwww, r0.yyzw
        r0.yzw = b-Error*c-Error + d-Error;

        sample_indexable(texture2d)(float,float,float,float) r1.x, v3.xyxx, t1.wxyz, s2
        r1.x = tex2D(t1, v3.xy).w //sample_state s2;

        sample_indexable(texture2d)(float,float,float,float) r1.y, v3.zwzz, t1.xwyz, s2
        r1.y = tex2D(t1, v3.zw).w //sample_state s2;

        mul r1.x, r1.y, r1.x
        r1.x = r1.y * r1.x;

        sample_indexable(texture2d)(float,float,float,float) r1.y, v2.xyxx, t0.xwyz, s0
        r1.y = tex2D(t0, v2.xy).w //sample_state s0;

        mul r1.x, r1.y, r1.x
        r1.x = r1.y * r1.x;

        mul_sat r1.y, v4.w, l(1.5000)
        r1.y = saturate(v4.w * 1.5);

        mul r1.x, r1.x, r1.y
        r1.x = r1.x * r1.y;

        mul r1.x, r1.x, l(3.0000)
        r1.x = r1.x * 3.0;

        add r1.y, -cb0[30].z, l(1.0000)
        r1.y = -cb0[30].z + 1.0;

        sample_indexable(texture2d)(float,float,float,float) r1.z, v2.zwzz, t1.xywz, s2
        r1.z = tex2D(t1, v2.zw).w //sample_state s2;

        add r1.w, r1.z, -cb0[30].z
        r1.w = r1.z-cb0[30].z;

        mad r2.x, r1.z, cb0[37].x, cb0[37].z
        cb0[37].z = b-Error*c-Error + d-Error;

        div_sat r1.y, r1.w, r1.y
        r1.y = saturate(r1.w/r1.y);

        mul r1.x, r1.y, r1.x
        r1.x = r1.y * r1.x;

        mov r2.y, l(0.5000)
        r2.y = 0.5;

        sample_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t2.wxyz, s1
        r1.yzw = tex2D(t2, r2.xy).xyz //sample_state s1;

        mul r1.yzw, r1.yyzw, cb0[30].yyyy
        r1.yzw = r1.yzw * cb0[30].yyy;

        mul r1.xyz, r1.xxxx, r1.yzwy
        r1.xyz = r1.xxx * r1.yzw;

        mad r0.xyz, r1.xyzx, r0.xxxx, r0.yzwy
        r0.yzw = b-Error*c-Error + d-Error;

        mov o0.xyz, r0.xyzx
        o0.xyz = r0.xyz;

        mov o1.xyz, r0.xyzx
        o1.xyz = r0.xyz;

        mov o0.w, l(1.0000)
        o0.w = 1.0;

        mov o1.w, l(1.0000)
        o1.w = 1.0;

        ret
        return;
}