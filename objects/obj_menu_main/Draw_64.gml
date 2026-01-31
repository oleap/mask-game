var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(w/2, h*0.25, "MASK");
draw_text(w/2, h*0.31, "Top-down puzzle / maze");

// How to play (kort)
draw_set_valign(fa_top);
draw_text(w/2, h*0.38,
"How to play:\n- Move with WASD/Arrow keys\n- Mask mechanichs (coming)\n- Reach the goal");