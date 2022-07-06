/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.mekanism.chemical.oxidizer;

oxidizer.removeRecipe(<gas:lithium>);

oxidizer.addRecipe(<contenttweaker:material_part:57>, <gas:lithium>*100);