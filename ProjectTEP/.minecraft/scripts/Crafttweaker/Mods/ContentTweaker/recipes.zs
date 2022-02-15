/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val paper = <minecraft:paper>;
val iron = <ore:ingotIron>;
val redstone = <minecraft:redstone>;
val hammer = <contenttweaker:hammer_plate>.anyDamage().transformDamage();
val Items as IItemStack[][] = BasicUtils.getAllMaterialPartItem();

for i in 0 to Items[0].length {
	RecipeUtils.recipeShapeless(Items[4][i]*9, [Items[0][i]], false);
	RecipeUtils.recipeShapeless(Items[5][i], [Items[0][i], hammer], false);
	RecipeUtils.recipeShapeless(Items[7][i]*2, [Items[5][i], hammer], false);
}

RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0>, <contenttweaker:material_part:11>, false);
RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0:2>, <contenttweaker:material_part:22>, false);
RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0:5>, <contenttweaker:material_part:55>, false);

RecipeUtils.recipeShaped(<contenttweaker:hammer_flint>,
	[[<minecraft:flint>,null],
	 [<minecraft:stick>,<minecraft:flint>]], false);

RecipeUtils.recipeShaped(<contenttweaker:conversion_core>,
    [[redstone,redstone,redstone],
	 [redstone,iron,redstone],
	 [redstone,redstone,redstone]], false);

RecipeUtils.recipeShaped(<contenttweaker:handsaw_wood>,
    [[null,null,iron],
	 [null,iron,<ore:plankWood>],
	 [<minecraft:stick>,<ore:plankWood>,null]], false);

RecipeUtils.recipeShaped(<contenttweaker:medical_splint>,
    [[null,<minecraft:stick>,<minecraft:string>],
	 [<minecraft:stick>,null,<minecraft:stick>],
	 [<minecraft:string>,<minecraft:stick>,null]], false);

RecipeUtils.recipeShaped(<contenttweaker:medical_metal_splint>,
    [[null,<ore:stickIron>,<minecraft:string>],
	 [<ore:stickIron>,null,<ore:stickIron>],
	 [<minecraft:string>,<ore:stickIron>,null]], false);

RecipeUtils.recipeShapeless(<contenttweaker:cloth_string>,
    [<minecraft:string>,<minecraft:string>,<minecraft:string>], false);

RecipeUtils.recipeShapeless(<contenttweaker:medical_bandage>,
    [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>], false);

RecipeUtils.recipeShaped(<contenttweaker:hammer_plate>,
    [[null,iron,null],
	 [null,<minecraft:stick>,iron],
	 [<minecraft:stick>,null,null]], false);

RecipeUtils.recipeShaped(<contenttweaker:structure_block>*6,
    [[<mekanism:controlcircuit:2>,<ore:ingotGold>,<mekanism:controlcircuit:2>],
	 [<ore:ingotGold>,<modularmachinery:blockcasing>,<ore:ingotGold>],
	 [<mekanism:controlcircuit:2>,<ore:ingotGold>,<mekanism:controlcircuit:2>]], false);

RecipeUtils.recipeShaped(<contenttweaker:electric_iron>,
	[[null,null,<contenttweaker:ingot_in>],
	 [null,<minecraft:diamond>,null],
	 [<ore:stickIron>,null,null]], false);

RecipeUtils.recipeShapeless(<contenttweaker:iron_with_nickel>,
	[<ore:dustIron>,<contenttweaker:material_part:179>], false);

RecipeUtils.recipeShaped(<contenttweaker:pc>,
	[[<contenttweaker:material_part:143>,<contenttweaker:pcb>,<contenttweaker:material_part:143>],
	 [<contenttweaker:ram>,<contenttweaker:singlechip>,<contenttweaker:rom>],
	 [<contenttweaker:material_part:143>,<contenttweaker:cpu>,<contenttweaker:material_part:143>]], false);

RecipeUtils.recipeShaped(<contenttweaker:test_unit>,
	[[<ore:paneGlass>,null,null],
	 [redstone,null,null],
	 [null,<minecraft:dye:4>,<contenttweaker:motor>]], false);

RecipeUtils.recipeShaped(<contenttweaker:tp_gem>,
	[[<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>],
	 [<environmentaltech:kyronite_crystal>,<minecraft:ender_eye>,<environmentaltech:kyronite_crystal>],
	 [<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>]], false);

RecipeUtils.recipeShaped(<contenttweaker:temperature_monitor>,
	[[<ore:paneGlass>,null,<contenttweaker:material_part:188>],
	 [redstone,null,<contenttweaker:material_part:188>],
	 [null,<minecraft:dye:4>,<contenttweaker:material_part:188>]], false);

RecipeUtils.recipeShaped(<contenttweaker:ram>,
	[[<contenttweaker:material_part:149>,<pneumaticcraft:transistor>,<contenttweaker:material_part:149>],
	 [<pneumaticcraft:capacitor>,<mekanism:controlcircuit:2>,<pneumaticcraft:capacitor>],
	 [<contenttweaker:material_part:149>,<pneumaticcraft:transistor>,<contenttweaker:material_part:149>]], false);

RecipeUtils.recipeShaped(<contenttweaker:working_box>*4,
	[[<contenttweaker:structure_block>,<minecraft:crafting_table>,<contenttweaker:structure_block>],
	 [<minecraft:crafting_table>,<minecraft:diamond>,<minecraft:crafting_table>],
	 [<contenttweaker:structure_block>,<minecraft:crafting_table>,<contenttweaker:structure_block>]], false);

RecipeUtils.recipeShaped(<contenttweaker:ft_core>*6,
	[[<botania:storage:1>,<contenttweaker:gc_core>,<botania:storage:1>],
	 [<contenttweaker:gc_core>,<mekanism:controlcircuit:3>,<contenttweaker:gc_core>],
	 [<botania:storage:1>,<contenttweaker:gc_core>,<botania:storage:1>]], false);

RecipeUtils.recipeShaped(<contenttweaker:gc_core>*6,
	[[<contenttweaker:gc_bearing>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<contenttweaker:gc_bearing>],
	 [<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<mekanism:controlcircuit:3>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}})],
	 [<contenttweaker:gc_bearing>,<mekanism:energytablet>.withTag({mekData: {energyStored: 1000000.0}}),<contenttweaker:gc_bearing>]], false);

RecipeUtils.recipeShaped(<contenttweaker:gc_bearing>*4,
	[[<botania:storage:3>,<contenttweaker:structure_block>,<botania:storage:3>],
	 [<contenttweaker:structure_block>,<contenttweaker:material_part:153>,<contenttweaker:structure_block>],
	 [<botania:storage:3>,<contenttweaker:structure_block>,<botania:storage:3>]], false);

RecipeUtils.recipeShaped(<contenttweaker:heaven_core>,
	[[<contenttweaker:smart_core>,<contenttweaker:sky_core>,<contenttweaker:life_core>],
	 [<contenttweaker:machinery_core>,<contenttweaker:world_core>,<contenttweaker:mana_core>],
	 [<contenttweaker:seasons_core>,<contenttweaker:ground_core>,<contenttweaker:shiny_core>]], false);