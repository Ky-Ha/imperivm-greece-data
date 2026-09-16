// void, Obj This

Building this;

this = This.AsBuilding();

if (EnvReadString(.settlement, "OldRome") == "enabled") {
	.CmdEnable("buyfoodforgold");
	while (EnvReadString(.settlement, "OldRome") == "enabled") {
		Sleep(100);
	}
}

if ((EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched")) {
	.CmdEnable("RAddPop");
	.CmdEnable("Free Wine");
	.CmdEnable("Scout Area");
	.CmdEnable("investR");
	.CmdEnable("RTribute");

	if (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") {
		.CmdEnable("buyfoodforgold");
		if (EnvReadString(.settlement, "ChooseImperialRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched") {
			.CmdEnable("Import horses");
		}
		while (EnvReadString(.settlement, "ChooseImperialRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched") {
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseRepublicanRome", "");
	} else if (EnvReadString(.settlement, "ChooseImperialRome") == "researched") {
		while (EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChoosePunicRome") != "researched") {
			if (EnvReadString(.settlement, "BothRome") != "enabled") {
				.CmdDisable("buyfoodforgold");
			}
			if (EnvReadString(.settlement, "ChoosePunicRome") != "researched") {
				.CmdEnable("Import horses2");
			}
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChooseImperialRome", "");
	} else if (EnvReadString(.settlement, "ChoosePunicRome") == "researched") {
		if (EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChooseImperialRome") != "researched") {
			.CmdDisable("Import horses");
		}
		.CmdEnable("buyfoodforgold");
		while (EnvReadString(.settlement, "ChooseRepublicanRome") != "researched" && EnvReadString(.settlement, "ChooseImperialRome") != "researched") {
			Sleep(100);
		}
		EnvWriteString(.settlement, "ChoosePunicRome", "");
	}
} else {
	.CmdDisable("RAddPop");
	.CmdDisable("Free Wine");
	.CmdDisable("Import horses");
	.CmdDisable("Import horses2");
	.CmdDisable("Scout Area");
	.CmdDisable("investR");
	.CmdDisable("RTribute");
	.CmdDisable("buyfoodforgold");
}

Sleep(100);

// Edit by Riccardo "Highlander" Tedesco (Alias Ricky1996, Ricky96Highlander) and "Axaros" (Alias Alessandro Rossini)