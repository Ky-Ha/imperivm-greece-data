//void, Obj THIS

Unit this;
int BestOathswornLevel;

this = THIS.AsUnit;
if (.IsValid) {
	BestOathswornLevel = EnvReadInt(.player, "BestOathswornLevel");
	if (BestOathswornLevel < .level) {
		EnvWriteInt(.player, "BestOathswornLevel", .level);
	}
}
