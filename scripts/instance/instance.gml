function instance_nth_nearest(x, y, object, n)
{
    n = clamp(instance_number(object), 1, n);
    var list = ds_priority_create();
    var nearest = noone;
    with (object) ds_priority_add(list, id, distance_to_point(x, y));
    repeat (n) nearest = ds_priority_delete_min(list);
    ds_priority_destroy(list);
    return nearest;
}