/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.modularmachinery.RecipePrimer;

val machine as string = "heaven_altar";

var recipe = ModularUtils.emptyRecipeBuilder(machine ~ "_core", machine, 12000) as RecipePrimer;
    recipe.addItemInput(<contenttweaker:heaven_core>);
    recipe.addManaPerTickOutput(100000);
    recipe.build();