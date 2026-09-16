// void, Obj This

// Units with trumple ability DON'T ATTACK CATAPULTS!

int i;
ObjList ol;

if(This.AsUnit.HasSpecial(34)){
  ol = Intersect( EnemyObjs(This.player,"Catapult") , ObjsInCircle(This.pos,150,"Catapult") ).GetObjList;
  while(This.GetAnim == 5 && ol.count > 0){
    Sleep(594);
    ol[0].Damage(Int(This.damage*0.64));
    Sleep(594);
  }
}

Sleep(500);