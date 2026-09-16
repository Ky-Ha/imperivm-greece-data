//void, Obj This

Building this;
str carCmdParam, cdrCmdParam; 

this = This.AsBuilding();

if(.IsValid() == false)
	return;
if(.settlement().IsIndependent() == true)
	return;

carCmdParam = ParseStr(cmdparam, cdrCmdParam); 


if(StrCmp(carCmdParam, "TRider") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "TTeutonRider");
	return;
}

if(StrCmp(carCmdParam, "TArcher") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "TTeutonArcher");
	return;
}

if(StrCmp(carCmdParam, "TWolf") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "TTeutonWolf");
	return;
}

if(StrCmp(carCmdParam, "Nothing") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "Nothing");
	return;
}
