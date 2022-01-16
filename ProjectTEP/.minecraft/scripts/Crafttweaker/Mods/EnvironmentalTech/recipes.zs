/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

var iron = <ore:ingotIron>;
var redstone = <minecraft:redstone>;
var crystal1 = <environmentaltech:litherite_crystal>;
var crystal2 = <environmentaltech:erodium_crystal>;
var crystal3 = <environmentaltech:kyronite_crystal>;
var crystal4 = <environmentaltech:pladium_crystal>;
var lcrystal = <environmentaltech:lonsdaleite_crystal>;
var interconnect = <environmentaltech:interconnect>;
var structure = <environmentaltech:structure_panel>;
var structure1 = <environmentaltech:structure_frame_1>;
var structure2 = <environmentaltech:structure_frame_2>;
var structure3 = <environmentaltech:structure_frame_3>;
var structure4 = <environmentaltech:structure_frame_4>;

recipes.remove(crystal1);
recipes.addShapeless(crystal1*9,
    [<environmentaltech:litherite>]);

recipes.remove(interconnect);
recipes.addShaped(interconnect*4,
    [[<minecraft:obsidian>,<environmentaltech:connector>,<minecraft:obsidian>],
     [<environmentaltech:connector>,null,<environmentaltech:connector>],
     [<minecraft:obsidian>,<environmentaltech:connector>,<minecraft:obsidian>]]);

recipes.remove(<valkyrielib:modifier_component>);
recipes.addShaped(<valkyrielib:modifier_component>,
    [[iron,redstone,iron],
     [redstone,<minecraft:obsidian>,redstone],
     [iron,redstone,iron]]);

recipes.remove(<environmentaltech:laser_lens_crystal>);
recipes.addShaped(<environmentaltech:laser_lens_crystal>,
    [[crystal1,null,crystal3],
     [crystal2,<ore:etLaserLens>,crystal2],
     [crystal3,null,crystal1]]);

recipes.remove(structure);
recipes.addShaped(structure*2,
    [[<environmentaltech:interconnect>,<environmentaltech:connector>,<environmentaltech:interconnect>],
     [<environmentaltech:connector>,null,<environmentaltech:connector>],
     [<environmentaltech:interconnect>,<environmentaltech:connector>,<environmentaltech:interconnect>]]);

recipes.remove(structure1);
recipes.addShaped(structure1*2,
    [[null,<ore:ingotIron>,null],
    [crystal1,structure,crystal1],
    [null,<ore:gemLapis>,null]]);

recipes.remove(<environmentaltech:structure_panel_clear>);
recipes.addShapeless(<environmentaltech:structure_panel_clear>,
    [structure,<ore:blockGlass>]);

recipes.remove(structure2);
recipes.addShaped(structure2*2,
    [[null,<ore:ingotGold>,null],
    [crystal2,structure1,crystal2],
    [null,<ore:gemLapis>,null]]);

recipes.remove(structure3);
recipes.addShaped(structure3*2,
    [[null,<minecraft:diamond>,null],
    [crystal3,structure2,crystal3],
    [null,<minecraft:quartz>,null]]);

recipes.remove(structure4);
recipes.addShaped(structure4*2,
    [[null,<minecraft:emerald>,null],
    [crystal4,structure3,crystal4],
    [null,<minecraft:quartz>,null]]);

recipes.remove(<environmentaltech:modifier_accuracy>);
recipes.addShaped(<environmentaltech:modifier_accuracy>,
    [[<minecraft:diamond_block>,crystal3,<minecraft:diamond_block>],
    [<environmentaltech:mica>,<environmentaltech:modifier_null>,<environmentaltech:mica>],
    [<minecraft:diamond_block>,lcrystal,<minecraft:diamond_block>]]);

recipes.remove(<environmentaltech:modifier_luck>);
recipes.addShaped(<environmentaltech:modifier_luck>,
    [[<minecraft:emerald_block>,crystal4,<minecraft:emerald_block>],
    [<environmentaltech:mica>,<environmentaltech:modifier_null>,<environmentaltech:mica>],
    [<minecraft:emerald_block>,lcrystal,<minecraft:emerald_block>]]);

recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:diamond_block>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);

recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:chorus_flower>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);

recipes.remove(<botania:runealtar>);
recipes.addShaped(<botania:runealtar>,
    [[<botania:manaresource:1>,null,<botania:manaresource:1>],
     [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],
     [<botania:livingrock>,<botania:manaresource:2>,<botania:livingrock>]]);