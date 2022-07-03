/// Save_Game();
var _buffer = buffer_create(1, buffer_grow, 1);

var _world = global.world_num;
var _stage = global.stage_num;

for(var _i = 0; _i < _world; _i ++;)
{
    for(var _k = 0; _k < _stage; _k ++;)
    {
        buffer_write(_buffer, buffer_u8, global.stage_stat[_i, _k]);
    }
}

buffer_save_ext(_buffer, "data.dat", 0, buffer_get_size(_buffer));
buffer_delete(_buffer);
