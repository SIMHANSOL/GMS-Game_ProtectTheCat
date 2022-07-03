/// Item Add(item, num, plus);
var _item = argument0;
var _item_n = argument1;
var _plus = argument2;

var _check = false;
for(var _i = 0; _i < global.item_max; _i ++;)
{
    if global.item[_i] == -1 or global.item[_i] == _item
    {
        global.item[_i] = _item;
        if _plus == false {global.item_n[_i] = _item_n;}
        else if _plus == true 
        {
            global.item_n[_i] += _item_n;
            global.item_select = _i;
            global.item_pick_slot = _i;
            Obj_System.drag_on = 2;
        }
        _check = true;
        break;
    }
}

return _check;
