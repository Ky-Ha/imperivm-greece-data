// void, Obj This, point pt

ObjList ol;
Druid this;
Unit tgt;
int  time, retries, i, hide_stamina_cost;
int	 timeStart;
bool bExit = false;

this = This.AsDruid;
if (!.IsAlive) return;
if (!.HasSpecial(invisibility)) return;

time = GetConst("RetryWait");
retries = GetConst("RetryCount");

//timeStart = GetTime();
//tgt = this.AsDruid.FindUnitToHide;

while (!.Goto(pt, 0, 2000, true, -1))
{
	if (tgt.IsValid) 
	if (tgt.IsVisible)	
	if (.DistTo(pt) < .sight)
		break;
//	tgt = this.AsDruid.FindUnitToHide;

	if (.TimeWithoutWalking() > 2500)
		break;
}
//while (!tgt.IsValid && retries > 0)
while (retries > 0)
{
	Sleep(time);
//	tgt = this.AsDruid.FindUnitToHide;
	ol = Intersect(VisibleObjsInSight(this,"Unit") , FriendlyObjs(.player, "Unit")).GetObjList();

	for(i = 0; i < ol.count; i += 1) {
		if (ol[i].AsUnit().IsAlive && ol[i].AsUnit().IsVisible && !ol[i].AsUnit().IsSentry && !ol[i].AsUnit().IsPeasantAmbient && !ol[i].AsUnit().IsRam){
			tgt = ol[i].AsUnit();
			 
			i = ol.count;
			//break;
		} if (i >= ol.count) bExit = true;
	}

	if (bExit || ol.count == 0)
	if (timeStart == 0){
		timeStart = GetTime();
		Sleep(500);
	}
	else
		if(GetTime() >=  timeStart + 5000) break;
		else
			Sleep (500);

	if (.IsAlive) if (tgt.IsValid)
	{
//		if (timeStart == GetTime())
			Sleep(131);
//		.AddCommand(true, "hide", pt);
//		.AddCommand(true, "hide", tgt);

		hide_stamina_cost = GetCmdStaminaCost("hide");

		while (1)
		{
			if (this != tgt && !.InRange(tgt)) {
				.GotoAttack(tgt, 2000, false, 2500);
				continue;
			}
			if (.stamina < hide_stamina_cost) {
				Sleep(200);
				continue;
			}

			if (!tgt.AsUnit().IsAlive || !tgt.AsUnit().IsVisible)
				break;

			.SetLastAttackTime();
			.StartAnim(17, tgt.pos);
			Sleep(.TimeToActionMoment);

			if (.stamina >= hide_stamina_cost)
			{
				.SetLastAttackTime();
				.SetStamina(.stamina - hide_stamina_cost);
				tgt.SetVisible(false);
				retries -= 1;
				timeStart = 0;
				if (tgt.command == "engage" || tgt.command == "attack")
					tgt.KillCommand();
			}
			Sleep(.TimeToAnimFinish);
			break;
		}
	}
}
