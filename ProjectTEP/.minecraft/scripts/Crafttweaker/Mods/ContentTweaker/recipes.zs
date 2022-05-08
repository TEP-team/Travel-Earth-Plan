/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val hammer1 = <contenttweaker:hammer_plate>.anyDamage().transformDamage();
val hammer2 = itemUtils.getItem("immersiveengineering:tool", 0).anyDamage().transformDamage();

for i in 0 to Items[0].length {
	RecipeUtils.recipeShapeless(Items[4][i]*9, [Items[0][i]], false);
	RecipeUtils.recipeShapeless(Items[5][i], [Items[0][i], hammer1 | hammer2], false);
	RecipeUtils.recipeShapeless(Items[7][i]*2, [Items[5][i], hammer1 | hammer2], false);
}

RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0>, <contenttweaker:material_part:11>, false);
RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0:2>, <contenttweaker:material_part:22>, false);
RecipeUtils.recipeBlock(<contenttweaker:sub_block_holder_0:5>, <contenttweaker:material_part:55>, false);

RecipeUtils.recipeCenterCornerSide(<contenttweaker:ft_core>, <modularmachinery:blockcasing:4>, <mekanismgenerators:reactor:1>, <mekanism:controlcircuit:3>, false);
RecipeUtils.recipeCenterCornerSide(<contenttweaker:structure_block>*4, <modularmachinery:blockcasing>, <ore:ingotSteel>, <mekanism:basicblock:8>, false);

RecipeUtils.recipeShaped(<contenttweaker:hammer_flint>,
	[[<minecraft:flint>,null],
	 [<minecraft:stick>,<minecraft:flint>]], false);

RecipeUtils.recipeShaped(<contenttweaker:conversion_core>,
    [[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>],
	 [<minecraft:redstone>,<ore:ingotIron>,<minecraft:redstone>],
	 [<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>]], false);

RecipeUtils.recipeShaped(<contenttweaker:handsaw_wood>,
    [[null,null,<ore:ingotIron>],
	 [null,<ore:ingotIron>,<ore:plankWood>],
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
    [[null,<ore:ingotIron>,null],
	 [null,<minecraft:stick>,<ore:ingotIron>],
	 [<minecraft:stick>,null,null]], false);

RecipeUtils.recipeShaped(<contenttweaker:electric_iron>,
	[[null,null,<ore:ingotInvar>],
	 [null,<minecraft:diamond>,null],
	 [<ore:stickIron>,null,null]], false);

RecipeUtils.recipeShaped(<contenttweaker:pc>,
	[[<contenttweaker:material_part:78>,<contenttweaker:pcb>,<contenttweaker:material_part:78>],
	 [<contenttweaker:ram>,<contenttweaker:singlechip>,<contenttweaker:rom>],
	 [<contenttweaker:material_part:78>,<contenttweaker:cpu>,<contenttweaker:material_part:78>]], false);

RecipeUtils.recipeShaped(<contenttweaker:test_unit>,
	[[<ore:paneGlass>,null,null],
	 [<minecraft:redstone>,null,null],
	 [null,<minecraft:dye:4>,<contenttweaker:motor>]], false);

RecipeUtils.recipeShaped(<contenttweaker:tp_gem>,
	[[<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>],
	 [<environmentaltech:kyronite_crystal>,<minecraft:ender_eye>,<environmentaltech:kyronite_crystal>],
	 [<minecraft:diamond>,<environmentaltech:kyronite_crystal>,<minecraft:diamond>]], false);

RecipeUtils.recipeShaped(<contenttweaker:temperature_monitor>,
	[[<ore:paneGlass>,null,<mekanism:enrichedalloy>],
	 [<minecraft:redstone>,null,<mekanism:enrichedalloy>],
	 [null,<minecraft:dye:4>,<mekanism:enrichedalloy>]], false);

RecipeUtils.recipeShaped(<contenttweaker:gc_core>*2,
	[[<contenttweaker:structure_block>,<mekanismgenerators:generator:8>,<contenttweaker:structure_block>],
	 [<contenttweaker:structure_block>,<mekanismgenerators:generator:8>,<contenttweaker:structure_block>],
	 [<contenttweaker:structure_block>,<mekanismgenerators:generator:8>,<contenttweaker:structure_block>]], false);

RecipeUtils.recipeShaped(<contenttweaker:gc_bearing>,
	[[<contenttweaker:structure_block>,<mekanismgenerators:generator:7>,<contenttweaker:structure_block>],
	 [<contenttweaker:gc_core>,<mekanismgenerators:generator:7>,<contenttweaker:gc_core>],
	 [<contenttweaker:structure_block>,<mekanismgenerators:generator:7>,<contenttweaker:structure_block>]], false);

RecipeUtils.recipeShaped(<contenttweaker:heaven_core>,
	[[<contenttweaker:smart_core>,<contenttweaker:sky_core>,<contenttweaker:life_core>],
	 [<contenttweaker:machinery_core>,<contenttweaker:world_core>,<contenttweaker:mana_core>],
	 [<contenttweaker:seasons_core>,<contenttweaker:ground_core>,<contenttweaker:shiny_core>]], false);

RecipeUtils.recipeShaped(<contenttweaker:medical_pack>,
    [[<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>],
     [<contenttweaker:medical_bandage>,<contenttweaker:medical_metal_splint>,<contenttweaker:medical_bandage>],
     [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>]], false);

RecipeUtils.recipeShaped(<contenttweaker:working_box>*6,
    [[<contenttweaker:structure_block>,<contenttweaker:structure_block>,<contenttweaker:structure_block>],
     [<appliedenergistics2:material:43>,<contenttweaker:huge_driver>,<appliedenergistics2:material:44>],
     [<contenttweaker:structure_block>,<contenttweaker:structure_block>,<contenttweaker:structure_block>]], false);