//bool, ObjList objs, str OUT reasonText

Building this;
str dest, numparam, class;
int queued, build, current;

this = objs[0].AsBuilding;
dest = cmdparam;
ParseStr(dest, dest); // number to train
numparam = ParseStr(dest, dest);
class = ParseStr(dest, dest);

queued = EnvReadInt(this, "QueuedBuild/"+class);
build = EnvReadInt(this, "Build/"+class);
current = Count(.player, class) + queued + build;

if (current >= 1)
{
	reasonText = rollover(this, class, false) + "<color 255 0 0>\n" + Translate("You can only have one hero of this type");
	return false;
}

if ((cmdcost_gold > .settlement.gold) || (cmdcost_food > .settlement.food) || (cmdcost_pop > 0 && cmdcost_pop + GetConst("MinPopulation") > .settlement.population))
{
	reasonText = rollover(this, class, true);
	return true;
}

reasonText = rollover(this, class, true);
return true;
