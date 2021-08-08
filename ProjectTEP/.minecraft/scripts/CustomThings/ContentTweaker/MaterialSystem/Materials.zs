/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32759

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import scripts.CustomThings.ContentTweaker.MaterialSystem.Parts;

//PartTypes for TEP
static Custom as string[] = [
    "control_circuit",
    "energy_circuit",
    "machinery_circuit",
    "bearing"
];

static PartType as string[] = [
    "beam","bolt","casing","clump","crystal",
    "crushed_ore","dense_plate","dirty_dust",
    "dust","gear","ingot","nugget","plate",
    "rod","shard","block","ore",
    "dense_ore","poor_ore"
];

static Special_1 as string[] = [
    "beam","bolt","casing","clump","crystal",
    "crushed_ore","dense_plate","dirty_dust",
    "dust","gear","nugget","plate","rod",
    "shard","block"
];

static Special_2 as string[] = [
    "beam","bolt","casing","clump","crystal",
    "crushed_ore","dense_plate","dirty_dust",
    "dust","gear","ingot","nugget","plate",
    "rod","shard","block"
];

//BasicIum
static BasicIum as Material = MaterialSystem.getMaterialBuilder().
setName("bium").
setColor(0xd03700).
build();
BasicIum.registerParts(["Custom","Special_1"] as string[]);

//MiddleIum
static MiddleIum as Material = MaterialSystem.getMaterialBuilder().
setName("mium").
setColor(0x8B0000).
build();
MiddleIum.registerParts(["Custom","Special_2"] as string[]);

//AdvancedIum
static AdvancedIum as Material = MaterialSystem.getMaterialBuilder().
setName("aium").
setColor(0x8B008B).
build();
AdvancedIum.registerParts(["Custom","Special_2"] as string[]);

//graphite
static graphite as Material = MaterialSystem.getMaterialBuilder().
setName("graphite").
setColor(0x343434).
build();
graphite.registerParts(["Custom","Special_2"] as string[]);

//uranium
static uranium as Material = MaterialSystem.getMaterialBuilder().
setName("uranium").
setColor(0x2b6921).
build();
uranium.registerParts(["Custom","PartType"] as string[]);

//plutonium
static plutonium as Material = MaterialSystem.getMaterialBuilder().
setName("plutonium").
setColor(0xcccccc).
build();
plutonium.registerParts(["Custom","PartType"] as string[]);

//lithium
static lithium as Material = MaterialSystem.getMaterialBuilder().
setName("lithium").
setColor(0xf7f7f7).
build();
lithium.registerParts(["Custom","PartType"] as string[]);

//phosphorus
static phosphorus as Material = MaterialSystem.getMaterialBuilder().
setName("phosphorus").
setColor(0x4497e9).
build();
phosphorus.registerParts(["Custom","PartType"] as string[]);

//platinum
static platinum as Material = MaterialSystem.getMaterialBuilder().
setName("platinum").
setColor(0xc7d7d8).
build();
platinum.registerParts(["Custom","PartType"] as string[]);