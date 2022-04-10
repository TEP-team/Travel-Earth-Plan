/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

val remove as IItemStack[][IOreDictEntry] = {
    <ore:etLaserLens> : [<environmentaltech:laser_lens_crystal>],

    <ore:oreCopper> : [<immersiveengineering:ore>],

    <ore:stickIron> : [<immersiveengineering:material:1>, <car:iron_stick>],

    <ore:ingotIron> : [<contenttweaker:material_part:72>],
    <ore:ingotCopper> : [<contenttweaker:material_part:94>, <mekanism:ingot:5>],
    <ore:ingotTin> : [<contenttweaker:material_part:37>],
    <ore:ingotSteel> : [<variedcommodities:ingot_steel>, <mekanism:ingot:4>],
    <ore:ingotLead> : [<contenttweaker:material_part:48>],
    <ore:ingotSilver> : [<contenttweaker:material_part>],
    <ore:ingotNickel> : [<contenttweaker:material_part:83>],
    <ore:ingotBronze> : [<variedcommodities:ingot_bronze>],

    <ore:dustIron> : [<immersiveengineering:metal:18>, <mekanism:dust>, <appliedenergistics2:material:49>],
    <ore:dustCopper> : [<immersiveengineering:metal:9>, <mekanism:dust:3>],
    <ore:dustGold> : [<immersiveengineering:metal:19>, <appliedenergistics2:material:51>],
    <ore:dustTin> : [<mekanism:dust:4>],
    <ore:dustSteel> : [<mekanism:otherdust:1>],
    <ore:dustLead> : [<immersiveengineering:metal:11>, <mekanism:dust:6>],
    <ore:dustSilver> : [<immersiveengineering:metal:2>, <mekanism:dust:5>],
    <ore:dustNickel> : [<immersiveengineering:metal:13>],
    <ore:dustLithium> : [<mekanism:otherdust:4>],

    <ore:nuggetIron> : [<immersiveengineering:metal:29>, <minecraft:iron_nugget>],
    <ore:nuggetCopper> : [<immersiveengineering:metal:20>, <mekanism:nugget:5>],
    <ore:nuggetTin> : [<mekanism:nugget:6>],
    <ore:nuggetSteel> : [<mekanism:nugget:4>],
    <ore:nuggetLead> : [<immersiveengineering:metal:22>],
    <ore:nuggetSilver> : [<immersiveengineering:metal:23>],
    <ore:nuggetNickel> : [<immersiveengineering:metal:24>],

    <ore:plateIron> : [<immersiveengineering:metal:39>],
    <ore:plateCopper> : [<immersiveengineering:metal:30>],
    <ore:plateLead> : [<immersiveengineering:metal:32>],
    <ore:plateSilver> : [<immersiveengineering:metal:33>],
    <ore:plateNickel> : [<immersiveengineering:metal:34>]
};

for ore, items in remove {
    for item in items {
        ore.remove(item);
    }
}

<ore:flowers>.add(<minecraft:red_flower:*>, <minecraft:yellow_flower>);
<ore:normalflowers>.add(<botania:flower:*>);
<ore:mushrooms>.add(<botania:mushroom:*>);
<ore:coals>.add(<minecraft:coal>, <minecraft:coal:1>);
<ore:doubleflowers>.add(<botania:doubleflower1:*>, <botania:doubleflower2:*>);
<ore:botaniaGoodItems>.add(<botania:keepivy>, <botania:blacklotus:1>);
<ore:gardens>.add(<harvestcraft:aridgarden>, <harvestcraft:frostgarden>, <harvestcraft:shadedgarden>, <harvestcraft:soggygarden>, <harvestcraft:tropicalgarden>, <harvestcraft:windygarden>);