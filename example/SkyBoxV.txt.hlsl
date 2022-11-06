class INPUT {
}
class OUT {
}
void main(INPUT in) {

        mul r0.xyzw, v0.yyyy, cb2[1].xyzw
        r0.xyzw = v0.yyyy * cb2[1].xyzw;

        mad r0.xyzw, cb2[0].xyzw, v0.xxxx, r0.xyzw
        r0.xyzw = b-Error*c-Error + d-Error;

        mad r0.xyzw, cb2[2].xyzw, v0.zzzz, r0.xyzw
        r0.xyzw = b-Error*c-Error + d-Error;

        add r0.xyzw, r0.xyzw, cb2[3].xyzw
        r0.xyzw = r0.xyzw + cb2[3].xyzw;

        mul r1.xyz, r0.yyyy, cb3[18].xywx
        r1.xyz = r0.yyy * cb3[18].xyw;

        mad r1.xyz, cb3[17].xywx, r0.xxxx, r1.xyzx
        r1.xyz = b-Error*c-Error + d-Error;

        mad r1.xyz, cb3[19].xywx, r0.zzzz, r1.xyzx
        r1.xyz = b-Error*c-Error + d-Error;

        mad r1.xyz, cb3[20].xywx, r0.wwww, r1.xyzx
        r1.xyz = b-Error*c-Error + d-Error;

        add r0.xyz, r0.xyzx, -cb0[3].xyzx
        r0.xyz = r0.xyz-cb0[3].xyz;

        mov o0.xyw, r1.xyxz
        o0.xyw = r1.xyz;

        mov o0.z, l(0)
        o0.z = 0;

        mul r2.xyz, r1.xyzx, l(0.5000, 0.5000, 0.5000, 0.0000)
        r2.xyz = r1.xyz * float3(0.5, 0.5, 0.5);

        mov o1.w, r1.z
        o1.w = r1.z;

        mul r2.w, r2.y, cb1[6].x
        r2.w = r2.y * cb1[6].x;

        add o1.xy, r2.zzzz, r2.xwxx
        o1.xy = r2.zz + r2.xw;

        mov o1.z, l(0)
        o1.z = 0;

        mad o2.xy, v1.xyxx, cb0[36].xyxx, cb0[36].zwzz
        cb0[36].zw = b-Error*c-Error + d-Error;

        mul o2.zw, v1.xxxy, l(0.0000, 0.0000, 20.0000, 20.0000)
        o2.zw = v1.xy * float2(20.0, 20.0);

        mul r1.xy, v1.xyxx, cb0[38].xyxx
        r1.xy = v1.xy * cb0[38].xy;

        mul r0.w, cb0[30].x, cb1[0].y
        r0.w = cb0[30].x * cb1[0].y;

        mul r2.xyzw, r0.wwww, l(0.4000, 0.2000, 0.1000, 0.5000)
        r2.xyzw = r0.wwww * float4(0.4, 0.2, 0.1, 0.5);

        mad o3.zw, r1.xxxy, l(0.0000, 0.0000, 2.0000, 2.0000), r2.zzzw
        r2.zw = b-Error*c-Error + d-Error;

        mad o3.xy, v1.xyxx, cb0[38].xyxx, r2.xyxx
        r2.xy = b-Error*c-Error + d-Error;

        dp3 r0.w, r0.xyzx, r0.xyzx
        r0.w = dot(r0.xyzx, r0.xyzx);

        rsq r0.w, r0.w
        r0.w = rsqrt(r0.w);

        mul r0.xyz, r0.wwww, r0.xyzx
        r0.xyz = r0.www * r0.xyz;

        dp3 r1.x, cb0[4].xyzx, r0.xyzx
        r1.x = dot(cb0[4].xyzx, r0.xyzx);

        max r1.x, r1.x, l(-1.0000)
        r1.x = max(r1.x, -1.0);

        min r1.x, r1.x, l(1.0000)
        r1.x = min(r1.x, 1.0);

        mad r1.y, r1.x, l(-0.0187), l(0.0743)
        0.0743 = b-Error*c-Error + d-Error;

        mad r1.y, r1.y, r1.x, l(-0.2121)
        -0.2121 = b-Error*c-Error + d-Error;

        mad r1.y, r1.y, r1.x, l(1.5707)
        1.5707 = b-Error*c-Error + d-Error;

        add r1.z, r1.x, l(1.0000)
        r1.z = r1.x + 1.0;

        lt r1.x, r1.x, -r1.x
        r1.x = r1.x < -r1.x;

        sqrt r1.z, r1.z
        r1.z = sqrt(r1.z);

        mul r1.w, r1.z, r1.y
        r1.w = r1.z * r1.y;

        mad r1.w, r1.w, l(-2.0000), l(3.1416)
        3.1416 = b-Error*c-Error + d-Error;

        and r1.x, r1.x, r1.w
        r1.x = r1.x & r1.w ;

        mad r1.x, r1.y, r1.z, r1.x
        r1.x = b-Error*c-Error + d-Error;

        add r1.x, -r1.x, l(1.5708)
        r1.x = -r1.x + 1.5708;

        mul r0.w, r1.x, l(0.6366)
        r0.w = r1.x * 0.6366;

        mov o4.xyzw, r0.xyzw
        o4.xyzw = r0.xyzw;

        dp3 r0.x, cb0[15].yzwy, r0.xyzx
        r0.x = dot(cb0[15].yzwy, r0.xyzx);

        add r0.y, cb0[15].z, l(-0.2000)
        r0.y = cb0[15].z-0.2;

        mul_sat r0.y, r0.y, l(3.3333)
        r0.y = saturate(r0.y * 3.3333);

        mad r0.z, r0.y, l(-2.0000), l(3.0000)
        3.0 = b-Error*c-Error + d-Error;

        mul r0.y, r0.y, r0.y
        r0.y = r0.y * r0.y;

        mul r0.y, r0.y, r0.z
        r0.y = r0.y * r0.z;

        mad r0.z, r0.x, l(0.5000), l(0.5000)
        0.5 = b-Error*c-Error + d-Error;

        max r0.z, r0.z, l(0)
        r0.z = max(r0.z, 0);

        add r0.z, r0.z, l(-0.3000)
        r0.z = r0.z-0.3;

        mul_sat r0.z, r0.z, l(1.4286)
        r0.z = saturate(r0.z * 1.4286);

        mad r1.x, r0.z, l(-2.0000), l(3.0000)
        3.0 = b-Error*c-Error + d-Error;

        mul r0.z, r0.z, r0.z
        r0.z = r0.z * r0.z;

        mul r1.y, r0.z, r1.x
        r1.y = r0.z * r1.x;

        mad r0.z, -r1.x, r0.z, l(1.0000)
        1.0 = b-Error*c-Error + d-Error;

        mad r0.y, r0.y, r0.z, r1.y
        r1.y = b-Error*c-Error + d-Error;

        max r0.z, cb0[15].x, l(0.0001)
        r0.z = max(cb0[15].x, 0.0001);

        div r1.z, r0.w, r0.z
        r1.z = r0.w/r0.z;

        mov r1.yw, l(0.0000, 0.5000, 0.0000, 0.5000)
        r1.yw = float2(0.5, 0.5);

        sample_l(texture2d)(float,float,float,float) r0.z, r1.zwzz, t0.xzyw, s0, l(0)
        r0.z = tex2D(t0, r1.zw).y //sample_state s0;

        mul r2.xyz, cb0[12].yzwy, cb0[13].xxxx
        r2.xyz = cb0[12].yzw * cb0[13].xxx;

        mul r2.xyz, r0.zzzz, r2.xyzx
        r2.xyz = r0.zzz * r2.xyz;

        max r0.z, cb0[12].x, l(0.0001)
        r0.z = max(cb0[12].x, 0.0001);

        div r1.x, r0.w, r0.z
        r1.x = r0.w/r0.z;

        sample_l(texture2d)(float,float,float,float) r0.z, r1.xyxx, t0.yzxw, s0, l(0)
        r0.z = tex2D(t0, r1.xy).x //sample_state s0;

        add r0.w, -cb0[10].w, l(1.0000)
        r0.w = -cb0[10].w + 1.0;

        mad r0.x, r0.x, cb0[10].w, r0.w
        r0.w = b-Error*c-Error + d-Error;

        max r0.x, r0.x, l(0)
        r0.x = max(r0.x, 0);

        mul r0.w, r0.x, r0.x
        r0.w = r0.x * r0.x;

        mul r0.x, r0.x, r0.w
        r0.x = r0.x * r0.w;

        add r1.xyz, cb0[9].xyzx, -cb0[10].xyzx
        r1.xyz = cb0[9].xyz-cb0[10].xyz;

        mad r1.xyz, r0.xxxx, r1.xyzx, cb0[10].xyzx
        cb0[10].xyz = b-Error*c-Error + d-Error;

        add r3.xyz, cb0[7].xyzx, -cb0[8].xyzx
        r3.xyz = cb0[7].xyz-cb0[8].xyz;

        mad r3.xyz, r0.xxxx, r3.xyzx, cb0[8].xyzx
        cb0[8].xyz = b-Error*c-Error + d-Error;

        mov o5.w, r0.x
        o5.w = r0.x;

        add r1.xyz, r1.xyzx, -r3.xyzx
        r1.xyz = r1.xyz-r3.xyz;

        mad r1.xyz, r0.zzzz, r1.xyzx, r3.xyzx
        r3.xyz = b-Error*c-Error + d-Error;

        mov o7.w, r0.z
        o7.w = r0.z;

        mov o7.xyz, r3.xyzx
        o7.xyz = r3.xyz;

        mad o5.xyz, r2.xyzx, r0.yyyy, r1.xyzx
        r1.xyz = b-Error*c-Error + d-Error;

        mov o6.xy, v1.xyxx
        o6.xy = v1.xy;

        ret
        return;
}
