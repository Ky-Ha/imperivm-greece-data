// void, Obj This, Obj target

Unit this;
Unit tgt;
bool bSleep = true;
int nTimes;

this = This.AsUnit;
tgt = target.AsUnit;

if (.IsAlive)
if (tgt != this)
if (tgt.IsAlive)
if (!target.AsHero.IsValid)
if (!target.AsShip.IsValid)
if (!target.AsCatapult.IsValid)
if (!target.AsTower.IsValid)
if (!target.AsUnit().IsRam)
if (!target.AsUnit().player == 15)
while (1)
{
	if (!.IsAlive)                 break;
	if (!tgt.IsAlive)              break;
	if (tgt.player == this.player) break;
	if (tgt.InHolder)              break;
        if (!tgt.IsMilitary)           break;
	if (!.CanSee(tgt))             break;
	bSleep = false;

    if (!.InRange(tgt)) {
        .GotoAttack(tgt, 2000, false, 2500);
        continue;
    }
	if (.stamina < 1) {
		Sleep(200);
		continue;
	}
	 .SetLastAttackTime();

	.StartAnim(17, tgt.pos);
	Sleep(.TimeToActionMoment);

	if (tgt.IsAlive)
	if (tgt.player != this.player)
	if (.IsEnemy(tgt))
	if (!tgt.InHolder)
        if (tgt.IsMilitary) 
	if (.CanSee(tgt))
	if (.stamina > 0)
	{
		.SetLastAttackTime();
		.SetStamina(.stamina - 1);
		CreateFeedback("Damage1", tgt);

		if (nTimes > 3)
        {
            if (tgt.hero.IsValid) 
         	    tgt.DetachFrom(tgt.hero);
		tgt.SetPlayer(this.player);
        }
		else
			nTimes += 1;
	}
	Sleep(.TimeToAnimFinish);
}

if (bSleep)
	Sleep(17);
