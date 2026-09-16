// void, Obj This

Teleport this;
ObjList losts;
int i;

this = This.AsTeleport();

Sleep(1000);

if(!.IsValid())
{
	return;
}

losts=.settlement().Units();
losts.ClearDead();
for(i=0;i<losts.count();i+=1){
	
	Unit lost;
	
	lost=losts[i].AsUnit();
	if(lost.IsValid() && lost.IsAlive() && !lost.IsHeirOf("Hero") && !lost.hero.IsValid() && lost.InHolder() && lost.GetHolderSett().GetCentralBuilding().IsHeirOf("Teleport") && lost.command()=="idle"){
		lost.SetCommand("teleport", this);
        lost.AddCommand(false, "idle");
	}
}