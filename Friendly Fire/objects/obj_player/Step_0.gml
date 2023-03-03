
var _input = rollback_get_input();

if (_input.left)
{
        x -= 2;
}
if (_input.right)
{
        x += 2;
}
if (_input.down)
{
        y += 2;
}
if (_input.up)
{
        y -= 2;
}

image_angle = point_direction(x, y, _input.mb_x, _input.mb_y);


if (_input.fire_pressed and ammo >= 1 and can_shoot = true)
{
	ammo -= 1;
	var _proj = instance_create_layer(x, y, layer, obj_projectile);
    _proj.speed = 10;
    _proj.direction = image_angle;
    _proj.image_angle = image_angle;
    _proj.player = self;
	if ammo = 0{
		can_shoot = false
	}

}

if (_input.reload)
{
	ammo = 30;
	alarm[0] = room_speed * 1;

}

function collision () 
{
	var _tx = x;
	var _ty = y;
	x = xprevious;
	y = yprevious;
	var _disx = abs(_tx - x);
	var _disy = abs(_ty - y);
	repeat(_disx){
		if !place_meeting(x + sign(_tx - x), y, obj_wall) x += sign(_tx-x);
	}
	repeat (_disy){
		if !place_meeting(x, y + sign(_ty - y), obj_wall) y += sign(_ty-y);
	}
}