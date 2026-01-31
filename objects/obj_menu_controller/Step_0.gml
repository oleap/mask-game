// ESC = pause/resume
if (keyboard_check_pressed(vk_escape) && global.game_started) {
    if (menu_state == MenuState.INGAME) menu_spawn(MenuState.NONE);
    else if (menu_state == MenuState.NONE) menu_spawn(MenuState.INGAME);
}