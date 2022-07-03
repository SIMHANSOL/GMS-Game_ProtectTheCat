/// Item_Get_Info(info, item);
var _info = argument0;
var _value = argument1;

switch(_info)
{
    // Width.
    case 0:
    {
        switch(_value)
        {
            case 0: _value = (sprite_get_width(Spr_Sky_Rego_Block) / 2); break;
            case 1: _value = (sprite_get_width(Spr_Red_Rego_Block) / 2); break;
            case 2: _value = (sprite_get_width(Spr_Yellow_Square_Block) / 2); break;
            case 3: _value = (sprite_get_width(Spr_Green_Square_Block) / 2); break;
        }
    }
    break;
    
    // Height.
    case 1:
    {
        switch(_value)
        {
            case 0: _value = (sprite_get_height(Spr_Sky_Rego_Block) / 2); break;
            case 1: _value = (sprite_get_height(Spr_Red_Rego_Block) / 2); break;
            case 2: _value = (sprite_get_height(Spr_Yellow_Square_Block) / 2); break;
            case 3: _value = (sprite_get_height(Spr_Green_Square_Block) / 2); break;
        }
    }
    break;
    
    // Sprite.
    case 2:
    {
        switch(_value)
        {
            case 0: _value = Spr_Sky_Rego_Block; break;
            case 1: _value = Spr_Red_Rego_Block; break;
            case 2: _value = Spr_Yellow_Square_Block; break;
            case 3: _value = Spr_Green_Square_Block; break;
        }
    }
    break;
    
    // Info String.
    case 3:
    {
        switch(_value)
        {
            case 0: _value = "가로 블럭"; break;
            case 1: _value = "세로 블럭"; break;
            case 2: _value = "네모 블럭"; break;
            case 3: _value = "작은 네모 블럭"; break;
        }
    }
    break;
}
return _value;
