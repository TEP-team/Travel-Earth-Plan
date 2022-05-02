/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.modularmachinery.RecipePrimer;

val machine as string = "packer";
val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();

for i, blots in Items[9] {
    ModularUtils.itemRecipeBuilder(machine ~ "_0_" ~ i, machine, 100, 36, [Items[4][i]*4, Items[8][i]], [blots*2], true, true).build();
}

for i, casings in Items[7] {
    ModularUtils.itemRecipeBuilder(machine ~ "_1_" ~ i, machine, 100, 36, [Items[5][i]], [casings*2], true, true).build();
}

for i, gears in Items[10] {
    ModularUtils.itemRecipeBuilder(machine ~ "_2_" ~ i, machine, 100, 36, [Items[0][i]*4, Items[9][i]*4], [gears], true, true).build();
}

for i, densePlates in Items[6] {
    ModularUtils.itemRecipeBuilder(machine ~ "_3_" ~ i, machine, 100, 36, [Items[5][i]*4, Items[9][i]*4], [densePlates], true, true).build();
}

for i, plates in Items[5] {
    ModularUtils.itemRecipeBuilder(machine ~ "_4_" ~ i, machine, 100, 36, [Items[0][i]], [plates], true, true).build();
}

for i, rods in Items[8] {
    ModularUtils.itemRecipeBuilder(machine ~ "_5_" ~ i, machine, 100, 36, [Items[7][i]*2], [rods], true, true).build();
}

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 0, machine, 200, 25,
    [<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>*2, <pneumaticcraft:capacitor>*2],
    [<pneumaticcraft:printed_circuit_board>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 1, machine, 100, 36,
    [<pneumaticcraft:ingot_iron_compressed>*4],
    [<pneumaticcraft:compressed_iron_gear>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 2, machine, 500, 50,
    [<contenttweaker:mini_driver>, <contenttweaker:ram>, <contenttweaker:test_unit>],
    [<contenttweaker:mediuim_driver>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 3, machine, 600, 50,
    [<contenttweaker:mediuim_driver>, <contenttweaker:rom>, <contenttweaker:temperature_monitor>],
    [<contenttweaker:huge_driver>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 4, machine, 100, 20,
    [<contenttweaker:ram>, <contenttweaker:papers>*8, <contenttweaker:tin_solder_dust>*8],
    [<contenttweaker:rom>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 5, machine, 100, 36,
    [<contenttweaker:material_part:71>*4, <contenttweaker:material_part:73>],
    [<immersiveengineering:material:8>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 6, machine, 100, 36,
    [<ore:plateSteel>.firstItem*4, <ore:stickSteel>.firstItem],
    [<immersiveengineering:material:9>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 7, machine, 200, 20,
    [<immersiveengineering:material:22>*4, <contenttweaker:material_part:73>*4, <contenttweaker:material_part:30>*4],
    [<contenttweaker:motor>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 8, machine, 400, 25,
    [<contenttweaker:material_part:73>*4, <ore:dustCopper>.firstItem*2, <ore:dustNickel>.firstItem*2, <mekanism:reinforcedalloy>],
    [<mekanismgenerators:generator:7>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 9, machine, 400, 25,
    [<contenttweaker:material_part:75>*4, <contenttweaker:material_part:73>*2, <contenttweaker:material_part:73>],
    [<mekanismgenerators:turbineblade>*4], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 10, machine, 200, 30,
    [<pneumaticcraft:capacitor>*4, <pneumaticcraft:transistor>*4, <appliedenergistics2:material:36>*2, <appliedenergistics2:material:23>*4, <appliedenergistics2:material:24>*2, <appliedenergistics2:material:22>*2],
    [<contenttweaker:ram>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 11, machine, 400, 25,
    [<contenttweaker:material_part:29>*4, <contenttweaker:ingot_is>*2, <mekanism:controlcircuit:2>, <contenttweaker:ram>, <contenttweaker:rom>, <contenttweaker:pcb>, <contenttweaker:cpu>, <contenttweaker:pin>*4],
    [<contenttweaker:singlechip>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 12, machine, 400, 25,
    [<pneumaticcraft:plastic:10>*4, <immersiveengineering:material:20>*2, <compactmachines3:tunneltool>*2],
    [<contenttweaker:pin>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 13, machine, 600, 30,
    [<mekanism:reinforcedalloy>*3, <contenttweaker:material_part:74>, <immersiveengineering:material:3>, <contenttweaker:material_part:2>*4, <mekanism:dust:1>*4, <mekanism:dust:2>*4, <mekanism:enrichediron>*4, <mekanism:polyethene:2>*2, <contenttweaker:material_part:71>*2],
    [<mekanism:electrolyticcore>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 14, machine, 500, 30,
    [<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}), <mekanism:basicblock:8>*3, <pneumaticcraft:compressed_iron_gear>*4, <contenttweaker:material_part:21>*4, <mekanism:controlcircuit:2>, <pneumaticcraft:turbine_rotor>, <mekanismgenerators:generator:7>*2, <contenttweaker:material_part:24>*2, <contenttweaker:material_part:11>*2, <contenttweaker:material_part:20>*4],
    [<mekanismgenerators:generator:8>*3, <minecraft:bucket>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_6_" ~ 15, machine, 100, 36,
    [<minecraft:gold_ingot>],
    [<immersiveengineering:metal:40>], true, true).build();

for i, otherplate in otherplate {
    ModularUtils.itemRecipeBuilder(machine ~ "_7_" ~ i, machine, 100, 36, [otheringot[i]], [otherplate], true, true).build();
}