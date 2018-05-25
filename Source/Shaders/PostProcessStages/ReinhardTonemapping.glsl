uniform sampler2D colorTexture;

varying vec2 v_textureCoordinates;

// See equation 3:
//    http://www.cs.utah.edu/~reinhard/cdrom/tonemap.pdf

void main()
{
    vec3 color = texture2D(colorTexture, v_textureCoordinates).rgb;
    color = color / (1.0 + color);
    gl_FragColor = vec4(color, 1.0);
}
