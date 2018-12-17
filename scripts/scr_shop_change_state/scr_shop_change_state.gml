/// @desc 購入ステータス変更
/// @argument0 ステータス(SHOP_STATE.NONE/SHOP_STATE.BUY)
obj_shop.state = argument0;

switch (obj_shop.state) {
	case SHOP_STATE.NONE:
		obj_btn_buy.visible = true;
		break;
	case SHOP_STATE.BUY:
		obj_btn_buy.visible = false;
		break;
}
