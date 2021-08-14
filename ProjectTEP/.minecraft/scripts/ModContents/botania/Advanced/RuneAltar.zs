/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28990
import crafttweaker.item.IItemStack;
import mods.botania.RuneAltar;

RuneAltar.removeRecipe(<botania:rune:7>);
RuneAltar.addRecipe(<botania:rune:7>,
    [<botania:rune>,<botania:rune:2>,<minecraft:snow>,<minecraft:snow>,<minecraft:ice>,<minecraft:wool:*>], 8000);

RuneAltar.removeRecipe(<botania:rune:8>);
RuneAltar.addRecipe(<botania:rune:8>*2,
    [<botania:rune>,<botania:rune:1>,<botania:rune:2>,<botania:rune:3>,<botania:manaresource:23>,<botania:storage>], 8000);