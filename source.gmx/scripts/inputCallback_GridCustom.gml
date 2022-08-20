if (!stringIsInt(global.input_string)
|| !global.input_bool) { exit; }

var snap = real(global.input_string);
if (snap >= 1 && snap <= 32) {
    oEdit.snap = snap;
    saveConfig();
}
