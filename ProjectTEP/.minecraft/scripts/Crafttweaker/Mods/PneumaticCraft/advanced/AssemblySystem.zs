/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.pneumaticcraft.assembly;

assembly.removeAllDrillLaserRecipes();
assembly.removeAllDrillRecipes();

assembly.removeLaserRecipe(<pneumaticcraft:advanced_pressure_tube>);
assembly.removeLaserRecipe(<pneumaticcraft:aphorism_tile>);

assembly.addLaserRecipe(<pneumaticcraft:printed_circuit_board>, <contenttweaker:pcb>);
assembly.addLaserRecipe(<contenttweaker:pcb>, <pneumaticcraft:printed_circuit_board>);
assembly.addLaserRecipe(<contenttweaker:paper_ee>, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:laser"}));