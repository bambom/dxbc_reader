class INPUT
{
	v0.xyz
}
class OUT 
{
	o0.xyzw, position
	o1.xyz
	o2.xyz
}

dcl_temps 2
r0
r1

void main(INPUT in) {
        r0.xyzw = v0.yyyy * cb0[1].xyzw;
        r0.xyzw =  cb0[0].xyzw* v0.xxxx + r0.xyzw;
        r0.xyzw = cb0[2].xyzw*v0.zzzz + r0.xyzw;
        r1.xyz = r0.xyz + cb0[3].xyz;
        o1.xyzw = cb0[3].xyzw*v0.wwww + r0.xyzw;
        r0.xyzw = r1.yyyy * cb1[18].xyzw;
        r0.xyzw = cb1[17].xyzw*r1.xxxx+ r0.xyzw;
        r0.xyzw = cb1[19].xyzw*r1.zzzz + r0.xyzw;
        return;
}

// void main(INPUT in) {
        r0.xyzw = v0.yyyy * cb0[1].xyzw;
        r0.xyzw = cb0[0].xyzw * v0.xxxx + r0.xyzw;
        r0.xyzw = cb0[2].xyzw * v0.zzzz +  r0.xyzw;
        r0.xyzw = cb0[3].xyzw * v0.wwww +  r0.xyzw;
        r1.xyzw = r0.yyyy * cb1[18].xyzw;
        r1.xyzw = cb1[17].xyzw * r0.xxxx + r1.xyzw;
        r1.xyzw = cb1[19].xyzw * r0.zzzz + r1.xyzw;
        o0.xyzw = cb1[20].xyzw * r0.wwww + r1.xyzw;
        o1.xyzw = r0.xyzw;
        return;
}

//void main(INPUT in) 
{
  r0.xyzw = in.POSITION.yyyy * cb0[1].xyzw;
	r0.xyzw = cb0[0].xyzw*v0.xxxx+ r0.xyzw;
	r0.xyzw = cb0[2].xyzw*v0.zzzz + r0.xyzw;
	r0.xyzw = r0.xyzw + cb0[3].xyzw;
	r1.xyzw = r0.yyyy * cb0[1].xyzw;
	r1.xyzw = cb0[0].xyzw*r0.xxxx + r1.xyzw;
	r1.xyzw = cb0[2].xyzw*r0.zzzz + r1.xyzw;
	o1 = r0.xyzw;
	r0.xyzw = r1.xyzw + cb0[3].xyzw;
	r1.xyzw = r0.yyyy * cb1[18].xyzw;
	r1.xyzw = cb1[17].xyzw*r0.xxxx + r1.xyzw;
	r1.xyzw = cb1[19].xyzw*r0.zzzz + r1.xyzw;
	o0.xyzw = cb1[20].xyzw* r0.wwww + r1.xyzw;
	return;
}

//void main(INPUT in) {
	r0.xyz = v0.yyy * cb0[1].xyz;
	r0.xyz = cb0[0].xyzx*v0.xxxx + r0.xyzx;
	r0.xyz = cb0[2].xyzx*v0.zzzz+ r0.xyzx;
	r0.xyz = r0.xyz + cb0[3].xyz;
	r1.xyzw = r0.yyyy * cb0[1].xyzw;
	r1.xyzw = cb0[0].xyzw*r0.xxxx + r1.xyzw;
	r1.xyzw = cb0[2].xyzw*r0.zzzz + r1.xyzw;
	o1.xyz = r0.xyz;
	r0.xyzw = r1.xyzw + cb0[3].xyzw;
	r1.xyzw = r0.yyyy * cb1[18].xyzw;
	r1.xyzw = cb1[17].xyzw*r0.xxxx + r1.xyzw;
	r1.xyzw = cb1[19].xyzw*r0.zzzz +r1.xyzw;
	o0.xyzw = cb1[20].xyzw*r0.wwww + r1.xyzw;
	r0.xyz = v0.yyy * cb0[5].xyz;
	r0.xyz = cb0[4].xyzx*v0.xxxx + 0.xyzx;
	r0.xyz = cb0[6].xyzx*c-v0.zzzz+ r0.xyzx
	o2.xyz = r0.xyz + cb0[7].xyz;
	return;
}



// float aa = smoothstep(_MainTex_ST.x, _MainTex_ST.y , _MainTex_ST.z);
		
		r0.x = _MainTex_ST.y -_MainTex_ST.x;
		r0.y = _MainTex_ST.z -_MainTex_ST.x;
		
        r0.x = 1.0/r0.x;  = 1.0 / (_MainTex_ST.y -_MainTex_ST.x)
		
        r0.x = saturate(r0.x * r0.y);
		r0.y = r0.x * -2.000000 + 3.000000;
		
        r0.x = r0.x * r0.x;
        o0.x = r0.x * r0.y;
		
        return;
}

// float aa = clamp(_MainTex_ST.x, _MainTex_ST.y , _MainTex_ST.z);
		
		r0.x = max(_MainTex_ST.y, _MainTex_ST.x);
		r0.y = min(r0.x, _MainTex_ST.z);
	
        return;
}

// float aa = lerp(_MainTex_ST.x, _MainTex_ST.y , _MainTex_ST.z);
		
		r0.x = _MainTex_ST.y -_MainTex_ST.x;
		r0.y = _MainTex_ST.z * r0.x + _MainTex_ST.x;
	
        return;
}