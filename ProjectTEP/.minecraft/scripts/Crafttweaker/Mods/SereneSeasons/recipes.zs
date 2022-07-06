/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
val mods as string[] = ["sereneseasons"];
for Mods in mods {
    val remove = loadedMods[Mods].items;
    for Remove in remove {
        recipes.remove(Remove);
    }
}

RecipeUtils.recipeShaped(<sereneseasons:greenhouse_glass>*8,
    [[<ore:dyeCyan>, <minecraft:glass>, <ore:dyeCyan>], 
     [<minecraft:glass>, <armorunder:heating_goo>, <minecraft:glass>], 
     [<ore:dyeCyan>, <minecraft:glass>, <ore:dyeCyan>]], true);