///Animation triggers
//Moving
if sprite_index = spr_brato_battle_left
{
    self_moving = false;
}
if sprite_index = spr_brato_battle_right
{
    self_moving = false;
}
//Punching
if sprite_index = spr_brato_battle_punch1
{
    sprite_index = spr_brato_battle_idle;
}

if sprite_index = spr_brato_battle_punch2
{
    sprite_index = spr_brato_battle_idle;
}

if sprite_index = spr_brato_battle_punch3
{
    sprite_index = spr_brato_battle_idle;
}
