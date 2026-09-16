// void, Obj This

Building this;
int i, j, k, s;
ObjList ol, u;

this = This.AsBuilding();
if (!.IsValid()) return;

PlaySound("data/Sound Entities/StonehengeSpell.xml");

s = 59;
for(i=0;i<=59;i+=1){
	if(s>9){
		ShowAnnouncement("fatigue_count", Translate("Ritual de extenuación - 0:"+s));
	}else{
		ShowAnnouncement("fatigue_count", Translate("Ritual de extenuación - 0:0"+s));
	}
	for (k = 1; k <= 16; k += 1) {
		ol.AddList(GetPlayerUnits(k));
	}
	for(j=0;j<=ol.count;j+=1){
		ol[j].SetStamina(0);
		if(i==0){
			CreateFeedback("StaminaLoss",ol[j].pos);
		}
	}
	s = s-1;
	Sleep(1000);
	HideAnnouncement("fatigue_count");
}

EnvWriteInt(this, "StonehengeStart", 0);

