// Sjekk av rom vi har landa i
if (room == rm_menu) {
    global.game_started = false;
    menu_spawn(MenuState.MAIN);
}