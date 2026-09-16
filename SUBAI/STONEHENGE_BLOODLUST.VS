// void, Obj This
Building this;
this = This.AsBuilding();
PlaySound("data/Sound Entities/StonehengeSpell.xml");

SetGlobalBloodlust(true);
Sleep(GetConst("StonehengeBloodlustTime"));
SetGlobalBloodlust(false);
EnvWriteInt(this, "StonehengeStart", 0);