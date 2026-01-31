var cx = display_get_gui_width() * 0.5;
var cy = display_get_gui_height() * 0.52;

// RESUME
var b1 = instance_create_layer(cx, cy, "Instances", obj_menu_button);
b1.label = "RESUME (ESC)";
b1.is_focused = true;
b1.action = function () {
    with (obj_menu_controller) menu_spawn(MenuState.NONE);
};

// RESTART
var b2 = instance_create_layer(cx, cy + 64, "Instances", obj_menu_button);
b2.label = "RESTART ROOM";
b2.action = function () {
    with (obj_menu_controller) restart_room();
};

// MAIN MENU
var b3 = instance_create_layer(cx, cy + 128, "Instances", obj_menu_button);
b3.label = "MAIN MENU";
b3.action = function () {
    with (obj_menu_controller) go_main_menu();
};