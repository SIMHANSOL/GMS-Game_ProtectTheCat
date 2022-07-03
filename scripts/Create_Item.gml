/// Create_Item(world, stage);
drag_x = 0; drag_y = 0; drag_on = 0;

var _font = font_get_texture(Fon_Text);
texel_width = texture_get_texel_width(_font);
texel_height = texture_get_texel_height(_font);
texture = shader_get_uniform(Sha_Black_Font, "v_TexturePixelSize");

item_num_font = font_add_sprite_ext(Spr_Font_C, "0123456789", false, 0);

var _world = argument0;
var _stage = argument1;

var _i = 0; repeat(global.item_max)
{
    global.item[_i] = -1;
    global.item_n[_i] = 0;
    _i ++;
}

No_Create(_world, _stage);
global.game_time_min = 10;
global.game_time_sec = 0;

switch(_world)
{
    case 0:
    {
        switch(_stage)
        {
            case 0:
            {
                Item_Add(0, 3, false);
                Item_Add(1, 3, false);
                break;
            }
            
            case 1:
            {
                Item_Add(0, 3, false);
                break;
            }
            
            case 2:
            {
                Item_Add(0, 3, false);
                break;
            }
            
            case 3:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                break;
            }
            
            case 4:
            {
                Item_Add(0, 4, false);
                Item_Add(1, 4, false);
                break;
            }
            
            case 5:
            {
                Item_Add(0, 3, false);
                Item_Add(1, 3, false);
                break;
            }
            
            case 6:
            {
                Item_Add(0, 5, false);
                break;
            }
            
            case 7:
            {
                Item_Add(0, 3, false);
                Item_Add(1, 3, false);
                break;
            }
            
            case 8:
            {
                Item_Add(0, 4, false);
                Item_Add(1, 2, false);
                break;
            }
            
            case 9:
            {
                Item_Add(0, 6, false);
                Item_Add(1, 6, false);
                break;
            }
        }
    }
    break;
    
    case 1:
    {
        switch(_stage)
        {
            case 0:
            {
                Item_Add(0, 4, false);
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 1:
            {
                Item_Add(0, 2, false);
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 2:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 3:
            {
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 4:
            {
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 5:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 6, false);
                break;
            }
            
            case 6:
            {
                Item_Add(0, 2, false);
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 7:
            {
                Item_Add(1, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 8:
            {
                Item_Add(2, 4, false);
                Item_Add(3, 4, false);
                break;
            }
            
            case 9:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 4, false);
                Item_Add(3, 2, false);
                break;
            }
        }
    }
    
    case 2:
    {
        switch(_stage)
        {
            case 0:
            {
                Item_Add(0, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 1:
            {
                Item_Add(0, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 2:
            {
                Item_Add(0, 4, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 3:
            {
                Item_Add(1, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 4:
            {
                Item_Add(0, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 5:
            {
                Item_Add(0, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 6:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 7:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 8:
            {
                Item_Add(0, 2, false);
                Item_Add(1, 2, false);
                Item_Add(2, 2, false);
                Item_Add(3, 2, false);
                break;
            }
            
            case 9:
            {
                Item_Add(0, 6, false);
                Item_Add(1, 6, false);
                Item_Add(2, 6, false);
                Item_Add(3, 4, false);
                break;
            }
        }
    }
}
