/// @desc 敵を出現させる
/// @argument0 WAVE

var wave = argument0;

with (instance_create_layer(0, 0, "Instances", obj_enemy)) {
	hit_point = scr_enemy_get_hp(wave);
	
	prise = scr_enemy_get_prize(wave);

	path_endaction = scr_enemy_get_speed(wave);
}