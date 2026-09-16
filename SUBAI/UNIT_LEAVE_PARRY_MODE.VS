//void, Obj me

int i;
Unit this;
ObjList ol;

this = me.AsUnit();

if (me.IsHeirOf("Hero")){
	ol = me.AsHero().army;
	for(i=0;i<ol.count;i+=1){
		ol[i].AsUnit.SetParryMode(false);
	}
}else{
	if(.IsValid)
		.SetParryMode(false);
}
