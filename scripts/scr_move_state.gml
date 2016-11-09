///scr_move_state()
scr_get_input();

//Get the direction the player is facing
dir = point_direction(0, 0, xaxis, yaxis);

//Get the length
if (xaxis == 0 and yaxis == 0) {
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
