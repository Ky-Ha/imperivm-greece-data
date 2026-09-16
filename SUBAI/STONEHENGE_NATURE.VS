// void, Obj This

Building this;
int i, j, k, s;
ObjList ol, u;

this = This.AsBuilding();
if (!.IsValid()) return;

PlaySound("data/Sound Entities/StonehengeSpell.xml");

s = 19;
for(i=0;i<=19;i+=1){
	if(s>9){
		ShowAnnouncement("nature_count", Translate("Visión de la naturaleza - 0:"+s));
	}else{
		ShowAnnouncement("nature_count", Translate("Visión de la naturaleza - 0:0"+s));
	}
	for (k = 1; k <= 16; k += 1) {
		ol.AddList(GetPlayerUnits(k));
	}
	for(j=0;j<=ol.count;j+=1){	
		if(!ol[j].IsVisible){
			ol[j].SetVisible(true);
			ol[j].AsUnit.SetLastAttackTime();
		}
	}
	s = s-1;
	Sleep(1000);
	HideAnnouncement("nature_count");
}

EnvWriteInt(this, "StonehengeStart", 0);

