if (!stringIsInt(global.input_string)
|| !global.input_bool) { exit; }

var spd = real(global.input_string);
if (spd >= 1 && spd <= 500) {
    room_speed = spd;
}
