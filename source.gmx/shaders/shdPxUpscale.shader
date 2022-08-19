attribute vec3 in_Position;
attribute vec2 in_TextureCoord;

varying vec2 v_vTexcoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    v_vTexcoord = vec2(in_TextureCoord.x*800.0, in_TextureCoord.y*608.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vTexcoord;

uniform vec2 u_texelsPerPixel;

void main()
{    
    vec2 locationInTexel = fract(v_vTexcoord);
    vec2 interp_amount = clamp(locationInTexel / u_texelsPerPixel, vec2(0.0), vec2(0.5, 0.5)) +
        clamp((locationInTexel - vec2(1.0, 1.0)) / u_texelsPerPixel + vec2(0.5, 0.5), vec2(0.0), vec2(0.5, 0.5));
    vec2 finalCoords = (floor(v_vTexcoord) + interp_amount) / vec2(800.0, 608.0);
    gl_FragColor = texture2D( gm_BaseTexture, finalCoords );
}
