//bool, ObjList objs

int i, j, p;
ObjList ol;

for(i=0; i<objs.count; i+=1) {
	p = 0;
	if (objs[i].AsUnit.IsValid){
		if (!objs[i].AsUnit.IsVisible)
			return true;
		if (objs[i].IsHeirOf("Hero")){
			ol = objs[i].AsHero().army;
			if(ol.count == 0)
				return false;
			for(j=0; j<ol.count; j+=1){
				if(!ol[j].AsUnit.IsVisible)
					p+=1;
			}
			if(p>0){
				return true; 
			}
		}
	}
}
return false;