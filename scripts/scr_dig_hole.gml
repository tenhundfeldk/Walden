///scr_dig_hole()
var xx = 0;
var yy = 0;
switch (face) {
    case DOWN:
        xx = x;
        yy = y + 35;
        break;
    case UP:
        xx = x;
        yy = y - 10;
        break;
    case RIGHT:
        xx = x + 25;
        yy = y + 15;
        break;
    case LEFT:
        xx = x - 25;
        yy = y + 15;
        break;
}
instance_create(xx, yy, obj_hole);
obj_player.state = scr_move_state;
