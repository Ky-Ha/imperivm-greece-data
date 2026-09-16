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
	EnvWriteString(.settlement(), "ENV_TProd", "CNumidianRider");
	return;
}

if(StrCmp(carCmdParam, "TArcher") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "CHorseman");
	return;
}

if(StrCmp(carCmdParam, "TWolf") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "CCamelRider");
	return;
}

if(StrCmp(carCmdParam, "Nothing") == 0)
{
	EnvWriteString(.settlement(), "ENV_TProd", "Nothing");
	return;
}
