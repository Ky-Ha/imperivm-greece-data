// void, Obj This

Building this;
int gold;
this = This.AsBuilding;

.Progress(.cmddelay);

gold = GetConst("InvestmentGoldRevenue");
.settlement.GoldSpent(-2000);
.settlement.SetGold(.settlement.gold + gold);
.settlement.GoldConverted(gold - 2000);
