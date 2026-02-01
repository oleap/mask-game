var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var _w = width + 20; 
var _h = height + 10;

var left   = x - _w * 0.5;
var right  = x + _w * 0.5;
var top    = y - _h * 0.5;
var bottom = y + _h * 0.5;

hover = (mx >= left && mx <= right && my >= top && my <= bottom);


draw_set_alpha(1.0); 
draw_set_color(c_black);
draw_rectangle(left, top, right, bottom, false);


draw_set_color(hover ? c_yellow : c_white);
draw_rectangle(left, top, right, bottom, true);


draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


draw_set_color(c_black);
draw_text(x + 1, y + 1, label);


draw_set_color(hover ? c_yellow : c_white);
draw_text(x, y, label);


if (hover && mouse_check_button_pressed(mb_left)) {
    if (label == "START GAME") room_goto_next();
    if (label == "QUIT") game_end();
}