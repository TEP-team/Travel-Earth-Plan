/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70002
#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import scripts.basic_tweaks.materials.MaterialUtils as MUtils;

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
    var Builder = MaterialSystem.getMaterialBuilder();
    var Material = Builder.setName(name).setColor(color).build();
    for Part in part {
        Material.registerPart(Part);
    }
}

var material as string[] = ["lithium","platinum","graphite"];
for Materials in material {
    var blocks as string[] = ["ore","block"];
    for Blocks in blocks {
        var data = MUtils.registeMaterialPart(Blocks, Materials).getData();
        data.addDataValue("hardness", "6");
        data.addDataValue("harvestLevel", "2");
    }
}