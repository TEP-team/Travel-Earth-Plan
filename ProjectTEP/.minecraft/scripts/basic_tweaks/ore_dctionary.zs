/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60003
import crafttweaker.item.IItemStack;

//remove
<ore:etLaserLens>.remove(<environmentaltech:laser_lens_crystal>);

//garden
val harvestcraft_gardens as IItemStack[] =
[
    <harvestcraft:aridgarden>,<harvestcraft:frostgarden>,
    <harvestcraft:shadedgarden>,<harvestcraft:soggygarden>,
    <harvestcraft:tropicalgarden>,<harvestcraft:windygarden>
];
<ore:gardens>.add(harvestcraft_gardens);

//add
<ore:coals>.add(<minecraft:coal>,<minecraft:coal:1>);
<ore:normalflowers>.add(<botania:flower:*>);
<ore:doubleflowers>.add(<botania:doubleflower1:*>);
<ore:mushrooms>.add(<botania:mushroom:*>);
<ore:botaniaGoodItems>.add(<botania:keepivy>,<botania:blacklotus:1>);
<ore:dustLithium>.add(<contenttweaker:material_part:111>);