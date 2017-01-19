if !audio_is_playing(global.music_bg)
if !audio_is_playing(global.music_bg_loop)
{
    audio_stop_all();
    audio_play_sound(global.music_bg,10,false);
}

leaving_battle = false;
