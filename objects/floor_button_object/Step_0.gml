// Is something pressing the button?
var pressed =
    place_meeting(x, y, player_object) ||
    place_meeting(x, y, rock_object)   ||
    place_meeting(x, y, wolf_object);

// Find nearest gate
var gate_inst = instance_nth_nearest(x, y, gate_object, 1);
if (!instance_exists(gate_inst)) exit;

// --- Button pressed: OPEN gate ---
if (pressed)
{
    if (!is_active)
    {
        is_active = true;

        if (gate_inst.state != "open")
        {
            gate_inst.sprite_index = gate_sprite_full;
            gate_inst.image_index  = 0;          // start opening from closed
            gate_inst.state = "opening";
        }
    }
}
else
{
    // --- Button released: CLOSE gate ---
    if (is_active)
    {
        is_active = false;

        if (gate_inst.state != "closed")
        {
            gate_inst.sprite_index = gate_sprite_full;
            gate_inst.image_index  = gate_inst.image_number - 1; // start closing from open
            gate_inst.state = "closing";
        }
    }
}
