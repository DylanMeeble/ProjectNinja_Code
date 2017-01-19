///Warn to Bite
if sprite_index = spr_battle_spleek_warn
{
    alarm[4] = 1;
}

if sprite_index = spr_battle_spleek_bite
{
    attacking = false;
    atk_animate = false;
    sprite_index = spr_battle_spleek_idle;
}
