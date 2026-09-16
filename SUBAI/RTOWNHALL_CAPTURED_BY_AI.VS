// void, Obj This

Building this;
Settlement set;
int current_player = 0;
bool b_ai_choose_rome = false;

Sleep(rand(800) + 200);

this = This.AsBuilding();

if (this.IsValid() == false)
	return;

if (this.race != RepublicanRome)
    return;

if (EnvReadInt(this, "ChooseRomanRace") == 1)
    return;

set = this.settlement;
current_player = set.player;

if (EnvReadString(set, "ENV_R_TOWNHALL_PLAYER_SETTED") != "YES")
{
    EnvWriteInt(set, "ENV_R_TOWNHALL_PLAYER", current_player);
    EnvWriteString(set, "ENV_R_TOWNHALL_PLAYER_SETTED", "YES");
}
b_ai_choose_rome = ( 
    current_player != EnvReadInt(set, "ENV_R_TOWNHALL_PLAYER") &&
    IsAIPlayer(current_player) == true &&
    set.IsIndependent() == false &&
    EnvReadInt(set, "ChooseRomanRace") == 0
);

if (b_ai_choose_rome == true)
{
    int random;
    
    int AVAILABLE_ROME = 3;
    // Put a value for each available Rome
    int REPUBLICAN = 0;
    int IMPERIAL = 1;
    int PUNIC = 2;

    random = rand(AVAILABLE_ROME);

    if (random == REPUBLICAN)
    {
        EnvWriteString(set, "ChooseRepublicanRome", "researched");
        EnvWriteInt(set, "ChooseRomanRace", 1);
    }
    if (random == IMPERIAL)
    {
        EnvWriteString(set, "ChooseImperialRome", "researched");
        EnvWriteInt(set, "ChooseRomanRace", 1);
    }
    if (random == PUNIC)
    {
        EnvWriteString(set, "ChoosePunicRome", "researched");
        EnvWriteInt(set, "ChooseRomanRace", 1);
    }
    
    EnvWriteInt(set, "ENV_R_TOWNHALL_PLAYER", set.player());
} 

Sleep(2000 + rand(1000));
