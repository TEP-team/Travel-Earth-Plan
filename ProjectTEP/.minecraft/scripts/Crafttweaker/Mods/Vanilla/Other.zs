/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();

//furnace
furnace.setFuel(<contenttweaker:wood_residue>, 75);

furnace.remove(<pneumaticcraft:empty_pcb:100>);
furnace.remove(<forge:bucketfilled>.withTag({FluidName: "purifiedwater", Amount: 1000}));
furnace.remove(<simpledifficulty:purified_water_bottle>);

furnace.addRecipe(<minecraft:leather>, <minecraft:rotten_flesh>, 0.1);
furnace.addRecipe(<contenttweaker:ingot_is>, <contenttweaker:tin_solder_dust>, 1);

/* using global variables (ingot, dust) */
for i, ingot in ingot {
    furnace.remove(ingot);
    furnace.addRecipe(ingot, dust[i], 1); 
}

//other
<minecraft:flint_and_steel>.maxDamage = 4;