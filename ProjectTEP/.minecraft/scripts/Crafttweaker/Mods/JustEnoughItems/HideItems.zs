/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
val mods as string[] = ["variedcommodities","scalinghealth","botania_tweaks"];
for Mods in mods {
    val hide as IItemStack[] = loadedMods[Mods].items;
    for Hide in hide {
        JEI.removeAndHide(Hide);
        furnace.remove(Hide);
    }
}

val hides as IItemStack[] = 
[
    <minecraft:golden_rail>,<minecraft:detector_rail>,<minecraft:rail>,
    <minecraft:activator_rail>,<minecraft:boat>,<minecraft:spruce_boat>,
    <minecraft:birch_boat>,<minecraft:jungle_boat>,<minecraft:acacia_boat>,
    <minecraft:dark_oak_boat>,<minecraft:minecart>,<minecraft:chest_minecart>,
    <minecraft:furnace_minecart>,<minecraft:tnt_minecart>,<minecraft:hopper_minecart>,
    <botania:poolminecart>,<minecraft:command_block_minecart>,<pneumaticcraft:empty_pcb:100>,
    <simpledifficulty:chiller>,<simpledifficulty:ice_helmet>,<simpledifficulty:ice_chestplate>,
    <simpledifficulty:ice_leggings>,<simpledifficulty:ice_boots>,<compactmachines3:psd>,
    <sereneseasons:season_clock>,<sereneseasons:season_sensor_spring>,
    <sereneseasons:season_sensor_summer>,<sereneseasons:season_sensor_autumn>,
    <sereneseasons:season_sensor_winter>,<compactmachines3:psd>,<armorunder:cooling_goo>,
    <armorunder:cool_liner_material>,<armorunder:cool_helmet_liner>,<armorunder:cool_chestplate_liner>,
    <armorunder:cool_leggings_liner>,<armorunder:cool_boots_liner>,<armorunder:goopak_cool>,
    <armorunder:auto_chestplate_liner>,<armorunder:auto_leggings_liner>,<armorunder:flipflop_liner_material>,
    <armorunder:flipflop_goo>,<environmentaltech:structure_frame_5>,<environmentaltech:structure_frame_6>,
    <environmentaltech:void_ore_miner_cont_5>,<environmentaltech:void_ore_miner_cont_6>,
    <environmentaltech:void_botanic_miner_cont_5>,<environmentaltech:void_botanic_miner_cont_6>,
    <pneumaticcraft:printed_circuit_board>,<pneumaticcraft:electrostatic_compressor>,
    <pneumaticcraft:compressed_iron_gear>,<pneumaticcraft:amadron_tablet>,
    <pneumaticcraft:vortex_cannon>,<modularmachinery:itemmodularium>,
    <mekanismgenerators:generator>,<mekanismgenerators:generator:3>,<mekanismgenerators:reactor>,
    <mekanismgenerators:reactor:1>,<mekanismgenerators:reactor:2>,<mekanismgenerators:reactor:3>,
    <mekanismgenerators:reactorglass>,<mekanismgenerators:reactorglass:1>,<mekanismgenerators:generator:10>,
    <mekanismgenerators:generator:12>,<mekanismgenerators:generator:11>,<mekanismgenerators:generator:13>,
    <mekanismgenerators:generator:7>,<mekanismgenerators:turbineblade>,<mekanismgenerators:generator:8>,
    <mekanism:machineblock:15>,<mekanism:machineblock3:1>,<mekanism:machineblock:13>,<mekanism:machineblock:11>,
    <mekanism:basicblock:7>,<mekanism:machineblock3>,<mekanism:cardboardbox>,<mekanism:robit>,<mekanism:machineblock:15>,
    <mekanism:anchorupgrade>,<mekanism:portableteleporter>,<mekanism:flamethrower>,<mekanism:teleportationcore>,
    <mekanism:machineblock2:13>,<mekanism:machineblock2:14>,<mekanism:machineblock2:15>,<mekanism:freerunners>,
    <mekanism:jetpack>,<mekanism:armoredjetpack>,<mekanism:electricbow>
];
for Hide in hides {
    JEI.removeAndHide(Hide);
    furnace.remove(Hide);
}

