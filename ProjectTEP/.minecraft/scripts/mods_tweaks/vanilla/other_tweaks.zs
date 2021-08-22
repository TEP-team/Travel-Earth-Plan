/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var iron = <ore:ingotIron>;

//seeds
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);

//furnace
furnace.addRecipe(<minecraft:leather>,<minecraft:rotten_flesh>,15);

val furnace as IItemStack[] = [<pneumaticcraft:empty_pcb:100>,<variedcommodities:ingot_steel>];
for RemoveF in furnace {
    furnace.remove(RemoveF);
}

//mods
val mw = loadedMods["mw"].items;
for MW in mw {
    recipes.remove(MW);
    furnace.remove(MW);
}

val crafting_table as IItemStack[] = [<variedcommodities:mana>,<variedcommodities:bullet>,<variedcommodities:vcrecipes_book>];
for RemoveC in crafting_table {
    recipes.remove(RemoveC);
}

recipes.remove(<bonsaitrees:bonsaipot>);
recipes.addShaped(<bonsaitrees:bonsaipot>,
    [[iron,null,iron],
	 [iron,iron,iron]]);

recipes.remove(<spiceoflife:bookfoodjournal>);
recipes.addShapeless(<spiceoflife:bookfoodjournal>,
    [<minecraft:book>,<minecraft:wheat>]);

recipes.remove(<spiceoflife:lunchbag>);
recipes.addShaped(<spiceoflife:lunchbag>,
    [[null,<contenttweaker:cloth_string>,null],
	 [<contenttweaker:cloth_string>,<spiceoflife:bookfoodjournal>,<contenttweaker:cloth_string>],
	 [null,<contenttweaker:cloth_string>,null]]);

recipes.remove(<spiceoflife:lunchbox>);
recipes.addShaped(<spiceoflife:lunchbox>,
    [[null,iron,null],
	 [iron,<spiceoflife:lunchbag>,iron],
	 [null,iron,null]]);