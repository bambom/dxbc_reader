class INPUT {
}
class OUT {
}
void main(INPUT in) {
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