///scr_follow_state
var dir = point_direction(x, y, obj_player.x, obj_player.y);
var hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
if (hspd != 0) {
    image_xscale = sign(hspd);
}
phy_position_x += hspd;
phy_position_y += vspd;
