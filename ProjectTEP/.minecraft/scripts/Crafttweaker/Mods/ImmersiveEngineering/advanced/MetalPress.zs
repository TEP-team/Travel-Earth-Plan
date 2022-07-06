/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.immersiveengineering.MetalPress;

MetalPress.removeRecipeByMold(<immersiveengineering:mold>);
MetalPress.removeRecipeByMold(<immersiveengineering:mold:1>);

MetalPress.addRecipe(<immersiveengineering:metal:40>, <minecraft:gold_ingot>, <immersiveengineering:mold>, 3600);
MetalPress.addRecipe(<integrateddynamics:variable>*2, <integrateddynamics:crystalized_menril_chunk>, <immersiveengineering:mold:6>, 800);

/* using global variables (Items) */
for i, plate in Items[5] {
    MetalPress.addRecipe(plate, Items[0][i], <immersiveengineering:mold>, 3600);
} 

/* using global variables (otheringot, otherplate) */
for i, otherplate in otherplate {
    MetalPress.addRecipe(otherplate, otheringot[i], <immersiveengineering:mold>, 3600);
}