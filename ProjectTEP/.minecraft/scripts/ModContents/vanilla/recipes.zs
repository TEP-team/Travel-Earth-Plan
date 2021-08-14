/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28997
import crafttweaker.item.IItemStack;

var paper as IItemStack = <minecraft:paper>;
var logs as IItemStack = <ore:logWood>;
var planks as IItemStack = <ore:plankWood>;
var coals as IItemStack = <ore:coals>;

recipes.remove(paper);
recipes.addShapeless(paper*4,
    [planks,planks]);

recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>,
    [[<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>],
     [<minecraft:cobblestone>,coals,<minecraft:cobblestone>],
     [<minecraft:cobblestone>,<minecraft:cobblestone>,<minecraft:cobblestone>]]);

var rbm as IItemStack[] = 
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

recipes.addShapeless(<minecraft:dye:15>*4,
    [<minecraft:dye:15>,<cropdusting:poop>]);