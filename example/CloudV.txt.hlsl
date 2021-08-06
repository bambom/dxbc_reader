vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[37], immediateIndexed
dcl_constantbuffer cb1[7], immediateIndexed
dcl_constantbuffer cb2[4], immediateIndexed
dcl_constantbuffer cb3[21], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input v0.xyz
dcl_input v1.xy
dcl_input v2.xyzw
dcl_input v3.yzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyz
dcl_output o6.xyz
dcl_output o7.xyz
dcl_output o8.xyz
dcl_output o9.xyz
dcl_temps 5
mul r0.xyzw, v0.yyyy, cb2[1].xyzw
mad r0.xyzw, cb2[0].xyzw, v0.xxxx, r0.xyzw
mad r0.xyzw, cb2[2].xyzw, v0.zzzz, r0.xyzw
add r0.xyzw, r0.xyzw, cb2[3].xyzw
mul r1.xyz, r0.yyyy, cb3[18].xywx
mad r1.xyz, cb3[17].xywx, r0.xxxx, r1.xyzx
mad r1.xyz, cb3[19].xywx, r0.zzzz, r1.xyzx
mad r1.xyz, cb3[20].xywx, r0.wwww, r1.xyzx
add r0.xyz, r0.xyzx, -cb0[3].xyzx
mov o0.xyw, r1.xyxz
mov o0.z, l(0)
mul r2.xyz, r1.xyzx, l(0.5000, 0.5000, 0.5000, 0.0000)
mov o1.w, r1.z
mul r2.w, r2.y, cb1[6].x
add o1.xy, r2.zzzz, r2.xwxx
mov o1.z, l(0)
mad r0.w, cb0[35].z, cb0[35].w, l(-1.0000)
mad r0.w, v3.y, r0.w, l(0.5000)
round_ni r0.w, r0.w
mul r1.x, r0.w, cb0[35].z
ge r1.x, r1.x, -r1.x
movc r1.x, r1.x, cb0[35].z, -cb0[35].z
div r1.y, l(1.0000, 1.0000, 1.0000, 1.0000), r1.x
mul r1.y, r0.w, r1.y
div r0.w, r0.w, cb0[35].z
round_ni r2.y, r0.w
frc r0.w, r1.y
mul r2.x, r0.w, r1.x
add r1.xy, r2.xyxx, v1.xyxx
div o2.xy, r1.xyxx, cb0[35].zwzz
mov r1.z, cb0[36].z
mov r1.w, l(0.8000)
mul r1.xy, r1.zwzz, cb0[21].zzzz
mov r1.z, l(1.2000)
mov r1.w, cb0[36].z
mul r1.xy, r1.zwzz, r1.xyxx
mad o2.zw, v1.xxxy, cb0[36].xxxx, r1.xxxy
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r1.x, cb0[4].xyzx, r0.xyzx
max r1.y, r1.x, l(-1.0000)
min r1.y, r1.y, l(1.0000)
mad r1.z, abs(r1.y), l(-0.0187), l(0.0743)
mad r1.z, r1.z, abs(r1.y), l(-0.2121)
mad r1.z, r1.z, abs(r1.y), l(1.5707)
add r1.w, -abs(r1.y), l(1.0000)
lt r1.y, r1.y, -r1.y
sqrt r1.w, r1.w
mul r2.x, r1.w, r1.z
mad r2.x, r2.x, l(-2.0000), l(3.1416)
and r1.y, r1.y, r2.x
mad r1.y, r1.z, r1.w, r1.y
add r1.y, -r1.y, l(1.5708)
mul r0.w, r1.y, l(0.6366)
mov o3.xyzw, r0.xyzw
add r1.y, -v2.w, l(1.0000)
div r1.y, l(1.0000, 1.0000, 1.0000, 1.0000), r1.y
max r1.z, v2.x, l(0.0000)
div r1.z, v2.y, r1.z
mad r1.w, r1.z, cb0[27].w, -v2.w
mul r1.z, r1.z, cb0[27].w
mul_sat r1.y, r1.y, r1.w
mad r1.w, r1.y, l(-2.0000), l(3.0000)
mul r1.y, r1.y, r1.y
mad r1.y, -r1.w, r1.y, l(1.0000)
div r1.w, l(1.0000, 1.0000, 1.0000, 1.0000), v2.z
mul_sat r1.z, r1.w, r1.z
mad r1.w, r1.z, l(-2.0000), l(3.0000)
mul r1.z, r1.z, r1.z
mul r1.z, r1.z, r1.w
mad o4.w, -r1.z, r1.y, l(1.0000)
dp3 r1.y, r0.xyzx, cb0[15].yzwy
dp3 r0.x, r0.xyzx, cb0[19].xyzx
mad r0.y, r1.y, l(0.5000), l(0.5000)
mul o4.x, r0.y, cb0[28].w
mov o4.yz, v3.zzwz
mad r0.z, r1.y, cb0[10].w, -cb0[10].w
mad r1.y, r1.y, cb0[26].w, -cb0[26].w
add r1.y, r1.y, l(1.0000)
max r1.y, r1.y, l(0)
add r0.z, r0.z, l(1.0000)
max r0.z, r0.z, l(0)
mul r1.z, r0.z, r0.z
mul r0.z, r0.z, r1.z
add r2.xyz, cb0[9].xyzx, -cb0[10].xyzx
mad r2.xyz, r0.zzzz, r2.xyzx, cb0[10].xyzx
add r3.xyz, cb0[7].xyzx, -cb0[8].xyzx
mad r3.xyz, r0.zzzz, r3.xyzx, cb0[8].xyzx
add r2.xyz, r2.xyzx, -r3.xyzx
max r0.z, cb0[12].x, l(0.0001)
div r4.x, abs(r0.w), r0.z
mov r4.yw, l(0.0000, 0.5000, 0.0000, 0.5000)
sample_l(texture2d)(float,float,float,float) r0.z, r4.xyxx, t0.yzxw, s0, l(0)
mad r2.xyz, r0.zzzz, r2.xyzx, r3.xyzx
max r0.z, cb0[15].x, l(0.0001)
div r4.z, abs(r0.w), r0.z
sample_l(texture2d)(float,float,float,float) r0.z, r4.zwzz, t0.xzyw, s0, l(0)
mul r3.xyz, cb0[12].yzwy, cb0[13].xxxx
mul r3.xyz, r0.zzzz, r3.xyzx
add r0.z, abs(cb0[15].z), l(-0.2000)
mul_sat r0.z, r0.z, l(3.3333)
mad r0.w, r0.z, l(-2.0000), l(3.0000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
max r0.w, r0.y, l(0)
add r1.zw, r0.wwww, l(0.0000, 0.0000, -0.3000, -0.5000)
min r0.w, r0.w, l(1.0000)
log r0.w, r0.w
mul_sat r1.z, r1.z, l(1.4286)
add_sat r1.w, r1.w, r1.w
mad r2.w, r1.z, l(-2.0000), l(3.0000)
mul r1.z, r1.z, r1.z
mul r3.w, r1.z, r2.w
mad r1.z, -r2.w, r1.z, l(1.0000)
mad r0.z, r0.z, r1.z, r3.w
mad r2.xyz, r3.xyzx, r0.zzzz, r2.xyzx
mul r0.z, abs(r1.x), cb0[17].w
mul r1.z, r0.w, r0.z
mul r3.xyz, r0.zzzz, l(0.1000, 0.0100, 0.5000, 0.0000)
mul r3.xyz, r0.wwww, r3.xyzx
exp r3.xyz, r3.xyzx
exp r0.z, r1.z
min r0.z, r0.z, l(1.0000)
min r3.xy, r3.xyxx, l(1.0000, 1.0000, 0.0000, 0.0000)
mul_sat r0.w, r1.x, r3.z
mul r0.w, r0.w, cb0[18].w
mul r4.xyz, r0.wwww, cb0[16].xyzx
mad r0.z, r3.x, l(0.1200), r0.z
mad r0.z, r3.y, l(0.0300), r0.z
mul r0.z, r0.z, cb0[18].w
mul r3.xyz, r0.zzzz, cb0[18].xyzx
mad r0.z, r1.w, l(-2.0000), l(3.0000)
mul r0.w, r1.w, r1.w
mul r0.z, r0.w, r0.z
mad o5.xyz, r3.xyzx, r0.zzzz, r2.xyzx
mov_sat r0.z, r0.x
mad r0.x, r0.x, l(0.5000), l(0.5000)
add r0.xy, r0.xyxx, -cb0[17].zzzz
mul r0.w, r0.z, r0.z
mul r0.w, r0.w, r0.w
mad r0.z, r0.w, r0.z, l(-0.5000)
add r0.z, r0.z, r0.z
max r0.z, r0.z, l(0)
mad r0.w, r0.z, l(-2.0000), l(3.0000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
mul r0.z, r0.z, cb0[21].x
add r0.w, cb0[21].y, l(-0.5000)
mad r0.w, -abs(r0.w), l(2.0000), l(1.0000)
mul r0.z, r0.w, r0.z
mul r1.xzw, r0.zzzz, cb0[20].xxyz
max r0.z, cb0[20].w, l(0)
min r0.z, r0.z, l(0.8000)
mad r1.xzw, r1.xxzw, r0.zzzz, r4.xxyz
add r0.z, -cb0[27].z, l(0.7000)
mul_sat r0.z, r0.z, l(2.5000)
mad r0.w, r0.z, l(-2.0000), l(3.0000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
mul o6.xyz, r0.zzzz, r1.xzwx
add r0.w, -cb0[17].z, l(1.0000)
div r0.w, l(1.0000, 1.0000, 1.0000, 1.0000), r0.w
mul_sat r0.xy, r0.wwww, r0.xyxx
mad r0.w, r0.x, l(-2.0000), l(3.0000)
mul r0.x, r0.x, r0.x
mul r0.x, r0.x, r0.w
mul r0.x, r0.x, cb0[20].w
mul r0.x, r0.x, l(0.1000)
mul r0.x, r0.x, r0.x
mul r1.xzw, r0.xxxx, cb0[20].xxyz
mad r0.x, r0.y, l(-2.0000), l(3.0000)
mul r0.y, r0.y, r0.y
mul r0.x, r0.y, r0.x
mul r0.x, r0.x, cb0[16].w
mul r0.x, r0.x, l(0.1250)
mul r0.x, r0.x, r0.x
mad r0.xyw, cb0[18].xyxz, r0.xxxx, r1.xzxw
mul o7.xyz, r0.zzzz, r0.xywx
mul r0.x, r1.y, r1.y
mul r0.x, r1.y, r0.x
add r0.yzw, cb0[23].xxyz, -cb0[24].xxyz
mad o8.xyz, r0.xxxx, r0.yzwy, cb0[24].xyzx
add r0.yzw, cb0[25].xxyz, -cb0[26].xxyz
mad o9.xyz, r0.xxxx, r0.yzwy, cb0[26].xyzx
ret