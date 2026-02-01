var w = display_get_gui_width();
var h = display_get_gui_height();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// --- TITTEL OG UNDERTEKST ---
var _title_y = h * 0.25;
var _sub_y = h * 0.31;


draw_set_color(c_black);



draw_set_color(c_yellow); 
draw_text(w/2, _title_y, "JAMASK");
draw_set_color(c_white);
draw_text(w/2, _sub_y, "Top-down puzzle / maze");


// --- HOW TO PLAY ---
draw_set_valign(fa_top);
var _play_y = h * 0.38;
var _info = "How to play:\n- Move with WASD/Arrow keys\n- Space is action key\n- More mechanichs coming)\n- Reach the goal";


draw_set_color(c_black);
draw_text(w/2 + 1, _play_y + 1, _info);


draw_set_color(c_lime); 
draw_text(w/2, _play_y, _info);