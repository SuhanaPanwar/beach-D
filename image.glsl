// Welcome! This is a Shadertoy-style shader.
// mainImage runs once for each pixel, every frame.
// Try changing a number, then watch the preview on the right.

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord / iResolution.xy;

    vec3 color1 = vec3(0.6, 0.8, 0.8);
    vec3 color2 = vec3(0.2, 0.3, 0.4);

    vec3 tgth = mix(color1, color2, uv.y);

    vec3 sand = vec3(0.9, 0.7, 0.5);

    float wave = sin(uv.x * 12.0 + iTime * 1.2) * 0.02;
    float tide = sin(iTime * 0.8) * 0.045;
    float edge = 0.3 + wave + tide;
    float shore = step(edge, uv.y);

    float foam = 1.0 - smoothstep(0.0, 0.04, uv.y - edge);
    foam *= shore;
    vec3 foamColor = vec3(0.9, 0.9, 0.8);

    tgth = mix(sand, tgth, shore);
    tgth = mix(tgth, foamColor, foam);
    fragColor = vec4(tgth, 1.0);
}
