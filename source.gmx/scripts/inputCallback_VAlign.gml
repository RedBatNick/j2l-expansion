if (!stringIsInt(global.input_string) 
|| !global.input_bool) { exit; }

var decimal = real(global.input_string);
if (decimal >= 0 && decimal == floor(decimal)
&& instance_exists(oPlayer)) {
    oPlayer.y = floor(oPlayer.y) + decimal/power(10,string_length(global.input_string));
}
