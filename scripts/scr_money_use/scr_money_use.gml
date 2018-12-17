/// @desc お金を使う
/// @argument0 利用する金額
var val = argument0;
obj_money.money -= val;
if (obj_money.money < 0) {
	obj_money.money = 0;
}
