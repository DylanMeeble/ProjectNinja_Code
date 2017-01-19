///Idle Animations

if x_direction == 0 && y_direction == 0 && speed == 0
{
    switch (global.face_direction)
    {
        case 0:
          sprite_index == spr_brato_right_i;
          break;
        case 45:
          //sprite_index == spr_brato_ur_i;
          break;
        case 90:
          sprite_index == spr_brato_up_i;
          break;
        case 135:
          //sprite_index == spr_brato_ul_i;
          break;
        case 180:
          sprite_index == spr_brato_left_i;
          break;
        case 225:
          sprite_index == spr_brato_dl_i;
          break;
        case 270:
          sprite_index == spr_brato_down_i;
          break;
        case 315:
          sprite_index == spr_brato_dr_i;
          break;
    }
}
