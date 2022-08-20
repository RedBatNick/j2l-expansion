/// inputOverlay(mode,callback,label)

var mode = argument[0];
var callback = argument[1];
var label = argument[2];

if (global.state == globalstate_input) 
{
    show_debug_message("inputOverlay called when state was already input");
    exit;
}

instance_create(0,0,oInputOverlay);
oInputOverlay.mode = mode;
oInputOverlay.callback = callback;
oInputOverlay.previous_state = global.state;
oInputOverlay.label = label;
oInputOverlay.textbox_label = "";
global.state = globalstate_input;
keyboard_string = "";
saveAndResetZoom();
