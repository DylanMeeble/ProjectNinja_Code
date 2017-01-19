if !audio_is_playing(global.music_bg)
if !audio_is_playing(global.music_bg_loop)
if global.brato_alive = true
if leaving_battle = false
{
    audio_play_sound(global.music_bg_loop,10,true);
}else 
    {
        audio_stop_sound(global.music_bg);
        audio_stop_sound(global.music_bg_loop);
    }

if global.brato_alive = false
{
    if keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start)
    {
        room_goto(rm_brato_livingroom);
    }
}
