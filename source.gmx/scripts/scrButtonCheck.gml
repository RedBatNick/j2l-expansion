///scrButtonCheck(button, [ direct ],)
//Checks whether a button is currently being pressed

var button = argument[0];

var direct = false;
if (argument_count == 2)
    direct = argument[1];

if (!global.controllerMode)
{
    if (!direct)
        return (keyboard_check(global.controls[button, 0]));
    else
        return (keyboard_check_direct(global.controls[button, 0]));
}
else
{
    return (gamepad_button_check(global.controllerIndex, global.controls[button, 1]));
}
