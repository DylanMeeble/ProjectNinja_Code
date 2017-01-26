if !audio_is_playing(global.music_bg)
if !audio_is_playing(global.music_bg_loop)
{
    audio_stop_all();
    audio_play_sound(global.music_bg,10,false);
}

leaving_battle = false;

if room = asset_get_index("rm_town")
if bus_cutscene = 0
{
    bus_cutscene = 1;
    instance_create(2496,1632,obj_schoolbus);
    global.playing_cutscene = true;
    alarm[0] = room_speed * 5;
}
