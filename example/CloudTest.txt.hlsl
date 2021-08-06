class INPUT {
        POSITION;
        COLOR;
        TEXCOORD1;
        TEXCOORD2;
}
class OUT {
        SV_POSITION;
        TEXCOORD1;
}
void main(INPUT in) {
        r0.xyzw = in.POSITION.yyyy * cb1[1].xyzw;
        r0.xyzw = cb1[0].xyzw*in.POSITION.xxxx + r0.xyzw;
        r0.xyzw = cb1[2].xyzw*in.POSITION.zzzz + r0.xyzw;
        r0.xyzw = r0.xyzw + cb1[3].xyzw;
        r1.xyzw = r0.yyyy * cb0[1858].xyzw;
        r1.xyzw = cb0[1857].xyzw*r0.xxxx + r1.xyzw;
        r1.xyzw = cb0[1859].xyzw*r0.zzzz + r1.xyzw;
        out.SV_POSITION.xyzw = cb0[1860].xyzw*r0.wwww + r1.xyzw;
        out.TEXCOORD1.xyz = r0.xyz;
        return;
}