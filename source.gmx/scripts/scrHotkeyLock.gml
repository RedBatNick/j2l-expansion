var lock = global.hotkeylock;
var key = argument[0];

return (((lock == 0 && scrButtonCheckPressed(key)) 
|| (lock == 1 && keyboard_check(vk_control) && scrButtonCheckPressed(key))))
