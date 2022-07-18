/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.botania.RuneAltar;

val remove as IItemStack[] = [
    <minecraft:skull:3>, <botania:rune:7>, <botania:rune:8>
];

for Remove in remove {
    RuneAltar.removeRecipe(Remove);
}

RuneAltar.addRecipe(<botania:bifrostperm>, [<minecraft:stained_glass>, <minecraft:stained_glass:1>, <minecraft:stained_glass:2>, <minecraft:stained_glass:3>, <minecraft:stained_glass:4>, <minecraft:stained_glass:5>, <minecraft:stained_glass:6>, <minecraft:stained_glass:7>, <minecraft:stained_glass:8>, <minecraft:stained_glass:9>, <minecraft:stained_glass:10>, <minecraft:stained_glass:11>, <minecraft:stained_glass:12>, <minecraft:stained_glass:13>, <minecraft:stained_glass:14>, <minecraft:stained_glass:15>], 200000);
RuneAltar.addRecipe(<contenttweaker:rainbow_rune>, [<botania:bifrostperm>, <botania:bifrostperm>, <botania:bifrostperm>, <botania:rune:8>, <botania:manaresource:14>, <botania:manaresource:23>, <botania:blacklotus:1>, <botania:manacookie>, <minecraft:nether_star>], 3000000);
RuneAltar.addRecipe(<botania:pylon>, [<botania:storage>, <minecraft:gold_ingot>, <minecraft:gold_ingot>], 7000);
RuneAltar.addRecipe(<botania:rune:7>, [<botania:rune>, <botania:rune:2>, <minecraft:snow>, <minecraft:snow>, <minecraft:ice>, <minecraft:wool>], 8000);
RuneAltar.addRecipe(<botania:rune:8>, [<integrateddynamics:crystalized_chorus_chunk>, <integrateddynamics:crystalized_chorus_chunk>, <integrateddynamics:crystalized_chorus_chunk>, <botania:manaresource:1>, <botania:manaresource:23>], 8000);
RuneAltar.addRecipe(<contenttweaker:rainbow_gem>, [<contenttweaker:tp_gem>, <contenttweaker:rainbow_rune>, <appliedenergistics2:material:47>], 3000000);
RuneAltar.addRecipe(<minecraft:skull>, [<minecraft:clay>, <minecraft:iron_ingot>, <minecraft:bone>, <minecraft:bow>, <minecraft:arrow>], 10000);
RuneAltar.addRecipe(<minecraft:skull:1>, [<botania:rune:15>, <minecraft:skull>, <minecraft:coal>, <minecraft:coal>, <minecraft:quartz>, <minecraft:quartz>], 12000);
RuneAltar.addRecipe(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_convertor"}), [<botania:manaresource:4>, <mekanism:reinforcedalloy>, <botania:rune:11>, <contenttweaker:papers>], 8000);

RuneAltar.addRecipe(<contenttweaker:ground_core>, [<minecraft:ender_pearl>, <minecraft:quartz>, <minecraft:coal>, <minecraft:lava_bucket>, <botania:rune:13>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:mana_core>, [<minecraft:ender_pearl>, <botania:specialflower>.withTag({type: "arcanerose"}), <botania:manatablet>.withTag({mana: 500000}), <environmentaltech:lonsdaleite_crystal>, <botania:rune:10>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:shiny_core>, [<minecraft:ender_pearl>, <contenttweaker:shinystar_ingot>, <botania:manaresource:8>, <minecraft:shulker_shell>, <appliedenergistics2:material:45>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:smart_core>, [<minecraft:ender_pearl>, <openblocks:pencil_glasses>, <openblocks:generic:11>, <integrateddynamics:menril_berries>, <minecraft:redstone>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:world_core>, [<minecraft:ender_pearl>, <minecraft:dirt>, <minecraft:snowball>, <botania:rune>, <botania:rune:2>, <contenttweaker:shinystar_matter>], 500000);
RuneAltar.addRecipe(<contenttweaker:sky_core>, [<minecraft:ender_pearl>, <openblocks:hang_glider>, <minecraft:chorus_fruit>, <minecraft:feather>, <botania:rune:12>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:life_core>, [<minecraft:ender_pearl>, <minecraft:golden_apple>, <minecraft:egg>, <minecraft:speckled_melon>, <botania:rune:3>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:seasons_core>, [<minecraft:ender_pearl>, <botania:rune:4>, <botania:rune:5>, <botania:rune:6>, <botania:rune:7>, <contenttweaker:shinystar_matter>], 250000);
RuneAltar.addRecipe(<contenttweaker:machinery_core>, [<minecraft:ender_pearl>, <immersiveengineering:tool>, <appliedenergistics2:material:37>, <mekanism:ingot>, <pneumaticcraft:printed_circuit_board>, <contenttweaker:shinystar_matter>], 250000);