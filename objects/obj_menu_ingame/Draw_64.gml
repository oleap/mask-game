var w = display_get_gui_width();
var h = display_get_gui_height();

// overlay
draw_set_color(c_black);
draw_set_alpha(0.6);
draw_rectangle(0, 0, w, h, false);
draw_set_alpha(1);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(w/2, h*0.35, "PAUSED");