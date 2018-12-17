var cost = scr_shop_infantry_cost_get();
var money = scr_money_get();
obj_btn_buy.enabled = (cost <= money);
obj_btn_buy.label = "BUY($" + string(cost) + ")";
