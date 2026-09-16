// void, Obj This

Building this;

this = This.AsBuilding();

if( (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched") )
{
	if(EnvReadString(.settlement, "ChooseRepublicanRome") == "researched")
	{
		.CmdEnable("hireheroR");
		.CmdEnable("RGladiator Shows");
		.CmdEnable("Rome Training 1");
		.CmdEnable("Rome Training 2");
		.CmdEnable("Rome Training 3");
		.CmdEnable("Veteran Offence");
		.CmdEnable("Veteran Defence");
		.CmdEnable("Veteran Health");
        .CmdEnable("RNobility");

		while(EnvReadString(.settlement, "ChooseImperialRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{
				.CmdDisable("hireheroRImperial");
				.CmdDisable("RGladiator Shows2");
				.CmdDisable("Standartization I");
				.CmdDisable("Standartization II");
				.CmdDisable("Flexibility");
				.CmdDisable("Hire Liberati");
				.CmdDisable("Hire Extraordinarii");
				.CmdDisable("Liberati guild");
				.CmdDisable("Call Socii");
				.CmdDisable("Military Academy");
				.CmdDisable("Veteran's guild");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseRepublicanRome", "");
	}	
	else if(EnvReadString(.settlement, "ChooseImperialRome") == "researched")
	{
		//Arena Commands
		.CmdEnable("hireheroRImperial");
		.CmdEnable("RGladiator Shows2");
		.CmdEnable("Standartization I");
		.CmdEnable("Standartization II");
		.CmdEnable("Flexibility");
		.CmdEnable("Hire Liberati");
		.CmdEnable("Liberati guild");
		.CmdEnable("Military Academy");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched")
		{
			if(EnvReadString(.settlement, "BothRome") != "enabled")
			{
				.CmdDisable("hireheroR");
				.CmdDisable("RGladiator Shows");
				.CmdDisable("Rome Training 1");
				.CmdDisable("Rome Training 2");
				.CmdDisable("Rome Training 3");
				.CmdDisable("Veteran Offence");
				.CmdDisable("Veteran Defence");
				.CmdDisable("Veteran Health");
				.CmdDisable("RNobility");
				.CmdDisable("Hire Extraordinarii");
				.CmdDisable("Call Socii");
				.CmdDisable("Veteran's guild");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseImperialRome", "");
	}
	else if(EnvReadString(.settlement, "ChoosePunicRome") == "researched")
	{
		.CmdEnable("hireheroR");
		.CmdEnable("RGladiator Shows2");
		.CmdEnable("Rome Training 1");
		.CmdEnable("Rome Training 2");
		.CmdEnable("Rome Training 3");
		.CmdEnable("Hire Extraordinarii");
		.CmdEnable("Call Socii");
		
		.CmdEnable("Veteran's guild");
		while(EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChooseImperialRome") != "researched")
		{
			.CmdDisable("RGladiator Shows");
			.CmdDisable("hireheroRImperial");
			.CmdDisable("Standartization I");
			.CmdDisable("Standartization II");
			.CmdDisable("Flexibility");
			.CmdDisable("Military Academy");
			.CmdDisable("Hire Liberati");
			.CmdDisable("Liberati guild");
			.CmdDisable("Veteran Offence");
			.CmdDisable("Veteran Defence");
			.CmdDisable("Veteran Health");
			.CmdDisable("RNobility");
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChoosePunicRome", "");
	}	
}	
else
{
	.CmdDisable("hireheroR");
	.CmdDisable("RGladiator Shows");
	.CmdDisable("Rome Training 1");
	.CmdDisable("Rome Training 2");
	.CmdDisable("Rome Training 3");
	.CmdDisable("Veteran Offence");
	.CmdDisable("Veteran Defence");
	.CmdDisable("Veteran Health");
    .CmdDisable("RNobility");
	.CmdDisable("Call Socii");
	.CmdDisable("hireheroRImperial");	
	.CmdDisable("RGladiator Shows2");
	.CmdDisable("Standartization I");
	.CmdDisable("Standartization II");
	.CmdDisable("Flexibility");
	.CmdDisable("Hire Liberati");
	.CmdDisable("Hire Extraordinarii");
	.CmdDisable("Liberati guild");
	.CmdDisable("Military Academy");
	.CmdDisable("Veteran's guild");
}	

Sleep(100);

// Edit by Riccardo "Highlander" Tedesco (Alias Ricky1996, Ricky96Highlander)