//void, ObjList objs, point pt, Obj obj, bool bReplace, bool bModifier, int player

Building this;
int cost, i;
this = objs[0].AsBuilding();
if (!.IsValid()) return;
if(EnvReadInt(this, "StonehengeStart") == 1) return;
EnvWriteInt(this, "StonehengeStart", 1);

cost = GetCmdStaminaCost("fatigue");
if (.stamina < cost) return;
.SetStamina(.stamina - cost);

.SetCommand("fatigue");

//Clean interface
for(i=1;i<=8;i+=1){
	SetPlayerStatus(i, 2, Translate(""), false);
	SetPlayerStatus(i, 3, Translate(""), false);
	SetPlayerStatus(i, 4, Translate(""), false);
}