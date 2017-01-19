///Enemy Checks

if !instance_exists(global.enemy)
if obj_controller.leaving_battle = false
{
    alarm[11] = room_speed * audio_sound_length(snd_battle_victory_short);
    obj_controller.leaving_battle = true;
    audio_stop_sound(global.music_bg);
    audio_stop_sound(global.music_bg_loop);
    audio_play_sound(snd_battle_victory_short,50,false);
}
