/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000

<ore:etLaserLens>.remove(<environmentaltech:laser_lens_crystal>);

<ore:normalflowers>.add(<botania:flower:*>);
<ore:mushrooms>.add(<botania:mushroom:*>);
<ore:coals>.add(<minecraft:coal>, <minecraft:coal:1>);
<ore:doubleflowers>.add(<botania:doubleflower1:*>, <botania:doubleflower2:*>);
<ore:botaniaGoodItems>.add(<botania:keepivy>, <botania:blacklotus:1>);

<ore:gardens>.addItems([
    <harvestcraft:aridgarden>, <harvestcraft:frostgarden>,
    <harvestcraft:shadedgarden>, <harvestcraft:soggygarden>,
    <harvestcraft:tropicalgarden>, <harvestcraft:windygarden>]);