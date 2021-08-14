/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32760

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;

//Bearing
val bearing as Part = MaterialSystem.getPartBuilder().
setName("bearing").
setPartType(MaterialSystem.getPartType("item")).
build();

val Normal as string[] = 
[
    "Bearing","beam","bolt","casing","clump",
    "crystal","crushed_ore","dense_plate",
    "dirty_dust","dust","gear","ingot",
    "nugget","plate","rod","shard",
    "block",
];

val Special_1 as string[] = 
[
    "Bearing","beam","bolt","casing","clump",
    "crystal","crushed_ore","dense_plate",
    "dirty_dust","dust","gear","nugget",
    "plate","rod","shard","block"
];

val Special_2 as string[] = 
[
    "Bearing","beam","bolt","casing","clump",
    "crystal","crushed_ore","dense_plate",
    "dirty_dust","dust","gear","ingot",
    "nugget","plate","rod","shard","block"
];

//===============================================================

//BasicIum
val BasicIum = MaterialSystem.getMaterialBuilder().
setName("bium").
setColor(0xd03700).
build().
registerParts(Special_1 as string[]);

//===============================================================

//MiddleIum
val MiddleIum = MaterialSystem.getMaterialBuilder().
setName("mium").
setColor(0x8B0000).
build().
registerParts(Special_2 as string[]);

//===============================================================

//AdvancedIum
val AdvancedIum = MaterialSystem.getMaterialBuilder().
setName("aium").
setColor(0x8B008B).
build().
registerParts(Special_2 as string[]);

//===============================================================

//graphite
val graphite = MaterialSystem.getMaterialBuilder().
setName("graphite").
setColor(0x343434).
build().
registerParts(Special_2 as string[]);

//===============================================================

//uranium
val uranium = MaterialSystem.getMaterialBuilder().
setName("uranium").
setColor(0x2b6921).
build().
registerParts(Normal as string[]);

//uranium_ore
val uranium_ore = MaterialSystem.getMaterialBuilder().
setName("uranium").
setColor(0x2b6921).
build().
registerPart("ore" as string).
getData();
uranium_ore.addDataValue("hardness", "4");

//===============================================================

//plutonium
val plutonium = MaterialSystem.getMaterialBuilder().
setName("plutonium").
setColor(0xcccccc).
build().
registerParts(Normal as string[]);

//plutonium_ore
val plutonium_ore = MaterialSystem.getMaterialBuilder().
setName("plutonium").
setColor(0xcccccc).
build().
registerPart("ore" as string).
getData();
plutonium_ore.addDataValue("hardness", "5");
plutonium_ore.addDataValue("harvestLevel", "2");

//===============================================================

//lithium
val lithium = MaterialSystem.getMaterialBuilder().
setName("lithium").
setColor(0xf7f7f7).
build().
registerParts(Normal as string[]);

//lithium_ore
val lithium_ore = MaterialSystem.getMaterialBuilder().
setName("lithium").
setColor(0xf7f7f7).
build().
registerPart("ore" as string).
getData();
lithium_ore.addDataValue("hardness", "5");
lithium_ore.addDataValue("harvestLevel", "2");

//===============================================================

//phosphorus
val phosphorus = MaterialSystem.getMaterialBuilder().
setName("phosphorus").
setColor(0x4497e9).
build().
registerParts(Normal as string[]);

//phosphorus_ore
val phosphorus_ore = MaterialSystem.getMaterialBuilder().
setName("phosphorus").
setColor(0x4497e9).
build().
registerPart("ore" as string).
getData();
phosphorus_ore.addDataValue("hardness", "3");

//===============================================================

//platinum
val platinum = MaterialSystem.getMaterialBuilder().
setName("platinum").
setColor(0xc7d7d8).
build().
registerParts(Normal as string[]);

//platinum_ore
val platinum_ore = MaterialSystem.getMaterialBuilder().
setName("platinum").
setColor(0xc7d7d8).
build().
registerPart("ore" as string).
getData();
platinum_ore.addDataValue("hardness", "6");
platinum_ore.addDataValue("harvestLevel", "2");

//===============================================================

//mercury
val mercury = MaterialSystem.getMaterialBuilder().
setName("mercury").
setColor(0xd7f4ec).
build().
registerParts(Normal as string[]);

//mercury_ore
val mercury_ore = MaterialSystem.getMaterialBuilder().
setName("mercury").
setColor(0xd7f4ec).
build().
registerPart("ore" as string).
getData();
mercury_ore.addDataValue("hardness", "5");
mercury_ore.addDataValue("harvestLevel", "2");

//===============================================================

//nickel
val nickel = MaterialSystem.getMaterialBuilder().
setName("nickel").
setColor(0xfff5cc).
build().
registerParts(Normal as string[]);

//nickel_ore
val nickel_ore = MaterialSystem.getMaterialBuilder().
setName("nickel").
setColor(0xfff5cc).
build().
registerPart("ore" as string).
getData();
nickel_ore.addDataValue("hardness", "5");
nickel_ore.addDataValue("harvestLevel", "2");

//===============================================================