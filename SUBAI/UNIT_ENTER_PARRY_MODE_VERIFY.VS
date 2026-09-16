//bool, ObjList objs
int i, j, p;
Unit u;
ObjList ol;

for(i=0; i<objs.count(); i+=1) {
	u = objs[i].AsUnit;
	p = 0;
	if (u.IsValid){
		if (u.HasSpecial(parry) && u.GetParryMode() == 0)
			return true;
		if (objs[i].IsHeirOf("Hero")){
			ol = objs[i].AsHero().army;
			if(ol.count == 0)
				return false;
			for(j=0; j<ol.count; j+=1){
				if(ol[j].AsUnit.HasSpecial(parry) && ol[j].AsUnit.GetParryMode() == 0)
					p+=1;
			}
			if(p>0){
				return true;
			}
		}
	}
}
return false;

