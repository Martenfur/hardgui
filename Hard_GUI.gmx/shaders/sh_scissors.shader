//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
    v_vPosition = in_Position;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Shader by MusNik.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec3 v_vPosition;

uniform vec4 u_Border;

void main()
{
  gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
  if (v_vPosition.x != clamp(v_vPosition.x, u_Border.x, u_Border.z))
  {gl_FragColor.a = 0.0;}
  if (v_vPosition.y != clamp(v_vPosition.y, u_Border.y, u_Border.w))
  {gl_FragColor.a = 0.0;}
}
