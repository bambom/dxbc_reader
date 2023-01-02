 dcl_globalFlags refactoringAllowed
      dcl_constantbuffer cb0[37], immediateIndexed
      dcl_constantbuffer cb1[7], immediateIndexed
      dcl_constantbuffer cb2[4], immediateIndexed
      dcl_constantbuffer cb3[21], immediateIndexed
      dcl_sampler s0, mode_default
sampler2D Enviro_Sky_Gradient
class INPUT {
	  dcl_input v0.xyzw  	// POSITION  位置
	  dcl_input v1.xy		// TEXCOORD0 UV
	  dcl_input v2.xyzw		// TEXCOORD1 
	  dcl_input v3.xyzw		// COLOR  	定点色
}
class OUT {
	  dcl_output_siv o0.xyzw, position //positionHCS 
      dcl_output o1.xyzw
      dcl_output cloudUV.xyzw
      dcl_output o3.xyzw
      dcl_output o4.xyzw
      dcl_output o5.xyz
      dcl_output o6.xyz
      dcl_output o7.xyz
      dcl_output o8.xyz
      dcl_output o9.xyz
}
void main(INPUT in) {
        r0.xyzw = v0.yyyy * cb2[1].xyzw; //cb2 是m 矩阵unity_ObjectToWorld
        r0.xyzw = cb2[0].xyzw * v0.xxxx + r0.xyzw
        r0.xyzw = cb2[2].xyzw * v0.zzzz + r0.xyzw;
        r0.xyzw = r0.xyzw + cb2[3].xyzw;   //如果是合批的 在原点 那local 到 world 不就是 单位矩阵？  r0  就是世界？
		
        r1.xyz = r0.yyy * cb3[18].xyw;
        r1.xyz = cb3[17].xywx * r0.xxxx + r1.xyzx;
        r1.xyz = cb3[19].xywx*r0.zzzz + r1.xyzx;
        r1.xyz = cb3[20].xywx*r0.wwww + r1.xyzx;  //17-20  unity_MatrixVP ，   r1 =  OUT.positionHCS = TransformObjectToHClip(IN.positionOS.xyz);
		
        r0.xyz = r0.xyz-cb0[3].xyz; //  cb0[3] [2183,195,-1037,0]   相机位置或者灯光位置？
		
        o0.xyw = r1.xyz;  //o0 齐次裁剪空间 w = -z
        o0.z = 0;           // 但是？
		
        r2.xyz = r1.xyz * float3(0.5, 0.5, 0.5);
		
        o1.w = r1.z;
        r2.w = r2.y * cb1[6].x; // cb1_v6 cb1[6].xyzw float4 -1.00, 0.25, 6000.68506, 0.00017
        o1.xy = r2.zz + r2.xw;
        o1.z = 0;			// o1 好像也没用到
		
		// cb0[35]  : x - 0 , y - 0 , z - 2 , w - _FixedSpriteId 4 .
		// cb0[36]  : x - 3 - _CloudCurTiling  , y -0.0123 -  _CloudCurAmplitude , z - 6 - _CloudCurSpeed , w - 0 ? 
		
	
        r0.w = cb0[35].z * cb0[35].w + -1.0;  // 7 
		
		// v3.y == 0.28235 , 0.8549 , 0   , 1   , 0.14118 , 0.71373 , 0.56863 
		// 		== 2.47645 , 6.4843 , 0.5 , 7.5 , 1.48826 , 5.49    , 4.48
        r0.w = v3.y * r0.w + 0.5; // v.3 是顶点色的话 ，
		//      == 2	   , 6		, 0    ,7    , 1      , 5       ,  4
        r0.w = floor(r0.w) //round_ni; //round_ni四舍五入
		
		//      == 4       , 12      ,0    ,14     ,2    , 5    ,8
        r1.x = r0.w * cb0[35].z;//  r0.w spriteId ? 
        r1.x = r1.x >= -r1.x;
        r1.x = r1.x ? cb0[35].z : -cb0[35].z; // 2  -2
		
		// - 0.5 , 0.5
        r1.y = 1.0/r1.x;
		// 1 ,3 ,0 ,3.5 ,0.5 , 2.5 ,2
        r1.y = r0.w * r1.y;
		// 1 ,3 ,0 ,3.5 ,0.5 , 2.5 ,2
        r0.w = r0.w/cb0[35].z;
		// 1 ,3 ,0 ,3  ,0  ,2  ,2
        r2.y = floor(r0.w) //round_ni;四舍五入
		// 0, 0 ,0 ,0.5,0.5,0.5,0
        r0.w = frac(r1.y);
		// 0 , 0,0 ,1   ,1  ,1 ,0
        r2.x = r0.w * r1.x; // r1.x = 2
		// [0,1][0,3][0,0][1,3][1,0][1,2][0,2] + [1,1] - [0,0] -- [0,1] -[1,0]
        r1.xy = r2.xy + v1.xy; // uv 
		// [1,2] [0,1] [0,2] [1,1] / [2/4] = [0.5,0.5] , [0,0.25] [0,0.5] [0.5,0.25] //根据顶点色的预存 , 和云数量算 uv
        cloudUV.xy = r1.xy/cb0[35].zw; // uv
		
        r1.z = _CloudCurSpeed;
        r1.w = 0.8;
		//r1.zw = [6, 0.8]
        r1.xy = r1.zw * cb0[21].zz; /cb0_v21 cb0[21].xyzw float4 0.19794, 0.50, 84.41297, 1.00 //风的强度？
		
        r1.z = 1.2;
		//r1 = [ 6*84 , 8*84 , 1.2 , 6]
        r1.w = _CloudCurSpeed;  //r1 = [ 6*84 , 8*84 , 1.2 , 6]
		//r1.xy  = [6*84  * 1.2 ,  8*84 *  6]
        r1.xy = r1.zw * r1.xy;
		
		//zw = uv.xy * _CloudCurTiling + r1.xy ; 算出噪点uv
        cloudUV.zw = v1.xxxy * _CloudCurTiling.xxxx + r1.xxxy; //噪点uv
		
		///==== 开始计算光照 ？
        r0.w = dot(r0.xyzx, r0.xyzx);
        r0.w = rsqrt(r0.w);
        r0.xyz = r0.www * r0.xyz;  //就是进行r0. 的normalize
		
		//cb0[4]  [0,1,0,0] up? 角度
        r1.x = dot(cb0[4].xyzx, r0.xyzx); // x 会一直大于0 吧？
		
        r1.y = max(r1.x, -1.0);
        r1.y = min(r1.y, 1.0);
		//r1.y = clamp(r1.x,-1,1);
		
        r1.z = abs(r1.y)*(-0.0187) + 0.0743;
        r1.z = r1.z*abs(r1.y)  -0.2121;
        r1.z = r1.z*abs(r1.y) + 3.1416/2;  // 3.14/2 = 1.5707
		
        r1.w = -abs(r1.y) + 1.0;
        r1.y = r1.y < -r1.y;
        r1.w = sqrt(r1.w);
        r2.x = r1.w * r1.z;
        r2.x = r2.x*(-2.0000)+ 3.1416;//  Π
        r1.y = r1.y & r2.x ;
        r1.y = r1.z*r1.w + r1.y;
        r1.y = -r1.y + 1.5708; //  Π/2 = 1.5708
        r0.w = r1.y * 0.6366; //  2/Π = 0.6366
        o3.xyzw = r0.xyzw;// 就是标准方向 ，加一个角度值
      
		
	    //v2  89 ,30 , 0.4, 0.6 ,, 消融信息？
        r1.y = -v2.w + 1.0;
        r1.y = 1.0/r1.y;
        r1.z = max(v2.x, 0.0);
        r1.z = v2.y/r1.z;
        r1.w = r1.z*cb0[27].w -v2.w;
        r1.z = r1.z * cb0[27].w;
      
        r1.y = saturate(r1.y * r1.w);
      
        r1.w = r1.y*-2.0000+ 3.0;
        r1.y = r1.y * r1.y;
        r1.y = -r1.w*r1.y + 1.0000;
        r1.w = 1.0/v2.z;
     
        r1.z = saturate(r1.w * r1.z);
        r1.w = r1.z*(-2.0000) + 3.0;
        r1.z = r1.z * r1.z;
        
        r1.z = r1.z * r1.w;
        o4.w = -r1.z*r1.y + 1.0;
        r1.y = dot(r0.xyzx, cb0[15].yzwy);
        r0.x = dot(r0.xyzx, cb0[19].xyzx);
        r0.y =r1.y * 0.5 + 0.5;
        o4.x = r0.y * cb0[28].w;
        o4.yz = v3.zw;
        r0.z = r1.y*cb0[10].w -cb0[10].w;
        r1.y = r1.y*cb0[26].w -cb0[26].w;
        r1.y = r1.y + 1.0;
        r1.y = max(r1.y, 0);
        r0.z = r0.z + 1.0;
        r0.z = max(r0.z, 0);
        r1.z = r0.z * r0.z;
        r0.z = r0.z * r1.z;
        r2.xyz = cb0[9].xyz-cb0[10].xyz;
     
        r2.xyz = r0.zzzz* r2.xyzx + cb0[10].xyz;
     
        r3.xyz = cb0[7].xyz-cb0[8].xyz;
      
        r3.xyz = r0.zzzz*r3.xyzx +  cb0[8].xyzx;
        r2.xyz = r2.xyz-r3.xyz;
        r0.z = max(cb0[12].x, 0.0001);//避免除0
     
        r4.x = r0.w/r0.z;
        r4.yw = float2(0.5, 0.5);
        r0.z = tex2D(Enviro_Sky_Gradient, r4.xy).x //sample_state s0;
        r2.xyz = r0.zzzz*r2.xyzx + r3.xyzx;
        r0.z = max(cb0[15].x, 0.0001);
        r4.z = r0.w/r0.z;
        r0.z = tex2D(Enviro_Sky_Gradient, r4.zw).y //sample_state s0;
        r3.xyz = cb0[12].yzw * cb0[13].xxx;
        r3.xyz = r0.zzz * r3.xyz;
     
        r0.z = abs(cb0[15].z)-0.2;
        r0.z = saturate(r0.z * 3.3333);
        r0.w = r0.z*(-2.0) + 3.0;
       
        r0.z = r0.z * r0.z;
     
        r0.z = r0.z * r0.w;
       
        r0.w = max(r0.y, 0);
        r1.zw = r0.ww + float2(-0.3, -0.5);
        r0.w = min(r0.w, 1.0);
     
        r0.w = log2(r0.w);
        
        r1.z = saturate(r1.z * 1.4286);
        
        r1.w = saturate(r1.w + r1.w);
        r2.w = r1.z*(-2.0000) + 3.0;
        r1.z = r1.z * r1.z;
        
        r3.w = r1.z * r2.w;
        r1.z = -r2.w*r1.z + 1.0;
        r0.z = r0.z*r1.z +r3.w ;
        r2.xyz = r3.xyzx*r0.zzzz + r2.xyzx;
        r0.z =  abs(r1.x) * cb0[17].w;
        r1.z = r0.w * r0.z;
        r3.xyz = r0.zzz * float3(0.1, 0.01, 0.5);
        r3.xyz = r0.www * r3.xyz;
        r3.xyz = exp2(r3.xyzx);
     
        r0.z = exp2(r1.z);
        r0.z = min(r0.z, 1.0);
        r3.xy = min(r3.xy, float2(1.0, 1.0));
        r0.w = saturate(r1.x * r3.z);
        r0.w = r0.w * cb0[18].w;
        r4.xyz = r0.www * cb0[16].xyz;
     
        r0.z = r3.x*0.12 + r0.z;
        r0.z = r3.y*0.03 + r0.z;
        r0.z = r0.z * cb0[18].w;
     
        r3.xyz = r0.zzz * cb0[18].xyz;
        r0.z = r1.w * -2.0 + 3.0;
     
        r0.w = r1.w * r1.w;
        r0.z = r0.w * r0.z;
     
        o5.xyz = r3.xyzx* r0.zzzz + r2.xyz;
        r0.z = saturate(r0.x);
        r0.x = r0.x*0.5 +0.5;
        r0.xy = r0.xy-cb0[17].zz;
        r0.w = r0.z * r0.z;
       
        r0.w = r0.w * r0.w;
       
        r0.z = r0.w* r0.z -0.5;
        r0.z = r0.z + r0.z;
       
        r0.z = max(r0.z, 0);
      
       r0.w = r0.z * -2.0 + 3.0;
       
        r0.z = r0.z * r0.z;
        r0.z = r0.z * r0.w;
        r0.z = r0.z * cb0[21].x;
        r0.w = cb0[21].y-0.5;
        r0.w =  -r0.w*2.0 + 1.0;
       
        r0.z = r0.w * r0.z;
        r1.xzw = r0.zzz * cb0[20].xyz;
      
        r0.z = max(cb0[20].w, 0);
     
        r0.z = min(r0.z, 0.8);
        r1.xzw = r1.xxzw*r0.zzzz + r4.xxyz;
        r0.z = -cb0[27].z + 0.7;
        r0.z = saturate(r0.z * 2.5);
        r0.w = r0.z*-2.0 +  3.0 ;
        r0.z = r0.z * r0.z;
        r0.z = r0.z * r0.w;
        o6.xyz = r0.zzz * r1.xzw;
        r0.w = -cb0[17].z + 1.0;
        r0.w = 1.0/r0.w;
        r0.xy = saturate(r0.ww * r0.xy);
        r0.w = r0.x*-2.0 + 3.0;
        r0.x = r0.x * r0.x;
        
        r0.x = r0.x * r0.w;
       
        r0.x = r0.x * cb0[20].w;
      
        r0.x = r0.x * 0.1;
        r0.x = r0.x * r0.x;
        r1.xzw = r0.xxx * cb0[20].xyz;
        r0.x = r0.y*-2.0 +3.0;
        r0.y = r0.y * r0.y;
        r0.x = r0.y * r0.x;
        r0.x = r0.x * cb0[16].w;
        r0.x = r0.x * 0.125;
        r0.x = r0.x * r0.x;
      
        r0.xyw = cb0[18].xyxz*r0.xxxx+ r1.xzxw;
        o7.xyz = r0.zzz * r0.xyw;
        r0.x = r1.y * r1.y;
        r0.x = r1.y * r0.x;
        r0.yzw = cb0[23].xyz-cb0[24].xyz;
        
        o8.xyz = r0.xxxx*r0.yzwy + cb0[24].xyzx;
        r0.yzw = cb0[25].xyz-cb0[26].xyz;
        o9.xyz = r0.xxxx*r0.yzwy + cb0[26].xyzx
        ret
        return;
}