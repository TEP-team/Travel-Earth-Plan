/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import mods.contenttweaker.MaterialSystem as System;
import scripts.Classes.MaterialPartUtils as MPUtils;

val materials as int[string] = {
    "Iron" : 0xf5f6f9,
    "Copper" : 0xd57635,
    "Tin" : 0xffffff,
    "Graphite" : 0x343434,
    "Lithium" : 0xf7f7f7,
    "Platinum" : 0xced5d6,
    "Nickel" : 0xfff5cc,
    "Silver" : 0xdff9ff,
    "Lead" : 0x454e71
};

val part as string[] = [
    "bolt","casing","crushed_ore",
    "dense_plate","dirty_dust","dust",
    "gear","ingot","nugget","plate","rod"
];

for name, color in materials {
    var Builder = System.getMaterialBuilder();
    var Material = Builder.setName(name).setColor(color).build();
    for Part in part {



        var name = Material.registerPart(Part).getName();
        print(name);



    }
}

for Materials in ["Lithium","Platinum","Graphite"] {
    for Blocks in ["ore","block"] {
        var MaterialPart = MPUtils.registeMaterialPart(Materials, Blocks);
        var map as string[string] = {
            "hardness" : "6",
            "harvestLevel" : "2"
        };
        for Hardness, HarvestLevel in map {
            MPUtils.addDataByMaterialPart(MaterialPart, Hardness, HarvestLevel);
        }
    }
}