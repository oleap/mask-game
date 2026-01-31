//Main menu / knappar i GUI-koordinatar
var cx = display_get_gui_width() * 0.5;
var cy = display_get_gui_height() * 0.55;

// START
var b1 = instance_create_layer(cx, cy, "Instances", obj_menu_button);
b1.label = "START GAME";
b1.is_focused = true;
b1.action = function () {
    with (obj_menu_controller) start_game();
};

// QUIT
var b2 = instance_create_layer(cx, cy + 64, "Instances", obj_menu_button);
b2.label = "QUIT";
b2.action = function () {
    game_end();
};

