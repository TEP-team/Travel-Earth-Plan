/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
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
RecipeBuilder.newBuilder("machinery_blueprint:0", "compiler", 800).
addEnergyPerTickInput(750).
addItemInput(<minecraft:paper>).
addItemInput(<contenttweaker:gc_exe>).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:gas_centrifuger"})).
addItemOutput(<contenttweaker:exe>).
build();

//reactor
RecipeBuilder.newBuilder("machinery_blueprint:1", "compiler", 1200).
addEnergyPerTickInput(1000).
addItemInput(<minecraft:paper>).
addItemInput(<contenttweaker:ft_exe>).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:reactor"})).
addItemOutput(<contenttweaker:exe>).
build();

//Field Projector
blueprintBuilder(
    "common_blueprint:0", 140, 300, blueprint,
    <contenttweaker:conversion_core>, <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aField Projector"]}})
);

//assembly_program
blueprintBuilder("common_blueprint:1", 400, 200, <pneumaticcraft:empty_pcb>, <minecraft:diamond>, <pneumaticcraft:assembly_program>
);

//assembly_program:1
blueprintBuilder("common_blueprint:2", 400, 200, <pneumaticcraft:empty_pcb>, <minecraft:ender_pearl>, <pneumaticcraft:assembly_program:1>
);

//assembly_program:2
blueprintBuilder("common_blueprint:3", 400, 200, <pneumaticcraft:assembly_program>, <pneumaticcraft:assembly_program:1>, <pneumaticcraft:assembly_program:2>
);