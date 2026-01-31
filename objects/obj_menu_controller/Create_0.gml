enum MenuState { NONE, MAIN, INGAME }

menu_state = MenuState.MAIN;
menu_ui = noone;

// "spelstatus"
global.game_started = false;
global.paused = true;

function menu_spawn(_state) {
    if (instance_exists(menu_ui)) instance_destroy(menu_ui);

    menu_state = _state;

    switch (_state) {
        case MenuState.MAIN:
            menu_ui = instance_create_layer(0, 0, "Instances", obj_menu_main);
            global.paused = true;
            break;

        case MenuState.INGAME:
            menu_ui = instance_create_layer(0, 0, "Instances", obj_menu_ingame);
            global.paused = true;
            break;

        default:
            menu_ui = noone;
            global.paused = false;
    }
}

function start_game() {
    global.game_started = true;
    menu_spawn(MenuState.NONE);
	room_goto(Room1);
}

function go_main_menu() {
    global.game_started = false;
    menu_spawn(MenuState.MAIN);
	room_goto(rm_menu);
}

function restart_room() {
    room_restart();
}

// start i main menu
menu_spawn(MenuState.MAIN);
