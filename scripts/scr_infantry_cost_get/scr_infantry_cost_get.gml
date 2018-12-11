/// @desc 砲台を購入する

// 砲台が多いほどコストが上昇する
var num = instance_number(obj_infantry);

// 砲台の数に応じて1.3倍ずつ上昇する
var base = 8;
var cost = 8 * power(1.3, (num - 1));
// 小数点以下は切り捨て
return floor(cost);
 