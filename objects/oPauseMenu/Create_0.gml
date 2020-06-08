w = global.viewResW;
h = global.viewResH;

uiHalfW = 0.5*w;

var _width = 300;
var _height = 80;
var _hBuffer = 0.3*h;
var _ySpace = 5;

alpha = 0;
accumulator = 0;


title = CreateTitle(uiHalfW - 0.5*_width, _hBuffer, _width, _height, "Paused", true);
b1 = CreateButton(uiHalfW - 0.5*_width, _hBuffer + 1*(_height + _ySpace), _width, _height, "Continue", TogglePause, 0, true, true);
b2 = CreateButton(uiHalfW - 0.5*_width, _hBuffer + 2*(_height + _ySpace), _width, _height, "Restart Level", ChangeRoom, 0, true, true);
b3 = CreateButton(uiHalfW - 0.5*_width, _hBuffer + 3*(_height + _ySpace), _width, _height, "Options", -1, 0, false, true);
b4 = CreateButton(uiHalfW - 0.5*_width, _hBuffer + 4*(_height + _ySpace), _width, _height, "Exit Level", ChangeRoom, rMainMenu, true, true);

elements = [title, b1, b2, b3, b4];