// @description Change rooms w/ transition
// @argument0 room to change to

var iRoomChanger = instance_create_layer(0, 0, "Transitions", oRoomChanger);
if (room_exists(argument0)) iRoomChanger.rDestination = argument0;
