/*

   Copyright (C) 2005 guest(r) - guest.r@gmail.com

   This program is free software; you can redistribute it and/or
   modify it under the terms of the GNU General Public License
   as published by the Free Software Foundation; either version 2
   of the License, or (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*/

/*

   The GS2xTwo shader processes a gfx. surface and redraws it 2x finer.
   
   It can be used well to:
   
   - scale an "image" into a 2x size (like 320x200->640x400 or 640x480->1280x960)

   - scale an "image" to a 4x size, but with bigger "granula" (i.e. 320x240 -> 1280x960)

*/

#include "shader.code"

float scaling   : SCALING = 2.0;


string name : NAME = "GS2xTwo";
string combineTechique : COMBINETECHNIQUE =  "GS2xTwo";


VERTEX_STUFF1 GS2X_VERTEX (float3 p : POSITION, float2 tc : TEXCOORD0)
{
  VERTEX_STUFF1 OUT = (VERTEX_STUFF1)0;
  
  float dx = ps.x*0.5;
  float dy = ps.y*0.5;

  OUT.coord = mul(float4(p,1),WorldViewProjection);
  OUT.CT = tc;
  OUT.UL = tc + float2(-dx,-dy);
  OUT.UR = tc + float2( dx,-dy);
  OUT.DL = tc + float2(-dx, dy);
  OUT.DR = tc + float2( dx, dy);
  return OUT;
}


float4 GS_FRAGMENT ( in VERTEX_STUFF1 VAR ) : COLOR

{
  half3 c11 = tex2D(s_p, VAR.CT).xyz;
  half3 c00 = tex2D(s_p, VAR.UL).xyz;
  half3 c20 = tex2D(s_p, VAR.UR).xyz;
  half3 c02 = tex2D(s_p, VAR.DL).xyz;
  half3 c22 = tex2D(s_p, VAR.DR).xyz;	

  half w1=dot(abs(c22-c11),dt);
  half w2=dot(abs(c02-c11),dt);
  half w3=dot(abs(c00-c11),dt);
  half w4=dot(abs(c20-c11),dt);

  float t1=max(w1,w3);
  float t2=max(w2,w4);
  float m1=t1/t2;
  float m2=t2/t1;
  w1*=m2; w2*=m1;
  w3*=m2; w4*=m1; 

  return float4((w1*c00+w2*c20+w3*c22+w4*c02+0.001*c11)/(w1+w2+w3+w4+0.001),0);
}


technique GS2xTwo
{
   pass P0
   {
     VertexShader = compile vs_2_0 GS2X_VERTEX();
     PixelShader  = compile ps_2_0 GS_FRAGMENT();
   }  
}
