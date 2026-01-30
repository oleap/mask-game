var _left  = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up    = keyboard_check(vk_up)    || keyboard_check(ord("W"));
var _down  = keyboard_check(vk_down)  || keyboard_check(ord("S"));

var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(player_speed, _dir);
    var _yadd = lengthdir_y(player_speed, _dir);

    x += _xadd;
    if (place_meeting(x, y, wall_object))
    {
        x -= _xadd;
    }

    y += _yadd;
    if (place_meeting(x, y, wall_object))
    {
        y -= _yadd;
    }
}
