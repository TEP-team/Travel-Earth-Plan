/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var paper = <minecraft:paper>;
var rs = <ore:dustRedstone>;
var iron = <ore:ingotIron>;
var bium = <contenttweaker:material_part:11>;
var mium = <contenttweaker:material_part:28>;
var aium = <contenttweaker:material_part:45>;
var plate1 = <contenttweaker:material_part:12>;
var plate2 = <contenttweaker:material_part:29>;
var plate3 = <contenttweaker:material_part:46>;
var casing = <modularmachinery:blockcasing>;
var casing1 = <modularmachinery:blockcasing:1>;
var casing2 = <modularmachinery:blockcasing:2>;
var casing3 = <modularmachinery:blockcasing:3>;
var casing4 = <modularmachinery:blockcasing:4>;
var casing5 = <modularmachinery:blockcasing:5>;

//add
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:compiler"}),
    [[rs,rs,rs],
	 [rs,paper,rs],
	 [rs,rs,rs]]);

recipes.remove(casing);
recipes.addShaped(casing * 8,
    [[plate1,plate1,plate1],
     [plate1,null,plate1],
     [plate1,plate1,plate1]]);

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

//ItemMachines
val ingot as IItemStack[] = [bium,bium,mium,mium,aium,aium];
val itemIn as IItemStack[] = [<modularmachinery:blockinputbus:1>,<modularmachinery:blockinputbus:2>,<modularmachinery:blockinputbus:3>,<modularmachinery:blockinputbus:4>,<modularmachinery:blockinputbus:5>,<modularmachinery:blockinputbus:6>];
val itemsIn as IItemStack[] = [<modularmachinery:blockinputbus:0>,<modularmachinery:blockinputbus:1>,<modularmachinery:blockinputbus:2>,<modularmachinery:blockinputbus:3>,<modularmachinery:blockinputbus:4>,<modularmachinery:blockinputbus:5>];

for i, ItemIn in itemIn {
    recipes.addShaped(ItemIn,
        [[null,<minecraft:hopper>,null],
         [ingot[i],itemsIn[i],ingot[i]],
         [<minecraft:chest>,ingot[i],<minecraft:chest>]]);
}

val itemOut as IItemStack[] = [<modularmachinery:blockoutputbus:1>,<modularmachinery:blockoutputbus:2>,<modularmachinery:blockoutputbus:3>,<modularmachinery:blockoutputbus:4>,<modularmachinery:blockoutputbus:5>,<modularmachinery:blockoutputbus:6>];
val itemsOut as IItemStack[] = [<modularmachinery:blockoutputbus:0>,<modularmachinery:blockoutputbus:1>,<modularmachinery:blockoutputbus:2>,<modularmachinery:blockoutputbus:3>,<modularmachinery:blockoutputbus:4>,<modularmachinery:blockoutputbus:5>];
for i, ItemOut in itemOut {
    recipes.addShaped(ItemOut,
        [[<minecraft:chest>,ingot[i],<minecraft:chest>],
         [ingot[i],itemsOut[i],ingot[i]],
         [null,<minecraft:hopper>,null]]);
}

//FluidMachines
val ingots as IItemStack[] = [bium,bium,mium,mium,aium,aium,aium];
val fluidIn as IItemStack[] = [<modularmachinery:blockfluidinputhatch:1>,<modularmachinery:blockfluidinputhatch:2>,<modularmachinery:blockfluidinputhatch:3>,<modularmachinery:blockfluidinputhatch:4>,<modularmachinery:blockfluidinputhatch:5>,<modularmachinery:blockfluidinputhatch:6>,<modularmachinery:blockfluidinputhatch:7>];
val fluidsIn as IItemStack[] = [<modularmachinery:blockfluidinputhatch:0>,<modularmachinery:blockfluidinputhatch:1>,<modularmachinery:blockfluidinputhatch:2>,<modularmachinery:blockfluidinputhatch:3>,<modularmachinery:blockfluidinputhatch:4>,<modularmachinery:blockfluidinputhatch:5>,<modularmachinery:blockfluidinputhatch:6>];

for i, FluidIn in fluidIn {
    recipes.addShaped(FluidIn,
        [[null,<minecraft:hopper>,null],
         [ingots[i],fluidsIn[i],ingots[i]],
         [<minecraft:bucket>,ingots[i],<minecraft:bucket>]]);
}

val fluidOut as IItemStack[] = [<modularmachinery:blockfluidoutputhatch:1>,<modularmachinery:blockfluidoutputhatch:2>,<modularmachinery:blockfluidoutputhatch:3>,<modularmachinery:blockfluidoutputhatch:4>,<modularmachinery:blockfluidoutputhatch:5>,<modularmachinery:blockfluidoutputhatch:6>,<modularmachinery:blockfluidoutputhatch:7>];
val fluidsOut as IItemStack[] = [<modularmachinery:blockfluidoutputhatch:0>,<modularmachinery:blockfluidoutputhatch:1>,<modularmachinery:blockfluidoutputhatch:2>,<modularmachinery:blockfluidoutputhatch:3>,<modularmachinery:blockfluidoutputhatch:4>,<modularmachinery:blockfluidoutputhatch:5>,<modularmachinery:blockfluidoutputhatch:6>];
for i, FluidOut in fluidOut {
    recipes.addShaped(FluidOut,
        [[<minecraft:bucket>,ingots[i],<minecraft:bucket>],
         [ingots[i],fluidsOut[i],ingots[i]],
         [null,<minecraft:hopper>,null]]);
}

//EnergyMachines
val energyIn as IItemStack[] = [<modularmachinery:blockenergyinputhatch:1>,<modularmachinery:blockenergyinputhatch:2>,<modularmachinery:blockenergyinputhatch:3>,<modularmachinery:blockenergyinputhatch:4>,<modularmachinery:blockenergyinputhatch:5>,<modularmachinery:blockenergyinputhatch:6>,<modularmachinery:blockenergyinputhatch:7>];
val energysIn as IItemStack[] = [<modularmachinery:blockenergyinputhatch>,<modularmachinery:blockenergyinputhatch:1>,<modularmachinery:blockenergyinputhatch:2>,<modularmachinery:blockenergyinputhatch:3>,<modularmachinery:blockenergyinputhatch:4>,<modularmachinery:blockenergyinputhatch:5>,<modularmachinery:blockenergyinputhatch:6>];

for i, EnergyIn in energyIn {
    recipes.addShaped(EnergyIn,
        [[null,<contenttweaker:conversion_core>,null],
         [ingots[i],energysIn[i],ingots[i]],
         [<minecraft:redstone_block>,ingots[i],<minecraft:redstone_block>]]);
}

val energyOut as IItemStack[] = [<modularmachinery:blockenergyoutputhatch:1>,<modularmachinery:blockenergyoutputhatch:2>,<modularmachinery:blockenergyoutputhatch:3>,<modularmachinery:blockenergyoutputhatch:4>,<modularmachinery:blockenergyoutputhatch:5>,<modularmachinery:blockenergyoutputhatch:6>,<modularmachinery:blockenergyoutputhatch:7>];
val energysOut as IItemStack[] = [<modularmachinery:blockenergyoutputhatch>,<modularmachinery:blockenergyoutputhatch:1>,<modularmachinery:blockenergyoutputhatch:2>,<modularmachinery:blockenergyoutputhatch:3>,<modularmachinery:blockenergyoutputhatch:4>,<modularmachinery:blockenergyoutputhatch:5>,<modularmachinery:blockenergyoutputhatch:6>];
for i, EnergyOut in energyOut {
    recipes.addShaped(EnergyOut,
        [[<minecraft:redstone_block>,ingots[i],<minecraft:redstone_block>],
         [ingots[i],energysOut[i],ingots[i]],
         [null,<contenttweaker:conversion_core>,null]]);
}