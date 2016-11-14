///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
