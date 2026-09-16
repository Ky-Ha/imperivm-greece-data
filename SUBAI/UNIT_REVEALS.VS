//void, ObjList objs

int i,j;
Unit u;
ObjList ol;

for(i=0; i<objs.count(); i+=1){
	u = objs[i].AsUnit;
	if(!u.IsVisible){
		u.SetVisible(true);
		u.SetLastAttackTime();	
	}
	if(u.IsHeirOf("Hero")){
		ol = u.AsHero().army;
		for(j=0; j<ol.count(); j+=1){
			if(!ol[j].AsUnit().IsVisible){
				ol[j].AsUnit().SetVisible(true);
				ol[j].AsUnit().SetLastAttackTime();
			}
		}
	}
}
