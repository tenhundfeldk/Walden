///scr_save_game()
//Exit if the player_stats object doesn't exist
if (!instance_exists(obj_player_stats)) exit;

//Create the save datastructure
var save_data = ds_map_create();

with (obj_player_stats) {
    save_data[? "room"] = previous_room;
    save_data[? "x"] = 0;
    save_data[? "y"] = 0;
    save_data[? "hp"] = hp;
    save_data[? "maxhp"] = max_hp;
    save_data[? "holy_water"] = holy_water;
    save_data[? "maxholywater"] = max_holy_water;
    save_data[? "expr"] = expr;
    save_data[? "maxexpr"] = max_expr;
    save_data[? "level"] = level;
    save_data[? "attack"] = attack;
}

var save_string = json_encode(save_data);
ds_map_destroy(save_data);
//Encrypt the save
save_string = base64_encode(save_string);

var file = file_text_open_write(working_directory + "mysavegame.txt.");
file_text_write_string(file, save_string);
file_text_close(file);


show_message("Game Saved");
