/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.mekanism.crusher;

crusher.removeRecipe(<mekanism:biofuel>);

crusher.addRecipe(<contenttweaker:ingot_is>, <contenttweaker:tin_solder_dust>);
crusher.addRecipe(<contenttweaker:ingot_in>, <contenttweaker:iron_with_nickel>);