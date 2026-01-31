/// @desc vise en dialogboks via kø-systemet
function show_dialog(_message, _speed = 0.5) {
    if (instance_exists(obj_dialog_manager)) {
        ds_queue_enqueue(obj_dialog_manager.dialog_queue, {msg: _message, spd: _speed});
    }
}