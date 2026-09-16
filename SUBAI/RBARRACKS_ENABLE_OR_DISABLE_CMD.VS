// void, Obj This

Building this;

this = This.AsBuilding();

if( (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched") )
{
	.CmdEnable("Barrack Level 1");
	.CmdEnable("Barrack Level 2");
	.CmdEnable("Barrack Level 3");
	
	.CmdEnable("trainRArcher");
		
	if(EnvReadString(.settlement, "ChooseRepublicanRome") == "researched")
	{   
	    .CmdEnable("trainRHastatus");
		.CmdEnable("trainRGladiator");
		.CmdEnable("trainRPrinciple");
		.CmdEnable("trainRScout");
		.CmdEnable("trainRTribune");
		.CmdEnable("Equip Chariot");

		while(EnvReadString(.settlement, "ChooseImperialRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{   
			    .CmdDisable("trainRAstatus");
				.CmdDisable("trainRVelit");
				.CmdDisable("trainRHorseman");
				.CmdDisable("trainRTriarius");
				.CmdDisable("trainRPraetorian");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseRepublicanRome", "");
	}	
	else if(EnvReadString(.settlement, "ChooseImperialRome") == "researched")
	{   
	    .CmdEnable("trainRHastatus");
		.CmdEnable("trainRVelit");
		.CmdEnable("trainRPrinciple");
		.CmdEnable("trainRHorseman");
		.CmdEnable("trainRPraetorian");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{   
			    .CmdDisable("trainRAstatus");
				.CmdDisable("trainRGladiator");
				.CmdDisable("trainRTriarius");
				.CmdDisable("trainRScout");
				.CmdDisable("trainRTribune");
				.CmdDisable("Equip Chariot");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseImperialRome", "");
	}	
	else if(EnvReadString(.settlement, "ChoosePunicRome") == "researched")
	{    
	    .CmdEnable("trainRAstatus");
		.CmdEnable("trainRVelit");
		.CmdEnable("trainRTriarius");
		.CmdEnable("trainRScout");
		.CmdEnable("trainRTribune");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChooseImperialRome") != "researched")
		{   
		    .CmdDisable("trainRHastatus");
			.CmdDisable("trainRGladiator");
			.CmdDisable("trainRPrinciple");
			.CmdDisable("trainRHorseman");
			.CmdDisable("trainRPraetorian");
			.CmdDisable("Equip Chariot");
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChoosePunicRome", "");
	}
}	
else
{
	.CmdDisable("Barrack Level 1");
	.CmdDisable("Barrack Level 2");
	.CmdDisable("Barrack Level 3");
	.CmdDisable("trainRHastatus");
	.CmdDisable("trainRAstatus");
	.CmdDisable("trainRArcher");
	.CmdDisable("trainRPrinciple");
	.CmdDisable("trainRTriarius");
	.CmdDisable("trainRScout");
	.CmdDisable("trainRHorseman");
	.CmdDisable("trainRGladiator");
	.CmdDisable("trainRTribune");
	.CmdDisable("Equip Chariot");
	.CmdDisable("trainRVelit");
	.CmdDisable("trainRPraetorian");
}	

Sleep(100);

// Edit by Riccardo "Highlander" Tedesco (Alias Ricky1996, Ricky96Highlander) and Alessandro Rossini (Alias Axaros)