/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.appliedenergistics2.Inscriber;

Inscriber.addRecipe(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:compiler"}), <contenttweaker:papers>, false, <contenttweaker:conversion_core>, <contenttweaker:conversion_core>);
Inscriber.addRecipe(<appliedenergistics2:material:39>, <minecraft:chest>, false, <ore:ingotIron>, <ore:dustRedstone>);
Inscriber.addRecipe(<extracells:storage.casing>, <appliedenergistics2:material:39>, false, <minecraft:diamond>, <appliedenergistics2:material:8>);
Inscriber.addRecipe(<extracells:storage.casing:1>, <extracells:certustank>, false, <ore:ingotIron>, <appliedenergistics2:material:8>);
Inscriber.addRecipe(<extracells:storage.casing:2>, <extracells:certustank>, false, <ore:ingotGold>, <appliedenergistics2:material:8>);
Inscriber.addRecipe(<mekanism:controlcircuit>, <contenttweaker:papers>, false, <mekanism:ingot:1>, <mekanism:enrichedalloy>);