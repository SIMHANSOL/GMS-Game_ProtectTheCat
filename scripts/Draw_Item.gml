/// Draw_Item();
var _mx = mouse_x; var _my = mouse_y;
var _mbc_L = mouse_check_button(mb_left);
var _mbp_L = mouse_check_button_pressed(mb_left);
var _mbr_L = mouse_check_button_released(mb_left);
var _slot = 0;

for(_k = 0; _k < 1; _k += 1;) { // H.
for(_i = 0; _i < global.item_max; _i += 1;) { // W.

var _w = global.system_ui_item_width;
var _h = global.system_ui_item_height;
var _x = global.system_ui_item_x + (_w + ((_w + 20) * _i));
var _y = global.system_ui_item_y + ((_h + 0) * _k);

var __w = global.system_ui_item_box_width;
var __h = global.system_ui_item_box_height;

// 아이템 백그라운드 드로우.
draw_set_colour(c_gray);
draw_sprite(Spr_Item_Box, 0, _x, _y);
draw_sprite(Spr_Tip, 0, global.system_item_tip_x, global.system_item_tip_y);

// 아이템 드로우.
if global.item[_slot] != -1
{
    draw_sprite(Spr_Item, global.item[_slot], _x + (__w / 2), _y + (__h / 2));
    draw_set_valign(fa_right); draw_set_halign(fa_center);
    draw_set_colour(c_white); draw_set_font(item_num_font);
    draw_text(_x + 86, _y + 95, string(global.item_n[_slot]));
}

// 마우스 조작.
if _mx > _x and _my > _y and _mx < _x + _w and _my < _y + _h
{
    if _mbp_L == true
    {
        global.item_select = _slot;
        if global.item_pick_slot = -1
        {global.item_pick_slot = _slot;}
    }
    
    if _mbr_L == true
    {
        if global.item_pick_slot != -1
        {
            if global.item[global.item_pick_slot] != -1
            {
                var _it = global.item[global.item_pick_slot];
                var _it_n = global.item_n[global.item_pick_slot];
        
                if global.item[_slot] == global.item[global.item_pick_slot]
                {
                    global.item[global.item_pick_slot] = -1;
                    global.item_n[global.item_pick_slot] = 0;
                    global.item[_slot] = _it;
                    global.item_n[_slot] += _it_n;
                    global.item_select = _slot;
                }
                else
                {
                    global.item[global.item_pick_slot] = global.item[_slot];
                    global.item_n[global.item_pick_slot] = global.item_n[_slot];
                    global.item[_slot] = _it;
                    global.item_n[_slot] = _it_n;
                    global.item_select = _slot;
                }
            }
        }
    }
}

// 테두리 표시.
if global.item_select = _slot
{
    var _c = c_red;
    draw_rectangle_color(_x, _y, _x + __w, _y + __h, _c, _c, _c, _c, 1);
}

// 슬롯 초기화.
if global.item_n[_slot] <= 0
{
    global.item[_slot] = -1;
    global.item_n[_slot] = 0;
}

_slot ++;

}
}

//
if global.item[global.item_select] != -1
{
    var _info = Item_Get_Info(3, global.item[global.item_select]);
    var _speed = point_distance(0, global.system_item_tip_y, 0, (view_hview[0] - global.system_item_tip_height)) / 20;
    
    if global.system_item_tip_y > view_hview[0] - global.system_item_tip_height
    {global.system_item_tip_y -= _speed;}
    
    draw_sprite(Spr_Item, global.item[global.item_select], global.system_item_tip_x + 60, global.system_item_tip_y + 120);
    
    if (shader_is_compiled(Sha_Black_Font))
    {
        shader_set(Sha_Black_Font);        
        shader_enable_corner_id(true);
                                
        shader_set_uniform_f(texture, texel_width, texel_height);
        
        draw_set_halign(fa_left); draw_set_valign(fa_top);
        draw_set_colour(c_white); draw_set_font(Fon_Text);
        draw_text(global.system_item_tip_x + 135, global.system_item_tip_y + 105, _info);
        
        shader_reset();
        shader_enable_corner_id(false);
    }
}
else
{
    var _speed = point_distance(0, global.system_item_tip_y, 0, view_hview[0] - 70) / 20;
    
    if global.system_item_tip_y < view_hview[0] - 70
    {global.system_item_tip_y += _speed;}
}

//
if !(global.item_pick_slot = -1) and drag_on = 2
{
    //
    if global.item[global.item_pick_slot] >= 0
    {
        //
        var _width = Item_Get_Info(0, global.item[global.item_pick_slot]);
        var _height = Item_Get_Info(1, global.item[global.item_pick_slot]);
        var _sprite = Item_Get_Info(2, global.item[global.item_pick_slot]);
        var _c = c_white;
        _my -= (64 + (_height));
        x = _mx; y = _my; mask_index = (_sprite);
        
        //
        for(var _i = 0; _i < global.no_create_number; _i ++;)
        {
            
            if _mx > global.no_create_x[_i] - _width and _mx < global.no_create_x[_i] + global.no_create_width[_i] + _width
            and _my > global.no_create_y[_i] - _height and _my < global.no_create_y[_i] + global.no_create_height[_i] + _height
            or place_meeting(_mx, _my, Obj_Collision) == true or place_meeting(_mx, _my, Obj_Target) == true 
            or global.game_start == true
            {_c = c_red;}
        }
        draw_sprite_ext(_sprite, 0, _mx, _my, 1, 1, 0, _c, 0.6);
        
        //
        if _mbr_L == true and global.game_start == false and global.game_stat == 0 and _my < global.system_ui_y
        {
            //
            var _check = true;
            for(var _i = 0; _i < global.no_create_number; _i ++;)
            {
                if _mx > global.no_create_x[_i] - _width and _mx < global.no_create_x[_i] + global.no_create_width[_i] + _width
                and _my > global.no_create_y[_i] - _height and _my < global.no_create_y[_i] + global.no_create_height[_i] + _height
                or place_meeting(_mx, _my, Obj_Collision) == true or place_meeting(_mx, _my, Obj_Target) == true 
                or global.game_start == true
                {_check = false;}
            }

            //
            if _check == true and global.item[global.item_pick_slot] != -1 and global.item_n[global.item_pick_slot] > 0
            {
                Item_Create(_mx, _my, global.item[global.item_pick_slot]);
                global.item_n[global.item_pick_slot] -= 1;
            }
        }
        
        //
        if global.game_start == 0 and global.game_stat == 0
        {
            for(var _i = 0; _i < global.no_create_number; _i ++;)
            {
                draw_set_colour(c_red); draw_set_alpha(0.4);
                draw_rectangle(global.no_create_x[_i], global.no_create_y[_i], global.no_create_x[_i] + global.no_create_width[_i], global.no_create_y[_i] + global.no_create_height[_i], 0);
            }
            draw_set_alpha(1);
        }
    }
}

//
_mx = mouse_x; _my = mouse_y;

if _mbp_L == true
{
    if drag_on = 0
    {
        drag_x = _mx;
        drag_y = _my;
        drag_on = 1;
    }
}

// 드래그 좌표가 생성되었을 경우.
if drag_on == 1
{
    if point_distance(_mx, _my, drag_x, drag_y) > 5
    {drag_on = 2;}
}

if _mbc_L == false
{
    global.item_pick_slot = -1;
    drag_on = 0;
}


