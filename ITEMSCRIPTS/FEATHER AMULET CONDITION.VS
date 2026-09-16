//void, Obj owner

int i, c;
Item this, count;

for(i=1;i<=4;i+=1){
	count = owner.GetItem(i);
	if(count.name == "Eagle feather") c+=1;
}

if(c>2){
	this = owner.FindItem("Eagle feather");
	owner.ExchangeItem(this,"--Feather amulet--");
	CreateFeedback("GetItem",owner.AsUnit);
	owner.RemoveItem("Eagle feather");
	owner.RemoveItem("Eagle feather");
}