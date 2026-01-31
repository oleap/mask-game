var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var left   = x - width * 0.5;
var right  = x + width * 0.5;
var top    = y - height * 0.5;
var bottom = y + height * 0.5;

hover = (mx >= left && mx <= right && my >= top && my <= bottom);

// FILL
if (hover)
    draw_set_color(c_gray);
else
    draw_set_color(c_dkgray);

draw_rectangle(left, top, right, bottom, false);

// OUTLINE (valfritt fokus)
if (hover) {
    draw_set_color(c_ltgray);
    draw_rectangle(left, top, right, bottom, true);
}

// TEXT
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, y, label);
