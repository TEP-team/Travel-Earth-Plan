/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

var iron = <ore:ingotIron>;
var rs = <ore:dustRedstone>;
val paper = <minecraft:paper>;

//contenttweaker
recipes.addShaped(<contenttweaker:sieve_string>,
    [[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:string>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]]);

recipes.addShaped(<contenttweaker:snow_tool>,
    [[null,null,<minecraft:dye:4>],
	 [null,iron,null],
	 [rs,null,null]]);

recipes.addShapeless(<contenttweaker:wood_residue>,
    [<contenttweaker:sieve_string>.anyDamage().transformDamage(),<minecraft:snowball>]);

var wr as IItemStack = <contenttweaker:wood_residue>;
var bwr as IItemStack = <contenttweaker:big_wood_residue>;
recipes.addShapeless(<minecraft:log>,
    [<contenttweaker:snow_tool>.anyDamage().transformDamage(2),wr,wr,wr,wr,wr,wr,wr,wr]);
recipes.addShapeless(<minecraft:log>,
    [<contenttweaker:snow_tool>.anyDamage().transformDamage(2),bwr,bwr]);
recipes.addShapeless(bwr,
    [wr,wr,wr,wr]);

recipes.addShaped(<contenttweaker:conversion_core>,
    [[rs,rs,rs],
	 [rs,iron,rs],
	 [rs,rs,rs]]);

recipes.addShaped(<contenttweaker:handsaw_wood>,
    [[null,null,iron],
	 [null,iron,<ore:plankWood>],
	 [<minecraft:stick>,<ore:plankWood>,null]]);

recipes.addShaped(<contenttweaker:medical_splint>,
    [[null,<minecraft:stick>,<minecraft:string>],
	 [<minecraft:stick>,null,<minecraft:stick>],
	 [<minecraft:string>,<minecraft:stick>,null]]);

recipes.addShaped(<contenttweaker:medical_metal_splint>,
    [[null,<contenttweaker:metal_stick>,<minecraft:string>],
	 [<contenttweaker:metal_stick>,null,<contenttweaker:metal_stick>],
	 [<minecraft:string>,<contenttweaker:metal_stick>,null]]);

recipes.addShaped(<contenttweaker:metal_stick>*4,
    [[iron],
	 [iron],
	 [iron]]);

recipes.addShaped(<contenttweaker:pipe_empty>,
    [[null,null,<contenttweaker:metal_stick>],
	 [null,iron,null],
	 [<contenttweaker:metal_stick>,null,null]]);

recipes.addShapeless(<contenttweaker:cloth_string>,
    [<minecraft:string>,<minecraft:string>,<minecraft:string>]);

recipes.addShapeless(<contenttweaker:medical_bandage>,
    [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>]);

recipes.addShaped(<contenttweaker:medical_pack>,
    [[<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>],
	 [<contenttweaker:medical_bandage>,<contenttweaker:pipe_blood>,<contenttweaker:medical_metal_splint>],
	 [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>]]);

recipes.addShaped(<contenttweaker:hammer_plate>,
    [[null,iron,null],
	 [null,<minecraft:stick>,iron],
	 [<minecraft:stick>,null,null]]);

recipes.addShapeless(<contenttweaker:blueprint_empty>,
	[paper,<ore:dyeLightBlue>,<ore:dyeLightBlue>,<ore:dyeLightBlue>]);

recipes.addShaped(<contenttweaker:structure_block>*6,
    [[<mekanism:controlcircuit:2>,<ore:ingotGold>,<mekanism:controlcircuit:2>],
	 [<ore:ingotGold>,<modularmachinery:blockcasing>,<ore:ingotGold>],
	 [<mekanism:controlcircuit:2>,<ore:ingotGold>,<mekanism:controlcircuit:2>]]);

recipes.addShaped(<contenttweaker:electric_iron>,
	[[null,null,<contenttweaker:ingot_in>],
	 [null,<minecraft:diamond>,null],
	 [<contenttweaker:metal_stick>,null,null]]);

recipes.addShapeless(<contenttweaker:ingot_is>,
	[<ore:ingotTin>,<contenttweaker:electric_iron>.anyDamage().transformDamage()]);

recipes.addShapeless(<contenttweaker:tin_solder_dust>,
	[<ore:dustTin>,<contenttweaker:electric_iron>.anyDamage().transformDamage()]);

recipes.addShapeless(<contenttweaker:iron_with_nickel>,
	[<ore:dustIron>,<contenttweaker:material_part:179>]);

recipes.addShapeless(<contenttweaker:material_part:11>*2,
	[<ore:ingotIron>,<ore:ingotGold>,<ore:dustRedstone>]);

recipes.addShaped(<contenttweaker:pc>,
	[[<contenttweaker:material_part:143>,<contenttweaker:pcb>,<contenttweaker:material_part:143>],
	 [<contenttweaker:ram>,<contenttweaker:singlechip>,<contenttweaker:rom>],
	 [<contenttweaker:material_part:143>,<contenttweaker:cpu>,<contenttweaker:material_part:143>]]);

recipes.addShaped(<contenttweaker:test_unit>,
	[[<ore:paneGlass>,null,null],
	 [rs,null,null],
	 [null,<minecraft:dye:4>,<contenttweaker:motor>]]);

recipes.addShaped(<contenttweaker:tp_gem>,
	[[<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>],
	 [<environmentaltech:kyronite_crystal>,<minecraft:ender_eye>,<environmentaltech:kyronite_crystal>],
	 [<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>]]);

recipes.addShaped(<contenttweaker:temperature_monitor>,
	[[<ore:paneGlass>,null,<contenttweaker:material_part:188>],
	 [rs,null,<contenttweaker:material_part:188>],
	 [null,<minecraft:dye:4>,<contenttweaker:material_part:188>]]);

recipes.addShaped(<contenttweaker:ram>,
	[[<contenttweaker:material_part:149>,<pneumaticcraft:transistor>,<contenttweaker:material_part:149>],
	 [<pneumaticcraft:capacitor>,<mekanism:controlcircuit:2>,<pneumaticcraft:capacitor>],
	 [<contenttweaker:material_part:149>,<pneumaticcraft:transistor>,<contenttweaker:material_part:149>]]);

recipes.addShaped(<contenttweaker:working_box>*4,
	[[<contenttweaker:structure_block>,<minecraft:crafting_table>,<contenttweaker:structure_block>],
	 [<minecraft:crafting_table>,<minecraft:diamond>,<minecraft:crafting_table>],
	 [<contenttweaker:structure_block>,<minecraft:crafting_table>,<contenttweaker:structure_block>]]);

recipes.addShaped(<contenttweaker:ft_core>*6,
	[[<botania:storage:1>,<contenttweaker:gc_core>,<botania:storage:1>],
	 [<contenttweaker:gc_core>,<mekanism:controlcircuit:3>,<contenttweaker:gc_core>],
	 [<botania:storage:1>,<contenttweaker:gc_core>,<botania:storage:1>]]);

recipes.addShaped(<contenttweaker:gc_core>*6,
	[[<contenttweaker:gc_bearing>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<contenttweaker:gc_bearing>],
	 [<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<mekanism:controlcircuit:3>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}})],
	 [<contenttweaker:gc_bearing>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<contenttweaker:gc_bearing>]]);

recipes.addShaped(<contenttweaker:gc_bearing>*4,
	[[<botania:storage:3>,<contenttweaker:structure_block>,<botania:storage:3>],
	 [<contenttweaker:structure_block>,<contenttweaker:material_part:153>,<contenttweaker:structure_block>],
	 [<botania:storage:3>,<contenttweaker:structure_block>,<botania:storage:3>]]);

recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:fluid_processor"}),
	[[<minecraft:ender_pearl>,<minecraft:bucket>,<minecraft:ender_pearl>],
	 [<minecraft:bucket>,<minecraft:paper>,<minecraft:bucket>],
	 [<minecraft:ender_pearl>,<minecraft:bucket>,<minecraft:ender_pearl>]]);

recipes.addShapeless(<contenttweaker:noodles_bubbled>,
	[<contenttweaker:noodles>,<contenttweaker:hot_water>.giveBack(<minecraft:bucket>)]);

recipes.addShaped(<contenttweaker:heaven_core>,
	[[<contenttweaker:smart_core>,<contenttweaker:sky_core>,<contenttweaker:life_core>],
	 [<contenttweaker:machinery_core>,<contenttweaker:world_core>,<contenttweaker:mana_core>],
	 [<contenttweaker:seasons_core>,<contenttweaker:ground_core>,<contenttweaker:shiny_core>]]);

//===============================================================

//hammer and materials
var hammer = <contenttweaker:hammer_plate>;
var materials as IItemDefinition = <contenttweaker:material_part>.definition;

//materialsInt
val ingotInt as int[] = [11,28,45,62,79,96,113,130,147,164,181,198,215];
val rodInt as int[] = [14,31,48,65,82,99,116,133,150,167,184,201,218];
val plateInt as int[] = [13,30,47,64,81,98,115,132,149,166,183,200,217];
val casingInt as int[] = [3,20,37,54,71,88,105,122,139,156,173,190,207];
val nuggetInt as int[] = [12,29,46,63,80,97,114,131,148,165,182,199,216];
val dustInt as int[] = [9,26,43,60,77,94,111,128,145,162,179,196,213];

//add recipes
for r, IngotInt in ingotInt {
	val ingots = materials.makeStack(IngotInt);
	val dusts = materials.makeStack(dustInt[r]);
	val nuggets = materials.makeStack(nuggetInt[r]);
	recipes.addShaped(ingots, [[nuggets,nuggets,nuggets],[nuggets,nuggets,nuggets],[nuggets,nuggets,nuggets]]);
	furnace.addRecipe(ingots,dusts,2);
}

for r, PlateInt in plateInt {
	val plates = materials.makeStack(PlateInt);
	val ingots = materials.makeStack(ingotInt[r]);
	recipes.addShapeless(plates, [hammer.anyDamage().transformDamage(), ingots]);
}

for r, RodInt in rodInt {
	val rods = materials.makeStack(RodInt);
	val nuggets = materials.makeStack(nuggetInt[r]);
	recipes.addShapeless(rods, [nuggets,nuggets,nuggets]);
}

for r, CasingInt in casingInt {
	val casings = materials.makeStack(CasingInt);
	val plates = materials.makeStack(plateInt[r]);
	recipes.addShapeless(casings*2, [hammer.anyDamage().transformDamage(), plates]);
}

for r, NuggetInt in nuggetInt {
	val nuggets = materials.makeStack(NuggetInt);
	val ingots = materials.makeStack(ingotInt[r]);
	recipes.addShapeless(nuggets*9, [ingots]);
}

//special
var blocks0 as IItemDefinition = <contenttweaker:sub_block_holder_0>.definition;
var blocks1 as IItemDefinition = <contenttweaker:sub_block_holder_1>.definition;

val oreInt_0 as int[] = [12,4,2,3,5,6];
val ingotInt_0 as int[] = [79,113,147,164,181,198];
val oreInt_1 as int[] = [3,0];
val ingotInt_1 as int[] = [130,215];
val blockInt_0 as int[] = [0,14,9,7,8,13,11,10,15,1];
val ingotsInt_0 as int[] = [45,62,79,96,113,130,147,164,181,198];
val blockInt_1 as int[] = [4,1,2];
val ingotsInt_1 as int[] = [11,28,215];

//add
for r, IngotInt_0 in ingotInt_0 {
	val ingots = materials.makeStack(IngotInt_0);
	val ores = blocks0.makeStack(oreInt_0[r]);
	furnace.addRecipe(ingots,ores,2);
}

for r, IngotInt_1 in ingotInt_1 {
	val ingots = materials.makeStack(IngotInt_1);
	val ores = blocks1.makeStack(oreInt_1[r]);
	furnace.addRecipe(ingots,ores,2);
}

for r, BlockInt_0 in blockInt_0 {
	val	blocks = blocks0.makeStack(BlockInt_0);
	val ingots = materials.makeStack(ingotsInt_0[r]);
	recipes.addShaped(blocks, [[ingots,ingots,ingots],[ingots,ingots,ingots],[ingots,ingots,ingots]]);
}

for r, BlockInt_1 in blockInt_1 {
	val	blocks = blocks1.makeStack(BlockInt_1);
	val ingots = materials.makeStack(ingotsInt_1[r]);
	recipes.addShaped(blocks, [[ingots,ingots,ingots],[ingots,ingots,ingots],[ingots,ingots,ingots]]);
}