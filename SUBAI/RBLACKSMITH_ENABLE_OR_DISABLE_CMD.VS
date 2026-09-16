// void, Obj This

Building this;

this = This.AsBuilding();

if( (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched") )
{
	.CmdEnable("Roman Archers");
	.CmdEnable("Strenghten Stronghold Defences I");
	.CmdEnable("Strenghten Stronghold Defences II");
	
	if(EnvReadString(.settlement, "ChooseRepublicanRome") == "researched")
	{
		.CmdEnable("Roman Full Armor");
		.CmdEnable("Roman Principle");
		.CmdEnable("Roman Scout");
		.CmdEnable("Roman Chariot Wheels");
		while(EnvReadString(.settlement, "ChooseImperialRome") != "researched" && EnvReadString(.settlement, "OldRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{
				.CmdDisable("Roman Velit");
				.CmdDisable("Roman Horseman");
				.CmdDisable("Roman Praetorian");
				.CmdDisable("Roman Triarius");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseRepublicanRome", "");
	}	
	else if(EnvReadString(.settlement, "ChooseImperialRome") == "researched")
	{
		.CmdEnable("Roman Velit");
		.CmdEnable("Roman Principle");
		.CmdEnable("Roman Horseman");
		.CmdEnable("Roman Praetorian");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{
				.CmdDisable("Roman Full Armor");
				.CmdDisable("Roman Scout");
				.CmdDisable("Roman Chariot Wheels");
				.CmdDisable("Roman Triarius");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseImperialRome", "");
	}	
	else if(EnvReadString(.settlement, "ChoosePunicRome") == "researched")
	{
		.CmdEnable("Roman Velit");
		.CmdEnable("Roman Full Armor");
		.CmdEnable("Roman Scout");
		.CmdEnable("Roman Triarius");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChooseImperialRome") != "researched")
		{
			
			.CmdDisable("Roman Praetorian");
			.CmdDisable("Roman Horseman");
			.CmdDisable("Roman Chariot Wheels");
			.CmdDisable("Roman Principle");
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChoosePunicRome", "");
	}
}	
else
{
	.CmdDisable("Roman Archers");
	.CmdDisable("Roman Principle");
	.CmdDisable("Roman Triarius");
	.CmdDisable("Roman Scout");
	.CmdDisable("Roman Horseman");
	.CmdDisable("Strenghten Stronghold Defences I");
	.CmdDisable("Strenghten Stronghold Defences II");
	.CmdDisable("Roman Full Armor");
	.CmdDisable("Roman Chariot Wheels");
	.CmdDisable("Roman Velit");
	.CmdDisable("Roman Praetorian");
}	

Sleep(100);

// Edit by Riccardo "Highlander" Tedesco (Alias Ricky1996, Ricky96Highlander) and Alessandro Rossini (Alias Axaros)