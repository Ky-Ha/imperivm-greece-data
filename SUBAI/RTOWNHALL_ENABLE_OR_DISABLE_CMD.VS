// void, Obj This

Building this;
Unit rFlag, iFlag;

this = This.AsBuilding();

if( (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched") )
{
	.CmdDisable("ChooseRepublicanRome");
	.CmdDisable("ChooseImperialRome");
	.CmdDisable("ChoosePunicRome");
	
	if(EnvReadString(.settlement, "BothRome") == "")
	{
		.CmdEnable("createfoodmule1");
		.CmdEnable("creategoldmule1");
		.CmdEnable("createfoodmule2");
		.CmdEnable("creategoldmule2");
		.CmdEnable("autotrain_start_gr");
		.CmdEnable("townhall_military_training");
		.CmdEnable("autotrain_stop_gr");
		EnvWriteString(.settlement, "BothRome", "disabled");
	}

	if(EnvReadString(.settlement, "ChooseRepublicanRome") == "researched")
	{
		if(EnvReadString(.settlement, "Flag") != "rep")
		{
			rFlag=.settlement.ObjectsAround("RepublicanRomeFlag")[0];
			iFlag=.settlement.ObjectsAround("ImperialRomeFlag")[0];
			if( !rFlag.IsValid() )
			{
				rFlag = Place("RepublicanRomeFlag", .pos + Point(167, -225), .player);
			}
			if( iFlag.IsValid() )
			{
				iFlag.Erase();
			}
			EnvWriteString(.settlement, "Flag", "rep");
			EnvWriteInt(.settlement, "FlagPl", .player);
		}
		else
		{
			if(.player!=EnvReadInt(.settlement, "FlagPl"))
			{
				rFlag=.settlement.ObjectsAround("RepublicanRomeFlag")[0];
				if(rFlag.IsValid())
				{
					rFlag.SetPlayer(.player);
				}
				EnvWriteInt(.settlement, "FlagPl", .player);
			}
		}				
	}
	if(EnvReadString(.settlement, "ChooseImperialRome") == "researched")
	{
		if(EnvReadString(.settlement, "Flag") != "imp")
		{
			rFlag=.settlement.ObjectsAround("RepublicanRomeFlag")[0];
			iFlag=.settlement.ObjectsAround("ImperialRomeFlag")[0];
			if( !iFlag.IsValid() )
			{
				iFlag = Place("ImperialRomeFlag", .pos + Point(167, -225), .player);
			}
			if( rFlag.IsValid() )
			{
				rFlag.Erase();
			}
			EnvWriteString(.settlement, "Flag", "imp");
			EnvWriteInt(.settlement, "FlagPl", .player);
		}
		else
		{
			if(.player!=EnvReadInt(.settlement, "FlagPl"))
			{
				iFlag=.settlement.ObjectsAround("ImperialRomeFlag")[0];
				if(iFlag.IsValid())
				{
					iFlag.SetPlayer(.player);
				}
				EnvWriteInt(.settlement, "FlagPl", .player);
			}
		}	//End if.
	}	//End if.
	if(EnvReadString(.settlement, "ChoosePunicRome") == "researched")
	{
		//No available flag at the moment :(
		rFlag=.settlement.ObjectsAround("RepublicanRomeFlag")[0];
		iFlag=.settlement.ObjectsAround("ImperialRomeFlag")[0];
		if(rFlag.IsValid() == true)
		{
			rFlag.Erase();
		}
		else if(iFlag.IsValid() == true)
		{
			iFlag.Erase();
		}
		
		//You cannot enable both Rome if you have choosen Punic Rome
		EnvWriteString(.settlement, "BothRome", "disabled");
	}
}
else
{
	EnvWriteString(.settlement, "Flag", "");
	EnvWriteString(.settlement, "BothRome", "");
	EnvWriteString(.settlement, "OldRome", "");
	.CmdEnable("ChooseRepublicanRome");
	.CmdEnable("ChooseImperialRome");
	.CmdEnable("ChoosePunicRome");
	.CmdDisable("createfoodmule1");
	.CmdDisable("creategoldmule1");
	.CmdDisable("createfoodmule2");
	.CmdDisable("creategoldmule2");
	.CmdDisable("autotrain_start_gr");
	.CmdDisable("townhall_military_training");
	.CmdDisable("autotrain_stop_gr");
}	//End else.

Sleep(1000);
// Edit by Riccardo "Highlander" Tedesco (Alias Ricky1996, Ricky96Highlander) and TheMaster0017