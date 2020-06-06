// window_mouse_get_x()
var _mX = device_mouse_x_to_gui(0);
var _mY = device_mouse_y_to_gui(0);

return (point_in_rectangle(_mX, _mY, x, y, x + w, y + h));