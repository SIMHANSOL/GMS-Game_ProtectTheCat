/// Load_Game();
var _buffer = buffer_create(1, buffer_grow, 1);

var _world = global.world_num;
var _stage = global.stage_num;

buffer_load_ext(_buffer, "data.dat", 0);
if buffer_get_size(_buffer) > 1
{
    for(var _i = 0; _i < _world; _i ++;)
    {
        for(var _k = 0; _k < _stage; _k ++;)
        {
            global.stage_stat[_i, _k] = buffer_read(_buffer, buffer_u8);
        }
    }
}

buffer_delete(_buffer);
