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

var code as IItemStack = <contenttweaker:common_code>;
var blueprint as IItemStack = <contenttweaker:blueprint_empty>;

RecipeBuilder.newBuilder("scripter:0","scripter",100).
addItemInput(<minecraft:paper>).
addEnergyPerTickInput(5).
addItemOutput(code).setChance(0.99).
addItemOutput(<contenttweaker:error_code>).setChance(0.01).
build();

RecipeBuilder.newBuilder("scripter:1","scripter",600).
addItemInput(code).
addItemInput(<botania:manaresource:2>).
addEnergyPerTickInput(5).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"})).setChance(0.95).
addItemOutput(<contenttweaker:error_code>).setChance(0.05).
build();

RecipeBuilder.newBuilder("scripter:2","scripter",800).
addItemInput(code).
addItemInput(<minecraft:bucket>).
addItemInput(<minecraft:ender_pearl>).
addEnergyPerTickInput(8).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fluid_processor"})).setChance(0.9).
addItemOutput(<contenttweaker:error_code>).setChance(0.1).
build();

RecipeBuilder.newBuilder("scripter:3","scripter",1200).
addItemInput(code).
addItemInput(<forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000})).
addEnergyPerTickInput(10).
addItemOutput(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:energy_dismantler"})).setChance(0.85).
addItemOutput(<contenttweaker:error_code>).setChance(0.15).
build();

RecipeBuilder.newBuilder("scripter:4","scripter",140).
addItemInput(blueprint).
addItemInput(<contenttweaker:conversion_core>).
addEnergyPerTickInput(15).
addItemOutput(<contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aField Projector"]}})).setChance(0.98).
addItemOutput(<contenttweaker:error_code>).setChance(0.02).
build();

RecipeBuilder.newBuilder("scripter:5","scripter",200).
addItemInput(blueprint).
addItemInput(<minecraft:iron_ore>).
addEnergyPerTickInput(15).
addItemOutput(<contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Ore Miner"]}})).setChance(0.95).
addItemOutput(<contenttweaker:error_code>).setChance(0.05).
build();

RecipeBuilder.newBuilder("scripter:6","scripter",200).
addItemInput(blueprint).
addItemInput(<minecraft:tallgrass:1>).
addEnergyPerTickInput(15).
addItemOutput(<contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Botanic Miner"]}})).setChance(0.95).
addItemOutput(<contenttweaker:error_code>).setChance(0.05).
build();