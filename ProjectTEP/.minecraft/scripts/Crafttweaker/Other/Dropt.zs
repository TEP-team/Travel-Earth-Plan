/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();
val dust as IItemStack[] = Items[3] + <mekanism:dirtydust:1> + <mekanism:dirtydust:2>;
val ore as IItemStack[] = BasicUtils.getAllOre();

for i, dusts in dust {
    Dropt.list("ore")
        .add(Dropt.rule()
            .matchBlocks([ItemHelper.getItemID(ore[i], true)])
            .addDrop(Dropt.drop()
                .items([dusts])));
}