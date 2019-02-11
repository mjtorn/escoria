shader_type canvas_item;

uniform float alpha_value = 0.5;

bool is_black(vec4 pixel) {
        float e = 0.0001;  // epsilon

        if (pixel.a < e) return false;  // transparent is not black

        return pixel.r < e && pixel.g < e && pixel.b < e;
}

void fragment() {
        if (is_black(texture(TEXTURE, UV))) {
                COLOR = vec4(0, 0, 0, alpha_value);
        } else {
                COLOR = vec4(1, 1, 1, 0);
        }
}

