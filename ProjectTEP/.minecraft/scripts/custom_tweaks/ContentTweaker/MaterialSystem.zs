/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70002
#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialPart;

//part
MaterialSystem.getPartBuilder().setName("bearing").setPartType(MaterialSystem.getPartType("item")).build();

//materials
val register as int[string] = {
    "bium" : 0xd03700,
    "mium" : 0x8B0000,
    "aium" : 0x8B008B,
    "graphite" : 0x343434,
    "uranium" : 0x2b6921,
    "plutonium" : 0x3b4e00,
    "lithium" : 0xf7f7f7,
    "phosphorus" : 0x4497e9,
    "platinum" : 0xced5d6,
    "mercury" : 0xd7f4ec,
    "nickel" : 0xfff5cc,
    "silver" : 0xdff9ff,
    "lead" : 0x454e71
};

for name, color in register {
    val Normal as string[] =
    [
        "bearing","beam","bolt","casing","clump",
        "crystal","crushed_ore","dense_plate",
        "dirty_dust","dust","gear","ingot",
        "nugget","plate","rod","shard",
        "block","ore","dense_ore","poor_ore"
    ];
    MaterialSystem.getMaterialBuilder().setName(name).setColor(color).build().registerParts(Normal as string[]);
}

//===============================================================

function oreBuilder(obj as MaterialPart[], hardness as string, harvestLevel as string) {
    for Obj in obj {
        var data = Obj.getData();
        data.addDataValue("hardness", hardness);
        data.addDataValue("harvestLevel", harvestLevel);
    }
}

/* 使用二维MaterialPart组套出材料，接着用for遍历，遍历内写入打包好的 oreBuilder 函数，即可完成构造.
 * 加油！
 */

val bium = [<materialpart:bium:ore>,<materialpart:bium:dense_ore>,<materialpart:bium:poor_ore>];
//uranium_ore
val uranium_ore = MaterialSystem.getMaterialBuilder().
setName("uranium").
setColor(0x2b6921).
build().
registerPart("ore" as string).
getData();
uranium_ore.addDataValue("hardness", "5");
uranium_ore.addDataValue("harvestLevel", "2");

//lithium_ore
val lithium_ore = MaterialSystem.getMaterialBuilder().
setName("lithium").
setColor(0xf7f7f7).
build().
registerPart("ore" as string).
getData();
lithium_ore.addDataValue("hardness", "6");
lithium_ore.addDataValue("harvestLevel", "2");

//phosphorus_ore
val phosphorus_ore = MaterialSystem.getMaterialBuilder().
setName("phosphorus").
setColor(0x4497e9).
build().
registerPart("ore" as string).
getData();
phosphorus_ore.addDataValue("hardness", "3");

//platinum_ore
val platinum_ore = MaterialSystem.getMaterialBuilder().
setName("platinum").
setColor(0xced5d6).
build().
registerPart("ore" as string).
getData();
platinum_ore.addDataValue("hardness", "6");
platinum_ore.addDataValue("harvestLevel", "2");

//mercury_ore
val mercury_ore = MaterialSystem.getMaterialBuilder().
setName("mercury").
setColor(0xd7f4ec).
build().
registerPart("ore" as string).
getData();
mercury_ore.addDataValue("hardness", "6");
mercury_ore.addDataValue("harvestLevel", "2");

//nickel_ore
val nickel_ore = MaterialSystem.getMaterialBuilder().
setName("nickel").
setColor(0xfff5cc).
build().
registerPart("ore" as string).
getData();
nickel_ore.addDataValue("hardness", "5");
nickel_ore.addDataValue("harvestLevel", "2");

//silver_ore
val silver_ore = MaterialSystem.getMaterialBuilder().
setName("silver").
setColor(0xdff9ff).
build().
registerPart("ore" as string).
getData();
silver_ore.addDataValue("hardness", "5");
silver_ore.addDataValue("harvestLevel", "2");

//lead_ore
val lead_ore = MaterialSystem.getMaterialBuilder().
setName("lead").
setColor(0x454e71).
build().
registerPart("ore" as string).
getData();
lead_ore.addDataValue("hardness", "4");