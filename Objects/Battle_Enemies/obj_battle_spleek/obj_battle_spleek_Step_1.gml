event_inherited();

if irandom(100) = 1
if sprite_index = spr_battle_spleek_idle
if attacking = false
{
    attacking = true;
    alarm[3] = room_speed * 1;
}

if enemy_health = 0
{
    audio_play_sound(snd_spleek_death,5,false);
}

if irandom(150) = 5
if range_attacking = false
{
    range_attacking = true;
    instance_create(697,691,obj_battle_spikes);
}
