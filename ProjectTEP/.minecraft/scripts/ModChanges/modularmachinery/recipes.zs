/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28998

import crafttweaker.item.IItemStack;

var paper as IItemStack = <minecraft:paper>;
var rs as IItemStack = <ore:dustRedstone>;
var iron as IItemStack = <ore:ingotIron>;
var bplate as IItemStack = <contenttweaker:material_part:1>;
var mplate as IItemStack = <contenttweaker:material_part:4>;
var aplate as IItemStack = <contenttweaker:material_part:7>;
var casing as IItemStack = <modularmachinery:blockcasing>;
var casing1 as IItemStack = <modularmachinery:blockcasing:1>;
var casing2 as IItemStack = <modularmachinery:blockcasing:2>;
var casing3 as IItemStack = <modularmachinery:blockcasing:3>;
var casing4 as IItemStack = <modularmachinery:blockcasing:4>;
var casing5 as IItemStack = <modularmachinery:blockcasing:5>;

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:scripter"}),
    [[rs,rs,rs],
	 [rs,paper,rs],
	 [rs,rs,rs]]);

recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShapeless(<modularmachinery:itemmodularium>,
    [iron,rs]);

recipes.remove(casing);
recipes.addShaped(casing * 8,
    [[bplate,bplate,bplate],
     [bplate,null,bplate],
     [bplate,bplate,bplate]]);

recipes.addShaped(casing5 * 2,
    [[casing,iron,casing],
     [iron,<minecraft:redstone_block>,iron],
     [casing,iron,casing]]);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>,
    [[casing,<minecraft:diamond>,casing],
     [iron,casing5,iron],
     [casing,<minecraft:gold_ingot>,casing]]);

recipes.addShaped(casing1 * 2,
    [[casing,<minecraft:iron_bars>,casing],
     [<minecraft:iron_bars>,null,<minecraft:iron_bars>],
     [casing,<minecraft:iron_bars>,casing]]);

recipes.remove(casing2);
recipes.addShaped(casing2 * 2,
    [[casing,<minecraft:flint>,casing],
     [<minecraft:flint>,<ore:gunpowder>,<minecraft:flint>],
     [casing,<minecraft:flint>,casing]]);

recipes.addShaped(casing3 * 2,
    [[casing,rs,casing],
     [rs,<contenttweaker:material_part>,rs],
     [casing,rs,casing]]);

recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>,
    [[casing,<minecraft:hopper>,casing],
     [casing,<minecraft:chest>,casing],
     [casing,casing,casing]]);

recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>,
    [[casing,casing,casing],
     [casing,<minecraft:chest>,casing],
     [casing,<minecraft:hopper>,casing]]);

recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>,
    [[casing,<minecraft:bucket>,casing],
     [casing,<minecraft:chest>,casing],
     [casing,casing,casing]]);

recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>,
    [[casing,casing,casing],
     [casing,<minecraft:chest>,casing],
     [casing,<minecraft:bucket>,casing]]);

recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>,
    [[casing,<minecraft:redstone_block>,casing],
     [casing,<minecraft:chest>,casing],
     [casing,casing,casing]]);

recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch>,
    [[casing,casing,casing],
     [casing,<minecraft:chest>,casing],
     [casing,<minecraft:redstone_block>,casing]]);

