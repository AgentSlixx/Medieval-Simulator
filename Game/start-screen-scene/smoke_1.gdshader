shader_type canvas_item;

uniform float amplitude_x = 10.0;
uniform float amplitude_y = 3.0;

uniform float frequency = 3.0;
uniform float speed = 4.0;

void vertex()
{
    float influence = 1.0 - UV.y;

    float wave1 = sin(UV.y * 6.0 - TIME * speed);
    float wave2 = cos(UV.y * 9.0 - TIME * speed * 1.3);

    VERTEX.x += wave1 * amplitude_x * influence;
    VERTEX.y += wave2 * amplitude_y * influence;
}