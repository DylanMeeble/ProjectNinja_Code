///Is Brato Alive?

if global.brato_health = 0
if global.brato_alive = true
{
    global.brato_alive = false;
    global.fighting = false;
    with(obj_brato_battle)
    {
        instance_destroy();
    }
    audio_play_sound(snd_brato_death,50,true);
    audio_stop_sound(global.music_bg);
    audio_stop_sound(global.music_bg_loop);
}

//Is Brato Visible?
if flash_total = 0 and visible = false
{
    visible = true;
}
