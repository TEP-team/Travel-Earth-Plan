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
    ModularUtils.itemRecipeBuilder(machine + 0 + i, machine, 40, 15, [Items[4][i]*4, Items[8][i]], [blots*2], true, true).build();
}

for i, casings in Items[7] {
    ModularUtils.itemRecipeBuilder(machine + 1 + i, machine, 40, 15, [Items[5][i]], [casings*2], true, true).build();
}

for i, gears in Items[10] {
    ModularUtils.itemRecipeBuilder(machine + 2 + i, machine, 40, 15, [Items[0][i]*4, Items[9][i]*4], [gears], true, true).build();
}

for i, densePlates in Items[6] {
    ModularUtils.itemRecipeBuilder(machine + 3 + i, machine, 40, 15, [Items[5][i]*4, Items[9][i]*4], [densePlates], true, true).build();
}

for i, plates in Items[5] {
    ModularUtils.itemRecipeBuilder(machine + 4 + i, machine, 40, 15, [Items[0][i]], [plates], true, true).build();
}

for i, rods in Items[8] {
    ModularUtils.itemRecipeBuilder(machine + 5 + i, machine, 40, 15, [Items[7][i]*2], [rods], true, true).build();
}

ModularUtils.itemRecipeBuilder(machine + 6 + 0, machine, 200, 20, [<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>*2, <pneumaticcraft:capacitor>*2], [<pneumaticcraft:printed_circuit_board>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 1, machine, 40, 15, [<pneumaticcraft:ingot_iron_compressed>*4], [<pneumaticcraft:compressed_iron_gear>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 2, machine, 480, 50, [<contenttweaker:mini_driver>, <contenttweaker:ram>, <contenttweaker:test_unit>], [<contenttweaker:mediuim_driver>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 3, machine, 600, 50, [<contenttweaker:mediuim_driver>, <contenttweaker:rom>, <contenttweaker:temperature_monitor>], [<contenttweaker:huge_driver>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 4, machine, 200, 20, [<contenttweaker:ram>, <contenttweaker:papers>*8, <contenttweaker:tin_solder_dust>*8], [<contenttweaker:rom>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 5, machine, 40, 15, [<ore:plateIron>.firstItem*4, <ore:stickIron>.firstItem], [<immersiveengineering:material:8>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 6, machine, 40, 15, [<ore:plateSteel>.firstItem*4, <ore:stickSteel>.firstItem], [<immersiveengineering:material:9>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 7, machine, 200, 25, [<pneumaticcraft:capacitor>*16, <contenttweaker:ingot_is>*2, <mekanism:controlcircuit>, <contenttweaker:cloth_string>*6], [<contenttweaker:capacitance_pack>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 8, machine, 200, 25, [<pneumaticcraft:transistor>*16, <contenttweaker:ingot_is>*2, <mekanism:controlcircuit>, <contenttweaker:cloth_string>*6], [<contenttweaker:resistance_pack>], true, true).build();

/*
ModularUtils.itemRecipeBuilder(machine + 6 + 5, machine, 400, 1200, [<contenttweaker:material_part:58>*4, <contenttweaker:pin>*2, <contenttweaker:huge_driver>], [<contenttweaker:singlechip>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 6, machine, 300, 2000, [<contenttweaker:material_part:149>*2, <mekanism:controlcircuit:3>, <contenttweaker:pin>], [<contenttweaker:exe>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 7, machine, 100, 2000, [<contenttweaker:material_part:139>*4, <contenttweaker:material_part:136>*2, <contenttweaker:paper_ee>], [<contenttweaker:pin>], true, true).build();
ModularUtils.itemRecipeBuilder(machine + 6 + 8, machine, 200, 1200, [<contenttweaker:material_part:139>*8, <contenttweaker:material_part:138>*4], [<contenttweaker:motor>], true, true).build();
*/