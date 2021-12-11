/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var logs_ = <ore:logWood>;
var planks_ = <ore:plankWood>;

val planks as IItemStack[] = [<minecraft:planks>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>];
val logs as IItemStack[] = [<minecraft:log>,<minecraft:log:1>,<minecraft:log:2>,<minecraft:log:3>,<minecraft:log2>,<minecraft:log2:1>];
for Planks in planks {
    recipes.remove(Planks);
}
for Logs in logs {
    recipes.remove(Logs);
}
for pn, Planks in planks {
    recipes.addShapeless(Planks*2, [logs[pn]]);
    recipes.addShapeless(Planks*4, [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),logs[pn]]);
}

recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick>*2,
    [[<ore:plankWood>],
	 [<ore:plankWood>],
	 [<ore:plankWood>]]);

recipes.addShapeless(<minecraft:dye:15>*4,
    [<minecraft:dye:15>,<cropdusting:poop>]);