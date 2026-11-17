// Welcome! This is a Shadertoy-style shader.
// mainImage runs once for each pixel, every frame.
// Try changing a number, then watch the preview on the right.

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord / iResolution.xy;

    vec3 shallow = vec3(0.65, 0.88, 0.82);
    vec3 deep = vec3(0.08, 0.35, 0.40);

    vec3 col = mix(shallow, deep, uv.y);
    fragColor = 
}
