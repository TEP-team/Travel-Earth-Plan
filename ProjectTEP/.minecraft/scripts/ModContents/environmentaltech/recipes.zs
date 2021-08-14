/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 28995
import crafttweaker.item.IItemStack;

var rs = <minecraft:redstone>;
var iron = <ore:ingotIron>;
var crystal1 = <environmentaltech:litherite_crystal>;
var crystal2 = <environmentaltech:erodium_crystal>;
var crystal3 = <environmentaltech:kyronite_crystal>;
var crystal4 = <environmentaltech:pladium_crystal>;
var crystal5 = <environmentaltech:ionite_crystal>;
var crystal6 = <environmentaltech:aethium_crystal>;
var interconnect = <environmentaltech:interconnect>;
var structure = <environmentaltech:structure_panel>;
var structure1 = <environmentaltech:structure_frame_1>;
var structure2 = <environmentaltech:structure_frame_2>;
var structure3 = <environmentaltech:structure_frame_3>;
var structure4 = <environmentaltech:structure_frame_4>;
var structure5 = <environmentaltech:structure_frame_5>;

recipes.remove(crystal1);
recipes.addShapeless(crystal1*9,
    [<environmentaltech:litherite>]);

recipes.remove(interconnect);
recipes.addShaped(interconnect*4,
    [[<minecraft:obsidian>,<environmentaltech:connector>,<environmentaltech:connector>],
     [<environmentaltech:connector>,null,<environmentaltech:connector>],
     [<minecraft:obsidian>,<environmentaltech:connector>,<environmentaltech:connector>]]);

recipes.remove(<valkyrielib:modifier_component>);
recipes.addShaped(<valkyrielib:modifier_component>,
    [[iron,rs,iron],
     [rs,<minecraft:obsidian>,rs],
     [iron,rs,iron]]);

val ncr_and_ncp as IItemStack[] = 
[
    <environmentaltech:nano_cont_ranged_1>,<environmentaltech:nano_cont_ranged_2>,
    <environmentaltech:nano_cont_ranged_3>,<environmentaltech:nano_cont_ranged_4>,
    <environmentaltech:nano_cont_ranged_5>,<environmentaltech:nano_cont_ranged_6>,
    <environmentaltech:nano_cont_personal_1>,<environmentaltech:nano_cont_personal_2>,
    <environmentaltech:nano_cont_personal_3>,<environmentaltech:nano_cont_personal_4>,
    <environmentaltech:nano_cont_personal_5>,<environmentaltech:nano_cont_personal_6>,
];
for NcrNcp in ncr_and_ncp {
    recipes.remove(NcrNcp);
}

val lc_and_solar as IItemStack[] = 
[
    <environmentaltech:lightning_cont_1>,<environmentaltech:lightning_cont_2>,
    <environmentaltech:lightning_cont_3>,<environmentaltech:lightning_cont_4>,
    <environmentaltech:lightning_cont_5>,<environmentaltech:lightning_cont_6>,
    <environmentaltech:solar_cont_1>,<environmentaltech:solar_cont_2>,
    <environmentaltech:solar_cont_3>,<environmentaltech:solar_cont_4>,
    <environmentaltech:solar_cont_5>,<environmentaltech:solar_cont_6>
];
for Las in lc_and_solar {
    recipes.remove(Las);
}

val modifier as IItemStack[] = 
[
    <environmentaltech:modifier_creative_flight>,<environmentaltech:modifier_flight_speed>,
    <environmentaltech:modifier_haste>,<environmentaltech:modifier_strength>,
    <environmentaltech:modifier_jump_boost>,<environmentaltech:modifier_regeneration>,
    <environmentaltech:modifier_resistance>,<environmentaltech:modifier_glowing>,
    <environmentaltech:modifier_water_breathing>,<environmentaltech:modifier_invisibility>,
    <environmentaltech:modifier_night_vision>,<environmentaltech:modifier_health_boost>,
    <environmentaltech:modifier_absorption>,<environmentaltech:modifier_saturation>
];
for Modifier in modifier {
    recipes.remove(Modifier);
}

recipes.remove(<environmentaltech:laser_lens_crystal>);
recipes.addShaped(<environmentaltech:laser_lens_crystal>,
    [[crystal1,null,crystal3],
     [crystal2,<ore:etLaserLens>,crystal2],
     [crystal3,null,crystal1]]);

val sl as IItemStack[] =
[
    <environmentaltech:photovoltaic_cell>,<environmentaltech:lightning_rod_insulated>,
    <environmentaltech:lightning_rod>,<environmentaltech:solar_cell_litherite>,
    <environmentaltech:solar_cell_erodium>,<environmentaltech:solar_cell_kyronite>,
    <environmentaltech:solar_cell_pladium>,<environmentaltech:solar_cell_ionite>,
    <environmentaltech:solar_cell_aethium>
];
for Sl in sl {
    recipes.remove(Sl);
}

recipes.remove(<environmentaltech:structure_panel>);
recipes.addShaped(<environmentaltech:structure_panel>*2,
    [[<environmentaltech:interconnect>,<environmentaltech:connector>,<environmentaltech:interconnect>],
     [<environmentaltech:connector>,null,<environmentaltech:connector>],
     [<environmentaltech:interconnect>,<environmentaltech:connector>,<environmentaltech:interconnect>]]);

recipes.remove(structure1);
recipes.addShaped(structure1*2,
    [[null,<ore:ingotIron>,null],
    [crystal1,structure,crystal1],
    [null,<ore:gemLapis>,null]]);

