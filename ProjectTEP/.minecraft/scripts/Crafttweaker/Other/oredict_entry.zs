/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val remove as IItemStack[][IOreDictEntry] = {
    <ore:etLaserLens> : [<environmentaltech:laser_lens_crystal>],

    <ore:oreCopper> : [<immersiveengineering:ore>, <thermalfoundation:ore>],
    <ore:oreTin> : [<thermalfoundation:ore:1>],
    <ore:oreSilver> : [<thermalfoundation:ore:2>],
    <ore:oreLead> : [<thermalfoundation:ore:3>],
    <ore:oreNickel> : [<thermalfoundation:ore:5>],
    <ore:orePlatinum> : [<thermalfoundation:ore:6>],
    <ore:oreAluminum> : [<thermalfoundation:ore:4>],

    <ore:stickIron> : [<immersiveengineering:material:1>, <car:iron_stick>],

    <ore:ingotIron> : [<contenttweaker:material_part:66>],
    <ore:ingotCopper> : [<contenttweaker:material_part:88>, <mekanism:ingot:5>, <thermalfoundation:material:128>],
    <ore:ingotTin> : [<contenttweaker:material_part:33>, <thermalfoundation:material:129>],
    <ore:ingotSteel> : [<variedcommodities:ingot_steel>, <mekanism:ingot:4>, <thermalfoundation:material:160>],
    <ore:ingotLead> : [<contenttweaker:material_part:44>, <thermalfoundation:material:131>],
    <ore:ingotSilver> : [<contenttweaker:material_part>, <thermalfoundation:material:130>],
    <ore:ingotNickel> : [<contenttweaker:material_part:77>, <thermalfoundation:material:133>],
    /*
    <ore:ingotIron> : [<contenttweaker:material_part:72>],
    <ore:ingotCopper> : [<contenttweaker:material_part:94>, <mekanism:ingot:5>, <thermalfoundation:material:128>],
    <ore:ingotTin> : [<contenttweaker:material_part:37>, <thermalfoundation:material:129>],
    <ore:ingotSteel> : [<variedcommodities:ingot_steel>, <mekanism:ingot:4>, <thermalfoundation:material:160>],
    <ore:ingotLead> : [<contenttweaker:material_part:48>, <thermalfoundation:material:131>],
    <ore:ingotSilver> : [<contenttweaker:material_part>, <thermalfoundation:material:130>],
    <ore:ingotNickel> : [<contenttweaker:material_part:83>, <thermalfoundation:material:133>],
    */
    <ore:ingotBronze> : [<variedcommodities:ingot_bronze>, <thermalfoundation:material:163>],
    <ore:ingotConstantan> : [<thermalfoundation:material:164>],
    <ore:ingotElectrum> : [<thermalfoundation:material:161>],
    <ore:ingotAluminum> : [<thermalfoundation:material:132>],
    <ore:ingotPlatinum> : [<thermalfoundation:material:134>],

    <ore:dustIron> : [<immersiveengineering:metal:18>, <mekanism:dust>, <appliedenergistics2:material:49>, <thermalfoundation:material:0>],
    <ore:dustCopper> : [<immersiveengineering:metal:9>, <mekanism:dust:3>, <thermalfoundation:material:64>],
    <ore:dustGold> : [<immersiveengineering:metal:19>, <appliedenergistics2:material:51>, <thermalfoundation:material:1>],
    <ore:dustTin> : [<mekanism:dust:4>, <thermalfoundation:material:65>],
    <ore:dustSteel> : [<mekanism:otherdust:1>, <thermalfoundation:material:96>],
    <ore:dustLead> : [<immersiveengineering:metal:11>, <mekanism:dust:6>, <thermalfoundation:material:67>],
    <ore:dustSilver> : [<immersiveengineering:metal:12>, <mekanism:dust:5>, <thermalfoundation:material:66>],
    <ore:dustNickel> : [<immersiveengineering:metal:13>, <thermalfoundation:material:69>],
    <ore:dustConstantan> : [<thermalfoundation:material:100>],
    <ore:dustElectrum> : [<thermalfoundation:material:97>],
    <ore:dustAluminum> : [<thermalfoundation:material:68>],
    <ore:dustPlatinum> : [<thermalfoundation:material:70>],
    <ore:dustObsidian> : [<thermalfoundation:material:770>],
    <ore:dustLithium> : [<mekanism:otherdust:4>],
    <ore:dustSulfur> : [<mekanism:otherdust:3>],

    <ore:nuggetIron> : [<immersiveengineering:metal:29>, <minecraft:iron_nugget>],
    <ore:nuggetCopper> : [<immersiveengineering:metal:20>, <mekanism:nugget:5>, <thermalfoundation:material:192>],
    <ore:nuggetTin> : [<mekanism:nugget:6>, <thermalfoundation:material:193>],
    <ore:nuggetSteel> : [<mekanism:nugget:4>, <thermalfoundation:material:224>],
    <ore:nuggetLead> : [<immersiveengineering:metal:22>, <thermalfoundation:material:195>],
    <ore:nuggetSilver> : [<immersiveengineering:metal:23>, <thermalfoundation:material:194>],
    <ore:nuggetNickel> : [<immersiveengineering:metal:24>, <thermalfoundation:material:197>],
    <ore:nuggetConstantan> : [<thermalfoundation:material:228>],
    <ore:nuggetElectrum> : [<thermalfoundation:material:225>],
    <ore:nuggetAluminum> : [<thermalfoundation:material:196>],
    <ore:nuggetPlatinum> : [<thermalfoundation:material:198>],
    <ore:nuggetBronze> : [<thermalfoundation:material:227>],

    <ore:plateIron> : [<immersiveengineering:metal:39>, <thermalfoundation:material:32>],
    <ore:plateCopper> : [<thermalfoundation:material:320>, <immersiveengineering:metal:30>],
    <ore:plateTin> : [<thermalfoundation:material:321>],
    <ore:plateLead> : [<thermalfoundation:material:323>, <immersiveengineering:metal:32>],
    <ore:plateSilver> : [<thermalfoundation:material:322>, <immersiveengineering:metal:33>],
    <ore:plateNickel> : [<thermalfoundation:material:325>, <immersiveengineering:metal:34>],
    <ore:plateGold> : [<thermalfoundation:material:33>],
    <ore:plateConstantan> : [<thermalfoundation:material:356>],
    <ore:plateElectrum> : [<thermalfoundation:material:353>],
    <ore:plateSteel> : [<thermalfoundation:material:352>],
    <ore:plateAluminum> : [<thermalfoundation:material:324>],
    <ore:platePlatinum> : [<thermalfoundation:material:326>],

    <ore:gearIron> : [<thermalfoundation:material:24>],
    <ore:gearCopper> : [<thermalfoundation:material:256>],
    <ore:gearTin> : [<thermalfoundation:material:257>],
    <ore:gearLead> : [<thermalfoundation:material:259>],
    <ore:gearSilver> : [<thermalfoundation:material:258>],
    <ore:gearNickel> : [<thermalfoundation:material:261>],
    <ore:gearPlatinum> : [<thermalfoundation:material:262>],

    <ore:blockCopper> : [<thermalfoundation:storage:0>],
    <ore:blockTin> : [<thermalfoundation:storage:1>],
    <ore:blockLead> : [<thermalfoundation:storage:3>],
    <ore:blockSilver> : [<thermalfoundation:storage:2>],
    <ore:blockNickel> : [<thermalfoundation:storage:5>],
    <ore:blockConstantan> : [<thermalfoundation:storage_alloy:4>],
    <ore:blockElectrum> : [<thermalfoundation:storage_alloy:1>],
    <ore:blockSteel> : [<thermalfoundation:storage_alloy:0>],
    <ore:blockBronze> : [<thermalfoundation:storage_alloy:3>],
    <ore:blockAluminum> : [<thermalfoundation:storage:4>],
    <ore:blockPlatinum> : [<thermalfoundation:storage:6>]
};

for ore, items in remove {
    for item in items {

        ore.remove(item);
        recipes.remove(item);
        furnace.remove(item);
        JEI.removeAndHide(item);

/*
        mods.appliedenergistics2.Grinder.removeRecipe(item);

        mods.thermalexpansion.RedstoneFurnace.removeRecipe(item);
        mods.thermalexpansion.Pulverizer.removeRecipe(item);
        mods.thermalexpansion.Compactor.removePressRecipe(item);
        mods.thermalexpansion.Compactor.removeGearRecipe(item);

        mods.mekanism.combiner.removeRecipe(item);
        mods.mekanism.enrichment.removeRecipe(item);
        
        mods.immersiveengineering.ArcFurnace.removeRecipe(item);
*/
    }
}

<ore:flowers>.add(<minecraft:red_flower:*>, <minecraft:yellow_flower>);
<ore:normalflowers>.add(<botania:flower:*>);
<ore:mushrooms>.add(<botania:mushroom:*>);
<ore:coals>.add(<minecraft:coal>, <minecraft:coal:1>);
<ore:doubleflowers>.add(<botania:doubleflower1:*>, <botania:doubleflower2:*>);
<ore:botaniaGoodItems>.add(<botania:keepivy>, <botania:blacklotus:1>);
<ore:gardens>.add(<harvestcraft:aridgarden>, <harvestcraft:frostgarden>, <harvestcraft:shadedgarden>, <harvestcraft:soggygarden>, <harvestcraft:tropicalgarden>, <harvestcraft:windygarden>);