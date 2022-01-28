/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

val map as string[string] = {
    "cyka_blyat" : "920006",
    "buttercup" : "ffee7c",
    "nggyu" : "d5ca00",
    "astronomia" : "ffdfa7",
    "peppa_pig" : "ff9aba",
    "beep" : "e3e3e3",
    "roundabout" : "8b7c68",
    "brain_power" : "0b79a0",
    "dancin" : "dc32ac",
    "jojo" : "5bff56",
    "humbuger" : "6d2f00",
    "zbc" : "890000",
    "unity" : "6c96ff",
    "kun" : "a0ffd7"
};

for key, value in map {
    VanillaFactory.createRecord(key, Color.fromHex(value));
}