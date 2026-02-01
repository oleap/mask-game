if (mouse_check_button_pressed(mb_left) && hover) {
    if (is_callable(action))
		audio_play_sound(1, button_press, false)
		action();
}
