/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import crafttweaker.item.IIngredient;
import mods.pneumaticcraft.explosioncrafting;

val compressed_iron as IIngredient[] = [<pneumaticcraft:ingot_iron_compressed>,<pneumaticcraft:compressed_iron_block>];
for Compressed_Iron in compressed_iron {
    explosioncrafting.removeRecipe(Compressed_Iron);
}