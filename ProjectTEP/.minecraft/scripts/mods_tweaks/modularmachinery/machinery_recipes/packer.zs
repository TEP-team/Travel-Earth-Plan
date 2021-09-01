/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 39000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

function oneBuilder(name as string, tick as int, perenergy as int, input as IItemStack, output as IItemStack) {
    RecipeBuilder.newBuilder(name, "packer", tick).
    addEnergyPerTickInput(perenergy).
    addItemInput(input).
    addItemOutput(output).
    build();
}

function twoBuilder(name as string, tick as int, perenergy as int, input1 as IItemStack, input2 as IItemStack, output as IItemStack) {
    RecipeBuilder.newBuilder(name, "packer", tick).
    addEnergyPerTickInput(perenergy).
    addItemInput(input1).
    addItemInput(input2).
    addItemOutput(output).
    build();
}

function threeBuilder(
    name as string, tick as int, perenergy as int, input1 as IItemStack, input2 as IItemStack, input3 as IItemStack, output as IItemStack) {
    RecipeBuilder.newBuilder(name, "packer", tick).
    addEnergyPerTickInput(perenergy).
    addItemInput(input1).
    addItemInput(input2).
    addItemInput(input3).
    addItemOutput(output).
    build();
}

var iron = <minecraft:iron_ingot>;

//materials
var materials as IItemDefinition = <contenttweaker:material_part>.definition;
val bearingInt as int[] = [0,17,34,51,68,85,102,119,136,153,170,187,204];
val beamInt as int[] = [1,18,35,52,69,86,103,120,137,154,171,188,205];
val boltInt as int[] = [2,19,36,53,70,87,104,121,138,155,172,189,206];
val casingInt as int[] = [3,20,37,54,71,88,105,122,139,156,173,190,207];
val denseplateInt as int[] = [7,24,41,58,75,92,109,126,143,160,177,194,211];
val gearInt as int[] = [10,27,44,61,78,95,112,129,146,163,180,197,214];
val ingotInt as int[] = [11,28,45,62,79,96,113,130,147,164,181,198,215];
val nuggetInt as int[] = [12,29,46,63,80,97,114,131,148,165,182,199,216];
val plateInt as int[] = [13,30,47,64,81,98,115,132,149,166,183,200,217];
val rodInt as int[] = [14,31,48,65,82,99,116,133,150,167,184,201,218];

//add recipes
for r, BearingInt in bearingInt {
    val bearings = materials.makeStack(BearingInt);
	val plates = materials.makeStack(plateInt[r]);
    val bolts = materials.makeStack(boltInt[r]);
    twoBuilder("packer:0_" ~ r, 40, 25, plates, bolts*4, bearings);
}

for r, BeamInt in beamInt {
	val beams = materials.makeStack(BeamInt);
    val rods = materials.makeStack(rodInt[r]);
	val plates = materials.makeStack(plateInt[r]);
    twoBuilder("packer:1_" ~ r, 40, 25, rods, plates, beams);
}

for r, BoltInt in boltInt {
	val bolts = materials.makeStack(BoltInt);
	val ingots = materials.makeStack(ingotInt[r]);
    val beams = materials.makeStack(beamInt[r]);
	twoBuilder("packer:2_" ~ r, 40, 25, beams, ingots, bolts);
}

for r, CasingInt in casingInt {
	val casings = materials.makeStack(CasingInt);
	val plates = materials.makeStack(plateInt[r]);
    oneBuilder("packer:3_" ~ r, 40, 25, plates, casings*2);
}

for r, GearInt in gearInt {
	val gears = materials.makeStack(GearInt);
	val ingots = materials.makeStack(ingotInt[r]);
    twoBuilder("packer:4_" ~ r, 40, 25, ingots*4, iron, gears);
}

for r, DenseplateInt in denseplateInt {
	val denseplates = materials.makeStack(DenseplateInt);
    val beams = materials.makeStack(beamInt[r]);
	val plates = materials.makeStack(plateInt[r]);
    twoBuilder("packer:5_" ~ r, 40, 25, plates*4, beams, denseplates);
}

for r, PlateInt in plateInt {
	val plates = materials.makeStack(PlateInt);
	val ingots = materials.makeStack(ingotInt[r]);
	oneBuilder("packer:6_" ~ r, 40, 25, ingots, plates);
}

for r, RodInt in rodInt {
	val rods = materials.makeStack(RodInt);
	val nuggets = materials.makeStack(nuggetInt[r]);
    oneBuilder("packer:7_" ~ r, 40, 25, nuggets*3, rods);
}

//printed_circuit_board
threeBuilder("packer:8", 200, 400, <pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>*2, <pneumaticcraft:capacitor>*2, <pneumaticcraft:printed_circuit_board>);

//compressed_iron_gear
twoBuilder("packer:9", 100, 400, <pneumaticcraft:ingot_iron_compressed>*4, iron, <pneumaticcraft:compressed_iron_gear>);

//singlechip
threeBuilder("packer:10", 400, 1200, <contenttweaker:material_part:58>*4, <contenttweaker:pin>*2, <contenttweaker:mini_driver>, <contenttweaker:singlechip>);

//exe
threeBuilder("packer:11", 300, 2000, <contenttweaker:material_part:149>*2, <mekanism:controlcircuit:3>, <contenttweaker:pin>, <contenttweaker:exe>);

//pin
threeBuilder("packer:12", 100, 2000, <contenttweaker:material_part:139>*4, <contenttweaker:material_part:136>*2, <contenttweaker:paper_ee>, <contenttweaker:pin>);

//motor
twoBuilder("packer:13", 200, 1200, <contenttweaker:material_part:139>*8, <contenttweaker:material_part:138>*4, <contenttweaker:motor>);

//mediuim_driver
threeBuilder("pack:14", 600, 480, <contenttweaker:mini_driver>, <contenttweaker:ram>, <contenttweaker:test_unit>, <contenttweaker:mediuim_driver>);

//huge_driver
threeBuilder("pack:15", 700, 560, <contenttweaker:mediuim_driver>, <contenttweaker:rom>, <contenttweaker:temperature_monitor>, <contenttweaker:huge_driver>);

//mixin_tank
threeBuilder("pack:16", 1200, 100, <minecraft:paper>, <ironchest:iron_chest:6>*2, <mekanism:machineblock2:11>.withTag({tier: 3})*2, <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixin_tank"}));