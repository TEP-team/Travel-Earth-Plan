/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var paper = <minecraft:paper>;
var logs_ = <ore:logWood>;
var planks_ = <ore:plankWood>;
var coals = <ore:coals>;

val rbm as IItemStack[] = 
[   
    <minecraft:golden_rail>,<minecraft:detector_rail>,<minecraft:rail>,
    <minecraft:activator_rail>,<minecraft:boat>,<minecraft:spruce_boat>,
    <minecraft:birch_boat>,<minecraft:jungle_boat>,<minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,<minecraft:minecart>,<minecraft:chest_minecart>,
    <minecraft:furnace_minecart>,<minecraft:tnt_minecart>,<minecraft:hopper_minecart>
];
for RBM in rbm {
    recipes.remove(RBM);
}

val planks = [<minecraft:planks>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>] as IItemStack[];
val logs = [<minecraft:log>,<minecraft:log:1>,<minecraft:log:2>,<minecraft:log:3>,<minecraft:log2>,<minecraft:log2:1>] as IItemStack[];
for Planks in planks {
    recipes.remove(Planks);
}
for Logs in logs {
    recipes.remove(Logs);
}
for pn, Planks in planks {
    recipes.addShapeless(Planks, [logs[pn]]);
}
recipes.addShapeless(<minecraft:planks>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log>]);

recipes.addShapeless(<minecraft:planks:1>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:1>]);

recipes.addShapeless(<minecraft:planks:2>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:2>]);

recipes.addShapeless(<minecraft:planks:3>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:3>]);

recipes.addShapeless(<minecraft:planks:4>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log2>]);

recipes.addShapeless(<minecraft:planks:5>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log2:1>]);

recipes.remove(<minecraft:stick>);
recipes.addShaped(<minecraft:stick>*2,
    [[<ore:plankWood>],
	 [<ore:plankWood>],
	 [<ore:plankWood>]]);

recipes.addShapeless(paper*4,
    [planks_,planks_]);

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>,
    [[<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
     [<minecraft:cobblestone>,coals,<minecraft:cobblestone>],
     [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]]);

recipes.addShapeless(<minecraft:dye:15>*4,
    [<minecraft:dye:15>,<cropdusting:poop>]);