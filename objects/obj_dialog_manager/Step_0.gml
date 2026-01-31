if (!instance_exists(obj_dialog_box) && !ds_queue_empty(dialog_queue)) {
    var _data = ds_queue_dequeue(dialog_queue);
    var _inst = instance_create_layer(0, 0, "Instances", obj_dialog_box);
    _inst.text_full = _data.msg;
    _inst.type_speed = _data.spd;
}