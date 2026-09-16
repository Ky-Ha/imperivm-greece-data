//void, Obj This, Obj this, Obj bld

Building this;
Settlement s;
int fishman;
int caso;

this = This.AsBuilding();
s = This.AsBuilding().settlement;
caso = rand(3);
fishman = EnvReadInt(.settlement(), "Fisherman");

Sleep(3800);
if(fishman > 0){
     Sleep(100);
     s.SetFood(.settlement.food+(fishman*caso));
}

if(.health<500){
     Sleep(1000);
		EnvWriteInt(s, "Fisherman", EnvReadInt(s, "Fisherman")*0);
}