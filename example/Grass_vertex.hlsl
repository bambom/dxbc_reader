r0.x = 0;
r1.y = 0;
r2.xy = v2.xy;
r2.z = 1.0;
r0.w = v4.x + cb3[0].x;
r0.w = r0.w << 2;
r3.xyw = -cb1[10].xzy + cb4[r0.w + 3].xzy;
r4.w = r3.y;
r4.x = cb4[r0.w + 0].z;
r4.z = cb4[r0.w + 2].z;
r5.z = dot(r4.xzwx, r2.xyzx);
r6.w = r3.x;
r6.x = cb4[r0.w + 0].x;
r6.z = cb4[r0.w + 2].x;
r5.x = dot(r6.xzwx, r2.xyzx);
r1.xw = r5.xz-cb0[8].xy;
r1.xw = r1.xw/cb0[8].zw;
r1.xw = r1.xw + float2(0.5, 0.5);
r7.xyzw = tex2D(t2, r1.xw).xyzw //sample_state s2;
r2.w = dot(r7.xyxx, r7.xyxx);
r2.w = sqrt(r2.w);
r2.w = 0.0001 >= r2.w;
r2.w = r2.w & 1.0 ;
r8.xy = -r7.yx + float2(0.5, 0.5);
r7.xy = r2.wwww*r8.xyxx +r7.yxyy;
r7.xy = r7.xyxx*l(2.0000, 2.0000, 0.0000, 0.0000) + l(-1.0000, -1.0000, 0.0000, 0.0000);
r2.w = dot(r7.xyxx, r7.xyxx);
r2.w = max(r2.w, 0.001);
r8.x = rsqrt(r2.w);
r8.yz = r7.yx * r8.xx;
r1.z = r8.z;
r1.yz = -r8.yyxy * l(0.0000, 1.0000, 0.0000, 0.0000) + r1.yyzy;
r2.w = -v3.x + cb4[r0.w + 1].x;
r5.w = r2.w * 3.0;
r5.w = cb1[0].y*l(3.0000) + r5.w;
r5.w = r5.w + 0.5;
r5.w = frac(r5.w);
r5.w = r5.w*l(2.0000) +l(-1.0000);
r8.x = abs(r5.w) * abs(r5.w);
r5.w = -abs(r5.w)*l(2.0000) +  l(3.0000);
r5.w = r5.w * r8.x;
r8.x = r7.z * 1.5;
r5.w = r5.w * r8.x;
r1.yz = r1.yz * r5.ww;
r1.yz = r1.yz * float2(0.15, 0.15);
r1.yz = r8.zzyz*r5.wwww + r1.yyzy;
r1.yz = r1.yz + r7.xy;
r5.w = 0.002 < r7.z;
r7.z = -r7.w * cb0[12].y + cb0[12].x;
if (r5.w) r1.yz = r1.yy; else r1.yz = r7.xx;
r3.x = cb4[r0.w + 0].y;
r3.z = cb4[r0.w + 2].y;
r5.y = dot(r3.xzwx, r2.xyzx);
r2.xy = cb0[5].zw + float2(2.0, 2.0);
r7.xy = cb0[5].xy-cb1[10].xz;
r7.xy = r5.xz-r7.xy;
r7.xy = r7.xy + float2(1.0, 1.0);
r2.xy = r7.xy/r2.xy;
r2.x = tex2D(t0, r2.xy).x //sample_state s1;
r2.y = r2.x * cb0[6].x + r5.y;
r2.y = -r2.y + r7.z;
r2.y = saturate(r2.y * 0.5);
r2.y = -r2.y + 1.0;
r1.yz = r1.yz * r2.yy;
r0.yz = r1.yz * cb0[7].zz;
r1.yz = float2(1.0, 1.0) < r1.xw;
r1.xw = r1.xw < float2(0, 0);
r1.x = r1.x | r1.y;
r1.x = r1.z | r1.x;
r1.x = r1.w | r1.x;
if (r1.x) r0.xyz = 0; else r0.xyz = r0.xyz;
r1.x = dot(r0.yzyy, r0.yzyy);
r1.x = sqrt(r1.x);
r1.x = -r1.x * cb0[7].y + l(1.0000);
r7.xyz = v0.xyz;
r7.w = 1.0;
r3.y = cb4[r0.w + 1].y;
r3.y = dot(r3.xyzw, r7.xyzw);
r4.y = cb4[r0.w + 1].z;
r3.z = dot(r4.xyzw, r7.xyzw);
r6.y = cb4[r0.w + 1].x;
r3.x = dot(r6.xyzw, r7.xyzw);
r3.xyz = -r5.xzy + r3.xzy;
r1.y = dot(r6.xzxx, r6.xzxx);
r1.y = rsqrt(r1.y);
r1.yz = r1.yy * r6.xz;
r1.w = r1.z * r3.y;
r1.w = r3.x * r1.y + -r1.w;
r1.y = dot(r3.yxyy, r1.yzyy);
r4.y = cb2[9].x;
r4.x = cb2[11].x;
r1.z = dot(r4.xyxx, r4.xyxx);
r1.z = rsqrt(r1.z);
r2.yz = r1.zz * r4.xy;
r1.yz = r1.yy * r2.yz;
r1.y = r1.w * r2.z + (-r1.y);
r1.z = r1.w * r2.y + r1.z;
r1.yz = r3.xy + r1.yz;
r3.w = -r1.z * cb0[7].x + r3.y;
 r3.y = -r1.y * cb0[7].x + r3.x;
r1.y = dot(r3.yzwy, r3.yzwy);
r1.y = sqrt(r1.y);
r1.x = r1.x * r1.y;
r1.y = dot(cb0[11].xyzx, cb0[11].xyzx);
r1.y = max(r1.y, 0.001);
r1.y = rsqrt(r1.y);
r1.yz = r1.yy * cb0[11].xz;
r2.yz = r5.xz + cb1[10].xz;
r4.xyz = r3.yzw + r5.xyz;
r2.yz = r2.yz/cb0[4].xx;
r2.yz = -cb0[9].xxxx * r1.yyzy r2.yyzy;
r5.xyz = tex2D(t1, r2.yz).xyz //sample_state s0;
r5.xyz = r5.xyz + float3(-0.5, -0.5, -0.5);
r1.yz = r1.yyzy * r5.zzzz + r5.xxyx;
r1.w = cb0[9].z * cb0[9].y;
r2.y = frac(r2.w);
r2.z = r2.w + cb4[r0.w + 1].y;
r2.zw = r2.zz * float2(22.0, 33.0);
r2.zw = frac(r2.zw);
r2.zw = r2.zw + float2(-0.5, -0.5);
r6.xz = r2.zw * float2(0.2, 0.2);
r2.z = r2.y-0.5;
r2.y = r2.y * cb0[10].x;
r2.y = sin(null); r2.y=cos(r2.y);
r5.yzw = (cb4[r0.w + 2].wwww >> uint3(0, 2, 8)) & uint3(0x1, 0xffffff, 0xff);
r5.yzw = float3(r5.yy, r5.z);
r2.z =  r2.z* cb0[6].y + r5.y;
r7.xy = r5.zw * float2(0.0039, 0.0039);
r2.z = r2.z * cb0[6].w + cb0[6].z;
r8.x = saturate(v3.y);
r2.w = r2.z * r8.x;
r5.z = r2.z-1.0;
r1.w = r1.w * r2.w;
r9.yw = r1.yyyz*1.wwww + r0.zzzy;
r1.yz = r1.ww * r1.yz;
r9.z = 0;
r9.xyz = r3.yzwy * l(0.1000, 1.0000, 0.1000, 0.0000) + r9.yzwy;
r1.w = dot(r9.xyzx, r9.xyzx);
r1.w = max(r1.w, 0.001);
r1.w = rsqrt(r1.w);
r9.xyz = r1.www * r9.xyz;
r10.xyz = r3.yzw * float3(0.1, 1.0, 0.1);
r9.xyz = r9.xyzx * r1.xxxx + -r10.xyzx;
r4.w = r2.x* cb0[6].x + r4.y;
r4.xyz = r4.xwz + r9.xyz;
r1.x = 255 & cb4[r0.w + 1].w ;
r1.x = r1.x // itof;
r9.z = r1.x-127.0;
r1.xw = (cb4[r0.w + 1].wwww >> uint2(8, 0)) & uint2(0xff, 0xffff);
r1.x = float(r1.x); 
o2.w = float(r1.w);
r9.x = r1.x-127.0;
r1.xw = r9.xz * float2(0.0079, 0.0079);
r1.xw = r1.xw * r1.xw;
r1.x = r1.w + r1.x;
r1.x = -r1.x + 1.0;
r1.w = 0 < r1.x;
r1.x = sqrt(r1.x);
r9.y = r1.x & r1.w ;
r10.xyz = r3.zzz * r9.xyz;
r10.xyz = r2.www * r10.xyz;
r4.xyz = r10.xyzx*l(0.0039, 0.0000, 0.0039, 0.0000) +r4.xyzx;
r1.x = r5.z * r5.z;
r1.x = min(r1.x, 1.0);
r5.yw = -r1.xx;
r8.yzw =r5.yyzw*r3.yyzw + r4.xxyz;
r3.xyz = r8.yzw-cb1[5].xyz;
r4.xyzw = r3.yyyy * cb2[22].xyzw;
r4.xyzw = cb2[21].xyzw * r3.xxxx + r4.xyzw;
r3.xyzw = cb2[23].xyzw * r3.zzzz + r4.xyzw;
r3.xyzw = r3.xyzw + cb2[24].xyzw;
o0.xyzw = r3.xyzw;
r6.y = 0;
o1.xyz = r9.xyzx * l(0.0079, 1.0000, 0.0079, 0.0000) + r6.xyzx;
o1.w = 0;
r1.x = cb0[7].w * cb0[10].y;
r1.x = r2.w * r1.x;
r1.w = max(r2.w, 0.0);
r1.x = r1.x * r2.y;
r2.x = r5.x * r1.x;
r4.xyz = v1.yyy * cb4[r0.w + 1].xyz;
r4.xyz = cb4[r0.w + 0].xyzx * v1.xxxx + r4.xyzx;
r4.xyz = cb4[r0.w + 2].xyzx * v1.zzzz + r4.xyzx;
r1.x = dot(r4.xyzx, r4.xyzx);
r1.x = rsqrt(r1.x);
r4.xyz = r1.xxx * r4.xyz;
r2.yz = float2(1.0, 0.35);
r5.xyz = r2.xyy * r4.yzx;
r2.xyz = r2.zxx * r5.xyz;
r2.xyz = r2.xyz/r1.www;
r1.yz = r1.zy/r1.ww;
r1.x = 0;
r1.xyz = r2.xyz + r1.xyz;
r0.xyz = r0.xyzx*r1.wwww + r1.xyzx;
r0.xyz = r9.yzxy*l(1.0000, 0.0079, 0.0079, 0.0000) + r0.xyzx;
r1.x = dot(r0.xyzx, r0.xyzx);
r1.x = rsqrt(r1.x);
r0.xyz = r0.xyz * r1.xxx;
r1.xyz = r4.xyz * r0.xyz;
r1.xyz = r0.zxyz * r4.yzxy  + (-r1.xyzx);
r1.w = dot(r1.xyzx, r1.xyzx);
r1.w = rsqrt(r1.w);
r1.xyz = r1.www * r1.xyz;
r2.xyz = r0.xyz * r1.xyz;
r0.xyz = r1.zxyz * r0.yzxy + (-r2.xyzx);
r1.xyz = -r8.yzw + cb1[5].xyz;
o4.xyzw = r8.xyzw;
r1.w = dot(r1.xyzx, r1.xyzx);
r1.w = rsqrt(r1.w);
r1.xyz = r1.www * r1.xyz;
r1.x = dot(r1.xyzx, r0.xyzx);
r1.y = 0 < r1.x;
r1.x = r1.x < 0;
r1.x = -r1.y + r1.x;
r1.x = r1.x // itof;
o2.xyz = r0.xyz * r1.xxx;
r0.x = 255 & cb4[r0.w + 2].w ;
r0.x = float(r0.x);
r7.z = r0.x * 0.0039;
r0.xy = (cb4[r0.w + 3].wwww >> uint2(8, 8)) & uint2(0xffff, 0xff);
r0.xy = float2(r0.x, r0.x);
r0.xy = r0.xy * float2(0.0039, 0.0039);
r1.x = 255 & cb4[r0.w + 3].w ;
r0.w = max(1.0, cb4[r0.w + 0].w);
r0.w = min(r0.w, 2.0);
r0.w = r0.w-1.0;
r1.x = float(r1.x);
r0.z = r1.x * 0.0039;
r1.xyz = -r0.xyz + r7.xyz;
r1.w = r8.x/cb0[33].y;
r2.x = r8.x-0.6;
r2.x = max(r2.x, 0);
r2.x = cb0[13].x * r2.x + l(1.0000);
r1.w = saturate(r1.w + cb0[33].z);
r0.xyz = r1.wwww * r1.xyzx + r0.xyzx;
r1.xyz = -r0.xyz + cb0[32].xyz;
r0.xyz = r0.wwww * r1.xyzx + r0.xyzx;
o3.w = r0.w;
o3.xyz = r2.xxx * r0.xyz;
r0.x = r3.y * cb1[6].x;
r0.w = r0.x * 0.5;
r0.xz = r3.xw * float2(0.5, 0.5);
o5.zw = r3.zw;
o5.xy = r0.zz + r0.xw;