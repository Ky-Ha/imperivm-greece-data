//void, Obj owner, Obj attached, Obj victim

int exp;

if (rand(100) > 20)
	return;
if (attached.AsUnit.InHolder())
	return;
if (attached.IsHeirOf("Hero"))
	return;

exp = owner.AsUnit().experience;
exp += 1;
owner.AsUnit.SetExperience(exp);
CreateFeedback("Experience", owner.AsUnit());