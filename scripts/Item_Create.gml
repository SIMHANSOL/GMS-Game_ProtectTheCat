/// Item Create(x, y, item);
var _x = argument0;
var _y = argument1;
var _item = argument2;

switch(_item)
{
    case 0: _item = Obj_Sky_Rego_Block; break;
    case 1: _item = Obj_Red_Rego_Block; break;
    case 2: _item = Obj_Yellow_Square_Block; break;
    case 3: _item = Obj_Green_Square_Block; break;
}

instance_create(_x, _y, _item);
