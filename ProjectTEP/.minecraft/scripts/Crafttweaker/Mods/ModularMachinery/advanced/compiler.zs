/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000

val machine as string = "compiler";

ModularUtils.itemRecipeBuilder(machine ~ "_0", machine, 800, 750,
    [<minecraft:paper>, <contenttweaker:gc_exe>],
    [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuger"}), <contenttweaker:exe>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_1", machine, 1200, 1000,
    [<minecraft:paper>, <contenttweaker:ft_exe>],
    [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reactor"}), <contenttweaker:exe>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_2", machine, 400, 200,
    [<pneumaticcraft:empty_pcb>, <minecraft:diamond>],
    [<pneumaticcraft:assembly_program>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_3", machine, 400, 200,
    [<pneumaticcraft:empty_pcb>, <minecraft:ender_pearl>],
    [<pneumaticcraft:assembly_program:1>], true, true).build();

ModularUtils.itemRecipeBuilder(machine ~ "_4", machine, 400, 200,
    [<pneumaticcraft:assembly_program>, <pneumaticcraft:assembly_program:1>],
    [<pneumaticcraft:assembly_program:2>], true, true).build();