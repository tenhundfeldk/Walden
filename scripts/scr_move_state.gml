///scr_move_state()

//Get the direction the player is facing
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis);

//Get the length
if (obj_input.xaxis == 0 and obj_input.yaxis == 0) {
    len = 0;
} else {
    len = spd;
}

//Get the horizontal and verticle speeds
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

//Move the character
phy_position_x += hspd;
phy_position_y += vspd;
