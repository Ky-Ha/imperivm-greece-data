//void, Obj This

Building this;
ObjList qEnemies, qFriends;

int old_player;

this = This.AsBuilding();

Sleep(rand(1000) + 500);

//pr(GetTerritoryState(MapName));

if (GetTerritoryState(MapName)==2)
	return;

if (!.settlement.IsIndependent())
	return;

old_player = .player;

qEnemies = Subtract(Intersect(ObjsInSight(this, "Unit"), Union(EnemyObjs(.player, "Military"),EnemyObjs(.player, "BaseMage"))),EnemyObjs(.player, "Sentry")).GetObjList();
qFriends = Intersect(ObjsInSight(this, "Unit"), ClassPlayerObjs("Military", .player)).GetObjList();

if (!qEnemies.count==0 && qFriends.count==0) {
	qEnemies.ClearDead();
	if (qEnemies.count>0){
		int new_player;
	
		new_player = qEnemies[rand(qEnemies.count)].player;
		.SetPlayer(new_player);
	}
	
	if (old_player!=.player){		
		old_player =.player;
		return;
	}
}