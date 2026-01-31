if (text_full != "") {
    var _gui_w = display_get_gui_width();
    var _gui_h = display_get_gui_height();
    
    // 64-bit stil
    var _box_w = 800; 
    var _box_h = 160;
    var _x = (_gui_w - _box_w) / 2;
    var _y = _gui_h - _box_h - 40;

    // nine slice i sprite - tegn boks sjølv?
    draw_sprite_stretched(spr_dialog_box, 0, _x, _y, _box_w, _box_h);

    // tegn teksten oppå
    draw_set_font(fnt_dialog); 
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    
    // marginer inne i boksen
    draw_text_ext(_x + 40, _y + 40, text_visible, 32, _box_w - 80);
}