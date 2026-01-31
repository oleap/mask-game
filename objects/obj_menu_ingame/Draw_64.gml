var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(w * 0.5, h * 0.25, "PAUSED");
draw_text(w * 0.5, h * 0.31, "ESC to resume");
