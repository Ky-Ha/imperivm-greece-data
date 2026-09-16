//void, Obj owner

int i, invalid;
Item item;

item = owner.GetItem(owner.item_count);

while(1){

  if(owner.GetItemIndex(item)==2){
    if(owner.GetItem(1).name== item.name){
      invalid = 1;
    }
  }
  if(owner.GetItemIndex(item)==3){
    if(owner.GetItem(1).name== item.name || owner.GetItem(2).name== item.name ){
      invalid = 1;
    }
  }
  if(owner.GetItemIndex(item)==4){
    if(owner.GetItem(1).name== item.name || owner.GetItem(2).name== item.name || owner.GetItem(3).name== item.name ){
      invalid = 1;
    }
  }

  if (invalid == 0 && owner.health <= owner.maxhealth/4){
    owner.AsUnit.AddBonus(30,0,0,0,0);
    if(owner.AsUnit.radius >= 20)
      CreateFeedback("Frenzy2", owner.AsUnit);
    else
      CreateFeedback("Frenzy", owner.AsUnit);
    Sleep(299);
    owner.AsUnit.RemoveBonus(30,0,0,0,0);
  }else{
    Sleep(1000);
  }

  invalid = 0;

}