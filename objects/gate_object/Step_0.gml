/*
var button = instance_nth_nearest(x, y, floor_button_object, 1);

if (!instance_exists(button))
	exit;
	
if (button.is_active)
{
	self.is_open = true;
	self.sprite_index = gate_sprite_full;
}
else
{
	self.is_open = false;
	self.sprite_index = gate_sprite_closed;
}

*/

switch (self.state)
{
    case "opening":
        image_speed = 1;
        if (image_index >= image_number - 1)
        {
            image_speed = 0;
            self.state = "open";
			self.is_open = true;
        }
    break;

    case "closing":
        image_speed = -1;
        if (image_index <= 0)
        {
            image_speed = 0;
            self.state = "closed";
			self.is_open = false;
        }
    break;
}
