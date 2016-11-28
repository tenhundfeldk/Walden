///scr_dig_hole()
var xx = 0;
var yy = 0;
switch (face) {
    case DOWN:
        xx = x;
        yy = y + 20;
        break;
    case UP:
        xx = x;
        yy = y - 20;
        break;
    case RIGHT:
        xx = x + 20;
        yy = y;
        break;
    case LEFT:
        xx = x - 20;
        yy = y;
        break;
}
instance_create(xx, yy, obj_hole);
obj_player.state = scr_move_state;
