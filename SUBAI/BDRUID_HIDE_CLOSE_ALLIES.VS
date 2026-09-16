// void, Obj This

Druid druid;
ObjList ol;
bool condition = false;
int counter = 0;

druid = This.AsDruid();

Sleep(1000 + rand(200));

if (EnvReadString(druid.player, "Mass Concealment") != "researched")
{
    Sleep(2000 + rand(1000));
    return;
}

if (druid.IsValid() == false)
    return;
	
condition = (
    druid.HasSpecial(invisibility) == true &&
    druid.command() != 'hide' &&
    druid.InHolder() == false &&
    (
        druid.command() == 'idle' ||
        druid.command() == 'stand_position'
    )
);
if (condition == false)
    return;
    

if (druid.IsVisible() == true)
{
    druid.SetCommand("hide", druid);
}

ol = Intersect(VisibleObjsInSight(druid, "Military"), FriendlyObjs(druid.player, "Military")).GetObjList();
for (counter = 0; counter < ol.count(); counter += 1)
{
    Unit u;
    u = ol[counter].AsUnit();

    if (druid.IsValid() == false || druid.IsAlive() == false || druid.stamina() <= 1)
        break;
    if (u.IsValid() == false)
        continue;
    if (druid.CanSee(u) == false)
        continue;
    if (u.IsVisible() == false)
        continue;
    if (u.IsSentry() == true)
        continue;
    if (u.IsHeirOf("ShipBattle") == true)
        continue;
    if (u.IsHeirOf("Animal") == true)
        continue;
    if (u.IsPeasantAmbient() == true)
        continue;
    if (u.player != druid.player)
        continue;
    if (u.InHolder() == true)
        continue;
    if (u.command() == 'capture')
        continue;
    if (u.EnemiesInSight() == true)
        continue;
    if (u.IsDead() == true)
        continue;
    
    if (druid.IsValid() && druid.IsAlive() == true && u.IsValid() == true)
        druid.SetCommand("hide", u);
}

Sleep(1000 + rand(200));

