
// パスの終端に来たらプレイヤーのライフを減らす
with (obj_heart) {
	lives--;
}

// enemyは破壊
instance_destroy();