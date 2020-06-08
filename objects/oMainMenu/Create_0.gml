//w = global.viewResW;
//h = global.viewResH;

uiHalfW = 0.5*global.viewResW;
uiHScaled = 0.3*global.viewResH;

var _width = 300;
var _height = 80;
var _hBuffer = uiHScaled;
var _ySpace = 5;


CreateButton(uiHalfW - 0.5*_width, _hBuffer + 1*(_height + _ySpace), _width, _height, "New Game", ChangeRoom, r01, true, false);
CreateButton(uiHalfW - 0.5*_width, _hBuffer + 2*(_height + _ySpace), _width, _height, "Continue", -1, 0, false, false);
CreateButton(uiHalfW - 0.5*_width, _hBuffer + 3*(_height + _ySpace), _width, _height, "Options", -1, 0, false, false);
CreateButton(uiHalfW - 0.5*_width, _hBuffer + 4*(_height + _ySpace), _width, _height, "Quit", ChangeRoom, -1, true, false);