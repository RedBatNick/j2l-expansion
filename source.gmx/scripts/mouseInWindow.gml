///mouseInWindow()
var window_x1 = window_get_x();
var window_y1 = window_get_y();
var window_x2 = window_x1 + window_get_width();
var window_y2 = window_y1 + window_get_height();
var display_mouse_x = display_mouse_get_x();
var display_mouse_y = display_mouse_get_y();
	
return (display_mouse_x >= window_x1 && display_mouse_x <= window_x2 && display_mouse_y >= window_y1 && display_mouse_y <= window_y2);
