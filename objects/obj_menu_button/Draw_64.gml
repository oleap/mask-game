var mx = device_mouse_x(0);
var my = device_mouse_y(0);

var hover =
    mx > x - width/2 && mx < x + width/2 &&
    my > y - height/2 && my < y + height/2;

var active = hover || is_focused;

draw_set_color(active ? c_gray : c_white);
draw_rectangle(x - width/2, y - height/2, x + width/2, y + height/2, false);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, label);