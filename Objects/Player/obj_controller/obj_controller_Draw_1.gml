if global.brato_alive = false
{
    draw_set_alpha(1);
    draw_set_colour(c_black);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(fnt_game_12);
    draw_text(room_width/2,room_height/2,"PRESS 'ENTER' TO RESTART");
}
