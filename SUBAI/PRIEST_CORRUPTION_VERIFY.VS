// bool, Obj This, Obj target

Unit this;
this = This.AsUnit();

if (!.IsAlive())                    return false;
if (!target.IsAlive())              return false;
if (!target.IsMilitary())           return false;
if (target == this)                 return false;
//if (target.player == this.player) return false;
if (!.IsEnemy(target))              return false;
if (target.AsUnit)
	if (target.AsUnit.InHolder) return false;
if (!.CanSee(target))               return false;
if (target.AsHero.IsValid)          return false;
if (target.AsShip.IsValid)          return false;
if (target.AsCatapult.IsValid)      return false;
if (target.AsTower.IsValid)         return false;
if (target.AsUnit().IsRam)          return false;
if (target.AsUnit().player == 15)  return false;

return true;
