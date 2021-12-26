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
    "lead" : 0x454e71,
    "iron" : 0xf5f6f9,
    "copper" : 0xd57635,
    "tin" : 0xffffff
};

for name, color in register {
    val Normal as string[] =
    [
        "bolt","casing","crushed_ore","dense_plate",
        "dirty_dust","dust","gear","ingot","nugget",
        "plate","rod","block","ore","dense_ore"
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

val ium as MaterialPart[][] = 
    [[<materialpart:uranium:ore>,<materialpart:uranium:dense_ore>],
     [<materialpart:lithium:ore>,<materialpart:lithium:dense_ore>],
     [<materialpart:phosphorus:ore>,<materialpart:phosphorus:dense_ore>],
     [<materialpart:platinum:ore>,<materialpart:platinum:dense_ore>],
     [<materialpart:mercury:ore>,<materialpart:mercury:dense_ore>],
     [<materialpart:nickel:ore>,<materialpart:nickel:dense_ore>],
     [<materialpart:silver:ore>,<materialpart:silver:dense_ore>],
     [<materialpart:lead:ore>,<materialpart:lead:dense_ore>]];

val hardness as string[] = ["5","6","3","6","6","5","5","4"];
val harvestLevel as string[] = ["2","2","1","2","2","2","2","1"];

for Ium in ium {
    for Hardness in hardness {
        for HarvestLevel in harvestLevel {
            oreBuilder(Ium, Hardness, HarvestLevel);
        }
    }
}