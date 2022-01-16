/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import scripts.Classes.MaterialPartUtils.MaterialPartUtils;

val MPUtils as MaterialPartUtils = MaterialPartUtils("Instanced");
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
    "ingot","crushed_ore","dust","dirty_dust","nugget",
    "plate","dense_plate","casing","rod","bolt","gear"
];

for name, color in materials {
    var Material = MPUtils.registeMaterial(name, color);
    for Part in part {
        MPUtils.registeMaterialPart(Material.getName(), Part);
    }
}

var material as string[] = ["Lithium","Platinum","Graphite"];
var blocks as string[] = ["ore","block"];
for Materials in material {
    for Blocks in blocks {
        var MaterialPart = MPUtils.registeMaterialPart(Materials, Blocks);
        MPUtils.addData(MaterialPart, "hardness", "6");
        MPUtils.addData(MaterialPart, "harvestLevel", "2");
    }
}