//void, Obj owner

int i, c;
Item this, count;

for(i=1;i<=4;i+=1){
	count = owner.GetItem(i);
	if(count.name == "Snake skin") c+=1;
}

if(c>2){
	this = owner.FindItem("Snake skin");
	owner.ExchangeItem(this,"Belt of snakes");
	CreateFeedback("GetItem",owner.AsUnit);
	owner.RemoveItem("Snake skin");
	owner.RemoveItem("Snake skin");
}