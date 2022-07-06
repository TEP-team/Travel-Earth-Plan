/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_6>,
    <environmentaltech:void_ore_miner_cont_5>, <environmentaltech:void_ore_miner_cont_6>,
    <environmentaltech:void_botanic_miner_cont_5>, <environmentaltech:void_botanic_miner_cont_6>
];

for Remove in remove {
    recipes.remove(Remove);
}

RecipeUtils.recipeCornerSide(<environmentaltech:interconnect>*4, <minecraft:obsidian>, <environmentaltech:connector>, true);
RecipeUtils.recipeCornerSide(<environmentaltech:structure_panel>*2, <environmentaltech:interconnect>, <environmentaltech:connector>, true);

RecipeUtils.recipeCenterCornerTwoSide(<environmentaltech:modifier_luck>, <minecraft:emerald_block>, <environmentaltech:pladium_crystal>, <environmentaltech:mica>, <environmentaltech:modifier_null>, true);

RecipeUtils.recipeShaped(<valkyrielib:modifier_component>,
    [[<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>],
     [<minecraft:redstone>, <minecraft:obsidian>, <minecraft:redstone>],
     [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]], true);

RecipeUtils.recipeShaped(<environmentaltech:laser_lens_crystal>,
    [[<environmentaltech:litherite_crystal>, null, <environmentaltech:kyronite_crystal>],
     [<environmentaltech:erodium_crystal>, <ore:etLaserLens>, <environmentaltech:erodium_crystal>],
     [<environmentaltech:kyronite_crystal>, null, <environmentaltech:litherite_crystal>]], true);

RecipeUtils.recipeShaped(<environmentaltech:structure_frame_1>*4,
    [[<environmentaltech:structure_panel>, <ore:ingotIron>, <environmentaltech:structure_panel>],
    [<environmentaltech:litherite_crystal>, <environmentaltech:litherite_crystal>, <environmentaltech:litherite_crystal>],
    [<environmentaltech:structure_panel>, <ore:gemLapis>,null]], <environmentaltech:structure_panel>);

RecipeUtils.recipeShaped(<environmentaltech:structure_frame_2>*4,
    [[<environmentaltech:structure_frame_1>, <ore:ingotGold>, <environmentaltech:structure_frame_1>],
    [<environmentaltech:erodium_crystal>, <environmentaltech:erodium_crystal>, <environmentaltech:erodium_crystal>],
    [<environmentaltech:structure_frame_1>, <ore:gemLapis>, <environmentaltech:structure_frame_1>]], true);

RecipeUtils.recipeShaped(<environmentaltech:structure_frame_3>*4,
    [[<environmentaltech:structure_frame_2>, <minecraft:diamond>, <environmentaltech:structure_frame_2>],
    [<environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>, <environmentaltech:kyronite_crystal>],
    [<environmentaltech:structure_frame_2>, <minecraft:quartz>, <environmentaltech:structure_frame_2>]], true);

RecipeUtils.recipeShaped(<environmentaltech:structure_frame_4>*4,
    [[<environmentaltech:structure_frame_3>, <minecraft:emerald>, <environmentaltech:structure_frame_3>],
    [<environmentaltech:pladium_crystal>, <environmentaltech:pladium_crystal>, <environmentaltech:pladium_crystal>],
    [<environmentaltech:structure_frame_3>, <minecraft:quartz>, <environmentaltech:structure_frame_3>]], true);

RecipeUtils.recipeShaped(<environmentaltech:modifier_accuracy>,
    [[<minecraft:diamond_block>, <environmentaltech:kyronite_crystal>, <minecraft:diamond_block>],
    [<environmentaltech:mica>, <environmentaltech:modifier_null>, <environmentaltech:mica>],
    [<minecraft:diamond_block>, <environmentaltech:lonsdaleite_crystal>, <minecraft:diamond_block>]], true);

RecipeUtils.recipeShaped(<environmentaltech:void_ore_miner_cont_1>,
    [[<environmentaltech:litherite>, <minecraft:diamond_block>, <environmentaltech:litherite>],
     [<environmentaltech:litherite>, <environmentaltech:diode>, <environmentaltech:litherite>],
     [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]], true);

RecipeUtils.recipeShaped(<environmentaltech:void_botanic_miner_cont_1>,
    [[<environmentaltech:litherite>, <minecraft:chorus_flower>, <environmentaltech:litherite>],
     [<environmentaltech:litherite>, <environmentaltech:diode>, <environmentaltech:litherite>],
     [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]], true);

RecipeUtils.recipeShapeless(<environmentaltech:litherite_crystal>*9,
    [<environmentaltech:litherite>], true);

RecipeUtils.recipeShapeless(<environmentaltech:structure_panel_clear>,
    [<environmentaltech:structure_panel>, <ore:blockGlass>], true);