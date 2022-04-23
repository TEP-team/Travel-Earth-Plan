/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.jei.JEI;

//hideCategory
val hide as string[] = 
[
    "jeresources.villager","pneumaticcraft.amadron_trade","cookingforblockheads.cowjar",
    "jetif","environmentaltech.voidminer.botanic.t5","environmentaltech.voidminer.botanic.t6",
    "environmentaltech.voidminer.ore.t5","environmentaltech.voidminer.ore.t6"
];
for Hide in hide {
    JEI.hideCategory(Hide);
}