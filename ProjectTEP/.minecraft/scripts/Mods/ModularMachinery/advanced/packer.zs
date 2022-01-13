/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 60000
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
import crafttweaker.item.IItemStack;

var iron = <minecraft:iron_ingot>;

function PackerRecipeBuilder(name as string, tick as int, perenergy as int, input as IItemStack[], output as IItemStack[]) {
    var recipe = RecipeBuilder.newBuilder(name, "packer", tick);
    recipe.addEnergyPerTickInput(perenergy);
    for Input in input {
        recipe.addItemInput(Input);
    } for Output in output {
        recipe.addItemOutput(Output);
    }
    recipe.build();
}

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

PackerRecipeBuilder("packer:8", 200, 400, [<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:transistor>*2, <pneumaticcraft:capacitor>*2], [<pneumaticcraft:printed_circuit_board>]);
PackerRecipeBuilder("packer:9", 100, 400, [<pneumaticcraft:ingot_iron_compressed>*4, iron], [<pneumaticcraft:compressed_iron_gear>]);
PackerRecipeBuilder("packer:10", 400, 1200, [<contenttweaker:material_part:58>*4, <contenttweaker:pin>*2, <contenttweaker:huge_driver>], [<contenttweaker:singlechip>]);
PackerRecipeBuilder("packer:11", 300, 2000, [<contenttweaker:material_part:149>*2, <mekanism:controlcircuit:3>, <contenttweaker:pin>], [<contenttweaker:exe>]);
PackerRecipeBuilder("packer:12", 100, 2000, [<contenttweaker:material_part:139>*4, <contenttweaker:material_part:136>*2, <contenttweaker:paper_ee>], [<contenttweaker:pin>]);
PackerRecipeBuilder("packer:13", 200, 1200, [<contenttweaker:material_part:139>*8, <contenttweaker:material_part:138>*4], [<contenttweaker:motor>]);
PackerRecipeBuilder("pack:14", 600, 480, [<contenttweaker:mini_driver>, <contenttweaker:ram>, <contenttweaker:test_unit>], [<contenttweaker:mediuim_driver>]);
PackerRecipeBuilder("pack:15", 700, 560, [<contenttweaker:mediuim_driver>, <contenttweaker:rom>, <contenttweaker:temperature_monitor>], [<contenttweaker:huge_driver>]);
PackerRecipeBuilder("pack:16", 1200, 100, [<minecraft:paper>, <ironchest:iron_chest:6>*2, <mekanism:machineblock2:11>.withTag({tier: 3})*2], [<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mixin_tank"})]);
PackerRecipeBuilder("pack:17", 200, 1200, [<contenttweaker:ram>, <contenttweaker:papers>*8, <contenttweaker:tin_solder_dust>*8], [<contenttweaker:rom>]);