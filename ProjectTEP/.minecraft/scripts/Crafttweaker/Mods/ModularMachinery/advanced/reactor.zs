/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "reactor";

var recipe0 = ModularUtils.emptyRecipeBuilder(machine ~ "_0", machine, 20) as RecipePrimer;
    recipe0.addEnergyPerTickOutput(5000);
    recipe0.addFluidInput(<liquid:deuterium>);
    recipe0.addItemOutput(<contenttweaker:shinystar_matter>).setChance(0.01);
    recipe0.build();

var recipe1 = ModularUtils.itemRecipeBuilder(machine ~ "_1", machine, 5000, 5000, [<contenttweaker:cell_dt>], [<contenttweaker:cell_empty>], false, true) as RecipePrimer;
    recipe1.addItemOutput(<contenttweaker:shinystar_matter>).setChance(0.03);
    recipe1.build();

var recipe2 = ModularUtils.emptyRecipeBuilder(machine ~ "_2", machine, 20000) as RecipePrimer;
    recipe2.addEnergyPerTickOutput(5000);
    recipe2.addItemInput(<contenttweaker:shinystar_ingot>);
    recipe2.addItemOutput(<minecraft:nether_star>).setChance(0.05);
    recipe2.build();