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

        mad r0.w, cb0[35].z, cb0[35].w, l(-1.0000)
        -1.0 = b-Error*c-Error + d-Error;

        mad r0.w, v3.y, r0.w, l(0.5000)
        0.5 = b-Error*c-Error + d-Error;

        round_ni r0.w, r0.w
        r0.w = floor(r0.w) //round_ni;

        mul r1.x, r0.w, cb0[35].z
        r1.x = r0.w * cb0[35].z;

        ge r1.x, r1.x, -r1.x
        r1.x = r1.x >= -r1.x;

        movc r1.x, r1.x, cb0[35].z, -cb0[35].z
        r1.x = r1.x ? cb0[35].z : -cb0[35].z;

        div r1.y, l(1.0000, 1.0000, 1.0000, 1.0000), r1.x
        r1.y = 1.0/r1.x;

        mul r1.y, r0.w, r1.y
        r1.y = r0.w * r1.y;

        div r0.w, r0.w, cb0[35].z
        r0.w = r0.w/cb0[35].z;

        round_ni r2.y, r0.w
        r2.y = floor(r0.w) //round_ni;

        frc r0.w, r1.y
        r0.w = frac(r1.y);

        mul r2.x, r0.w, r1.x
        r2.x = r0.w * r1.x;

        add r1.xy, r2.xyxx, v1.xyxx
        r1.xy = r2.xy + v1.xy;

        div o2.xy, r1.xyxx, cb0[35].zwzz
        o2.xy = r1.xy/cb0[35].zw;

        mov r1.z, cb0[36].z
        r1.z = cb0[36].z;

        mov r1.w, l(0.8000)
        r1.w = 0.8;

        mul r1.xy, r1.zwzz, cb0[21].zzzz
        r1.xy = r1.zw * cb0[21].zz;

        mov r1.z, l(1.2000)
        r1.z = 1.2;

        mov r1.w, cb0[36].z
        r1.w = cb0[36].z;

        mul r1.xy, r1.zwzz, r1.xyxx
        r1.xy = r1.zw * r1.xy;

        mad o2.zw, v1.xxxy, cb0[36].xxxx, r1.xxxy
        r1.xy = b-Error*c-Error + d-Error;

        dp3 r0.w, r0.xyzx, r0.xyzx
        r0.w = dot(r0.xyzx, r0.xyzx);

        rsq r0.w, r0.w
        r0.w = rsqrt(r0.w);

        mul r0.xyz, r0.wwww, r0.xyzx
        r0.xyz = r0.www * r0.xyz;

        dp3 r1.x, cb0[4].xyzx, r0.xyzx
        r1.x = dot(cb0[4].xyzx, r0.xyzx);

        max r1.y, r1.x, l(-1.0000)
        r1.y = max(r1.x, -1.0);

        min r1.y, r1.y, l(1.0000)
        r1.y = min(r1.y, 1.0);

        mad r1.z, abs
        abs = b-Error*c-Error + d-Error;
}
