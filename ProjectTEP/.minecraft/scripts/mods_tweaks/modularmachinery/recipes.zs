/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 40000
import crafttweaker.item.IItemStack;

//variables
var rs = <ore:dustRedstone>;
var iron = <ore:ingotIron>;
var plate = <contenttweaker:material_part:13>;
var casing = <modularmachinery:blockcasing>;

//add
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:compiler"}),
    [[rs,rs,rs],
	 [rs,<minecraft:paper>,rs],
	 [rs,rs,rs]]);

recipes.remove(casing);
recipes.addShaped(casing*8,
    [[plate,plate,plate],
     [plate,null,plate],
     [plate,plate,plate]]);

recipes.addShaped(<modularmachinery:blockcasing:5>*2,
    [[casing,iron,casing],
     [iron,<minecraft:redstone_block>,iron],
     [casing,iron,casing]]);

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>,
    [[casing,<minecraft:diamond>,casing],
     [iron,<modularmachinery:blockcasing:5>,iron],
     [casing,<minecraft:gold_ingot>,casing]]);

recipes.addShaped(<modularmachinery:blockcasing:1> * 2,
    [[casing,<minecraft:iron_bars>,casing],
     [<minecraft:iron_bars>,null,<minecraft:iron_bars>],
     [casing,<minecraft:iron_bars>,casing]]);

recipes.remove(<modularmachinery:blockcasing:2>);
recipes.addShaped(<modularmachinery:blockcasing:2> * 2,
    [[casing,<minecraft:flint>,casing],
     [<minecraft:flint>,<ore:gunpowder>,<minecraft:flint>],
     [casing,<minecraft:flint>,casing]]);

recipes.addShaped(<modularmachinery:blockcasing:3> * 2,
    [[casing,rs,casing],
     [rs,<contenttweaker:material_part>,rs],
     [casing,rs,casing]]);

recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>,
    [[casing,<minecraft:hopper>,casing],
     [iron,<minecraft:chest>,iron],
     [casing,iron,casing]]);

recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>,
    [[casing,iron,casing],
     [iron,<minecraft:chest>,iron],
     [casing,<minecraft:hopper>,casing]]);

recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>,
    [[casing,<minecraft:bucket>,casing],
     [iron,<minecraft:chest>,iron],
     [casing,iron,casing]]);

recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>,
    [[casing,iron,casing],
     [iron,<minecraft:chest>,iron],
     [casing,<minecraft:bucket>,casing]]);

recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>,
    [[casing,rs,casing],
     [iron,<minecraft:chest>,iron],
     [casing,iron,casing]]);

recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch>,
    [[casing,iron,casing],
     [iron,<minecraft:chest>,iron],
     [casing,rs,casing]]);

recipes.addShaped(<gugu-utils:sparkmanahatch>.withTag({}),
    [[casing,<botania:spark>,casing],
     [casing,<botania:pool>,casing],
     [casing,casing,casing]]);

recipes.addShaped(<gugu-utils:sparkmanahatch:1>.withTag({}),
    [[casing,casing,casing],
     [casing,<botania:pool>,casing],
     [casing,<botania:spark>,casing]]);

//MachineBlocks
//remove
val remove as IItemStack[] = [<modularmachinery:blockinputbus:1>,<modularmachinery:blockoutputbus:1>,<modularmachinery:blockfluidinputhatch:1>,<modularmachinery:blockfluidoutputhatch:1>];
for Remove in remove {
    recipes.remove(Remove);
}