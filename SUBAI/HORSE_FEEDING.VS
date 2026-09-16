// void, Obj This
Unit u;
Building holder;
u = This.AsUnit();

while (1){ //sync with default feeding
  Sleep(50);
  if(u.food!=u.maxfood){
    break;
  }
}

while (1){
  if(u.food>1 && u.feeds==1){
    u.SetFood(u.food - 1);
  }

  Sleep(10000);
}
