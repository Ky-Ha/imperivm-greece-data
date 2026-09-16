//bool, ObjList objs, str OUT reasonText

Building this;
str production;

if(objs.count > 0)
{
	this = objs[0].AsBuilding();
	if(.IsValid())
	{
        production = EnvReadString(.settlement, "ENV_TProd");
        
        if(production != "CNumidianRider" && production != "CHorseman" && production != "CCamelRider"){
            return true;
        }
        if (production == "CNumidianRider" || production == "CCamelRider"){
            reasonText = Translate(rollover(this,false));
            reasonText = reasonText + "\n<color 255 0 0>";
            reasonText = reasonText + Translate("(A different training has already started)");
            return false;
        }
	}
}
return false;
