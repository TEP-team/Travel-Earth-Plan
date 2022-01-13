/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 60000
import mods.mekanism.crusher;

//dusts
for r, DustInt in dustInt {
    val dusts = materials.makeStack(DustInt);
    val ingots = materials.makeStack(ingotInt[r]);
    crusher.addRecipe(ingots,dusts);
}

//remove
crusher.removeRecipe(<mekanism:biofuel>);

//add
crusher.addRecipe(<contenttweaker:ingot_is>,<contenttweaker:tin_solder_dust>);
crusher.addRecipe(<contenttweaker:ingot_in>,<contenttweaker:iron_with_nickel>);
crusher.addRecipe(<botania:cellblock>,<mekanism:biofuel>);