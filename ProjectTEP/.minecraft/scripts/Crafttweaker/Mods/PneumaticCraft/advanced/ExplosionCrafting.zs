/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IIngredient;
import mods.pneumaticcraft.explosioncrafting;

val remove as IIngredient[] = [
    <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:compressed_iron_block>
];

for Remove in remove {
    explosioncrafting.removeRecipe(Remove);
}