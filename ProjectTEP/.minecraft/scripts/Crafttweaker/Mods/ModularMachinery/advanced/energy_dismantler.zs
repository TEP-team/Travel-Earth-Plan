/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import scripts.Classes.ModularUtils.ModularUtils;

val ModularUtils as ModularUtils = ModularUtils("Instanced");
val machine as string = "energy_dismantler";

ModularUtils.itemRecipeBuilder(machine + 0, machine, 2400, 4000,
    [<contenttweaker:shinystar_matter>],
    [<contenttweaker:shinystar_ingot>], true, true).build();