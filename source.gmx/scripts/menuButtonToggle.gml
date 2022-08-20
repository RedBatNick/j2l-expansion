/// menuButtonToggle(x, y, w, h, enabled, icon, truetext, falsetext, condition)

// Wrapper for menuButton with "on" and "off" text.

var text_true = argument[6];
var text_false = argument[7];
var condition = argument[8];

var text = text_true;
if (!condition) 
    text = text_false;

return menuButton(argument[0],argument[1],argument[2],argument[3],text,argument[4],argument[5]);
