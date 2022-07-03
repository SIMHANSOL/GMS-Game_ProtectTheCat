/// No_Create(World, Stage);
var _world = argument0;
var _stage = argument1;

global.no_create_number = 1;
global.no_create_width[0] = 0;
global.no_create_height[0] = 0;
global.no_create_x[0] = 0;
global.no_create_y[0] = 0;

switch(_world)
{
    // World.
    case 0:
    {
        // Stage.
        switch(_stage)
        {
            case 1:
            {
                global.no_create_number = 1;
                global.no_create_width[0] = 192;
                global.no_create_height[0] = 192;
                global.no_create_x[0] = 192;
                global.no_create_y[0] = 224;
            }
            break;
            
            case 2:
            {
                global.no_create_number = 1;
                global.no_create_width[0] = 480;
                global.no_create_height[0] = 192;
                global.no_create_x[0] = 608;
                global.no_create_y[0] = 224;
            }
            break;
        }
    }
}
