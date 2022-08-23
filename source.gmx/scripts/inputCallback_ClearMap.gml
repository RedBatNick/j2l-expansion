if (global.input_cancel) 
    exit;

var should_load = true;
if (global.input_bool) {
    should_load = saveMapAskName();
}

if (should_load) {
    loadStartupMap();
}

eraserRecord();
