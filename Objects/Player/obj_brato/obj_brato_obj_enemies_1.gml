global.battle_x = other.target_x;
global.battle_y = other.target_y;
global.fighting = true;
global.enemy = other.target_enemy;
global.target_battle_x = other.battle_x;
global.target_battle_y = other.battle_y;

with (obj_brato)
{
    instance_destroy();
}
room_goto(rm_battle);
