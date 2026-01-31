// skip dialog box
var _skip = keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left);

if (_skip) {
    // viss teksten ikkje er ferdig: hopp rett til slutten
    if (char_index < string_length(text_full)) {
        char_index = string_length(text_full);
        text_visible = text_full;
    } 
    // skip dialog box, hopper til neste i køen
    else {
        instance_destroy();
    }
}

if (char_index < string_length(text_full)) {
    char_index += type_speed;
    text_visible = string_copy(text_full, 1, floor(char_index));
	
} else if (!timer_started) {
    // Start nedtellingen for fjerning først når teksten er skrevet ferdig
    alarm[0] = duration;
    timer_started = true;
}