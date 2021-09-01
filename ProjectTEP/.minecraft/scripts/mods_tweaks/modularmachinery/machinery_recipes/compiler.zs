/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var blueprint = <contenttweaker:blueprint_empty>;

//custom function
function blueprintBuilder(name as string, tick as int, perenergy as int, empty as IItemStack, input as IItemStack, output as IItemStack) {
    RecipeBuilder.newBuilder(name, "compiler", tick).
    addEnergyPerTickInput(perenergy).
    addItemInput(empty).
    addItemInput(input).
    addItemOutput(output).
    build();
}

//gas_centrifuger
blueprintBuilder(
    "machinery_blueprint:5", 800, 750, <minecraft:paper>,
    <contenttweaker:gc_exe>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuger"})
);

//reactor
blueprintBuilder(
    "machinery_blueprint:6", 1200, 1000, <minecraft:paper>,
    <contenttweaker:ft_exe>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reactor"})
);

//====================================================

//Field Projector
blueprintBuilder(
    "common_blueprint:0", 140, 300, blueprint,
    <contenttweaker:conversion_core>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aField Projector"]}})
);

//Void Ore Miner
blueprintBuilder(
    "common_blueprint:1", 200, 300, blueprint,
    <minecraft:iron_ore>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Ore Miner"]}})
);

//Void Botanic Miner
blueprintBuilder(
    "common_blueprint:2", 200, 300, blueprint,
    <minecraft:tallgrass:1>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Botanic Miner"]}})
);

//Runic Altar
blueprintBuilder(
    "common_blueprint:3", 180, 300, blueprint,
    <botania:manaresource:1>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aRunic Altar"]}})
);

//Terrastrial Agglomeration Plate
blueprintBuilder(
    "common_blueprint:4", 500, 300, blueprint,
    <botania:storage>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aTerrastrial Agglomeration Plate"]}})
);

//Elven Gateway Core
blueprintBuilder(
    "common_blueprint:5", 540, 300, blueprint,
    <botania:manaresource:4>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aElven Gateway Core"]}})
);

//Assembly Controller
blueprintBuilder("common_blueprint:6", 300, 300, blueprint,
    <pneumaticcraft:unassembled_pcb>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aAssembly Controller"]}})
);

//Refinery
blueprintBuilder("common_blueprint:7", 200, 300, blueprint,
    <contenttweaker:cell_empty>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aRefinery"]}})
);

//Thermopneumatic Processing Plant
blueprintBuilder("common_blueprint:8", 240, 300, blueprint,
    <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}), <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aThermopneumatic Processing Plant"]}})
);

//Plastic Mixer
blueprintBuilder("common_blueprint:9", 280, 300, blueprint,
    <pneumaticcraft:compressed_iron_gear>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aPlastic Mixer"]}})
);

//assembly_program
blueprintBuilder("common_blueprint:10", 400, 200, <pneumaticcraft:empty_pcb>, <minecraft:diamond>, <pneumaticcraft:assembly_program>
);

//assembly_program:1
blueprintBuilder("common_blueprint:11", 400, 200, <pneumaticcraft:empty_pcb>, <minecraft:ender_pearl>, <pneumaticcraft:assembly_program:1>
);

//assembly_program:2
blueprintBuilder("common_blueprint:12", 400, 200, <pneumaticcraft:assembly_program>, <pneumaticcraft:assembly_program:1>, <pneumaticcraft:assembly_program:2>
);