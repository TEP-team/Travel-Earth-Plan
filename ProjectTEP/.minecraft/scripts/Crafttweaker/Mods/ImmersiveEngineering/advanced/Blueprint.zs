/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;

val remove as IItemStack[] = [
    <immersiveengineering:material:8>,<immersiveengineering:material:9>
];

for Remove in remove {
    Blueprint.removeRecipe(Remove);
}

Blueprint.addRecipe("components", <contenttweaker:capacitance_pack>, [<pneumaticcraft:capacitor>*16, <contenttweaker:ingot_is>*2, <mekanism:controlcircuit>, <contenttweaker:cloth_string>*6]);
Blueprint.addRecipe("components", <contenttweaker:resistance_pack>, [<pneumaticcraft:transistor>*16, <contenttweaker:ingot_is>*2, <mekanism:controlcircuit>, <contenttweaker:cloth_string>*6]);
Blueprint.addRecipe("components", <contenttweaker:nano_pack>, [<appliedenergistics2:material:8>*4, <mekanism:otherdust:5>*4, <mekanism:otherdust>*4, <thermalfoundation:material:103>*4, <ore:gemLapis>*4, <contenttweaker:cloth_string>*6]);