/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker

val materials as int[string] = {
    "Iron" : 0xd8d8d8,
    "Copper" : 0xd57635,
    "Tin" : 0xffffff,
    "Graphite" : 0x343434,
    "Lithium" : 0xf7f7f7,
    "Platinum" : 0xced5d6,
    "Nickel" : 0xfff5cc,
    "Silver" : 0xdff9ff,
    "Lead" : 0x454e71
};

val parts as string[] = [
    "ingot", "crushed_ore", "dust", "dirty_dust", "nugget", 
    "plate", "dense_plate", "casing", "rod", "bolt", "gear"
];

for name, color in materials {
    val Material = MaterialPartUtils.registeMaterial(name, color);
    for part in parts {
        val MaterialPart = MaterialPartUtils.registeMaterialPart(Material.getName(), part);
    }
}

val material as string[][] = [["ore", "block"], ["Lithium", "Platinum", "Graphite"], ["5", "6", "5"], ["2", "2", "1"]];
for type in material[0] {
    for i, Material in material[1] {
        var MaterialPart = MaterialPartUtils.registeMaterialPart(Material, type);
        MaterialPartUtils.addData(MaterialPart, "hardness", material[2][i]);
        MaterialPartUtils.addData(MaterialPart, "harvestLevel", material[3][i]);
    }
}