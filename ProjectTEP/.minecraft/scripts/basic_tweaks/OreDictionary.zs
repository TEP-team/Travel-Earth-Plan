/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60003
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//Minecraft coals
val coals as IOreDictEntry = <ore:coals>;
coals.add(<minecraft:coal>,<minecraft:coal:1>);

val etll as IOreDictEntry = <ore:etLaserLens>;
etll.remove(<environmentaltech:laser_lens_crystal>);

val normalflowers as IOreDictEntry = <ore:normalflowers>;
normalflowers.add(<botania:flower:*>);

val doubleflowers as IOreDictEntry = <ore:doubleflowers>;
doubleflowers.add(<botania:doubleflower1:*>);

val mushrooms as IOreDictEntry = <ore:mushrooms>;
mushrooms.add(<botania:mushroom:*>);

val gardens as IOreDictEntry = <ore:gardens>;
val harvestcraft_gardens as IItemStack[] =
[
    <harvestcraft:aridgarden>,<harvestcraft:frostgarden>,
    <harvestcraft:shadedgarden>,<harvestcraft:soggygarden>,
    <harvestcraft:tropicalgarden>,<harvestcraft:windygarden>
];
gardens.add(harvestcraft_gardens);

val botaniaGoodItems as IOreDictEntry = <ore:botaniaGoodItems>;
botaniaGoodItems.add(<botania:keepivy>,<botania:blacklotus:1>);