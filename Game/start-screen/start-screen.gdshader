shader_type canvas_item;

uniform float amplitude_x = 9.0;
uniform float amplitude_y = 4.0;

uniform float frequency = 3.0;
uniform float speed = 4.0;

void vertex()
{
    float influence = UV.x * UV.y;

    float wave1 = sin(UV.x * frequency - TIME * speed);

    float wave2 = cos(UV.x * frequency * 0.7 - TIME * speed * 1.3);

    // Horisontal moving
    VERTEX.x += wave1 * amplitude_x * influence;

    // Vertical moving
    VERTEX.y += wave2 * amplitude_y * influence;
}