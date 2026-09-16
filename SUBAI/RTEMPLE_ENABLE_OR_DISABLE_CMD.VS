// void, Obj This

Building this;

this = This.AsBuilding();

if ((EnvReadString(.settlement, "ChooseRepublicanRome") == "researched") || (EnvReadString(.settlement, "ChooseImperialRome") == "researched") || (EnvReadString(.settlement, "ChoosePunicRome") == "researched")) {
    .CmdEnable("trainRPriest");
    .CmdEnable("Altar of Jupiter");
    .CmdEnable("Wrath of Jupiter");
    .CmdEnable("God's Gift");
    
    if (EnvReadString(.settlement, "ChooseImperialRome") == "researched") {
        .CmdEnable("Corruption");
        .CmdDisable("Cloud of Plague");
    }
    
    if (EnvReadString(.settlement, "ChooseRepublicanRome") == "researched" || EnvReadString(.settlement, "ChoosePunicRome") == "researched") {
        .CmdEnable("Cloud of Plague");
        .CmdDisable("Corruption");
    }
    
    while (EnvReadString(.settlement, "ChooseImperialRome") != "researched" || EnvReadString(.settlement, "ChooseRepublicanRome") != "researched") {
        Sleep(100);
    }
    EnvWriteString(.settlement, "ChooseRepublicanRome", "");     
    EnvWriteString(.settlement, "ChooseImperialRome", "");    
    EnvWriteString(.settlement, "ChoosePunicRome", "");    
} else {
    .CmdDisable("trainRPriest");
    .CmdDisable("Altar of Jupiter");
    .CmdDisable("Cloud of Plague");
    .CmdDisable("Wrath of Jupiter");
    .CmdDisable("God's Gift");
    .CmdDisable("Corruption");
}

Sleep(100);
