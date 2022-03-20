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
furnace.addRecipe(<contenttweaker:material_part:24>, <contenttweaker:sub_block_holder_0:1>, 1);
furnace.addRecipe(<contenttweaker:material_part:11>, <contenttweaker:sub_block_holder_0:3>, 1);
furnace.addRecipe(<contenttweaker:material_part:59>, <contenttweaker:sub_block_holder_0:4>, 1);

for i in 0 to Items[0].length {
    furnace.addRecipe(Items[0][i], Items[2][i], 1); 
}

//seeds
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);
vanilla.seeds.removeSeed(<immersiveengineering:seed>);

//other
<minecraft:flint_and_steel>.maxDamage = 4;