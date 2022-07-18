/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

val mods as string[] = ["variedcommodities", "botania_tweaks", "vehicle"];
for Mods in mods {
    val hide as IItemStack[] = loadedMods[Mods].items;
    for Hide in hide {
        JEI.removeAndHide(Hide);
        furnace.remove(Hide);
    }
}

val hide as IItemStack[] = [
    <sereneseasons:season_clock>, <sereneseasons:season_sensor_spring>, 
    <sereneseasons:season_sensor_summer>, <sereneseasons:season_sensor_autumn>,
    <sereneseasons:season_sensor_winter>,
    
    <environmentaltech:structure_frame_5>, <environmentaltech:structure_frame_6>,
    <environmentaltech:void_ore_miner_cont_5>, <environmentaltech:void_ore_miner_cont_6>,
    <environmentaltech:void_botanic_miner_cont_5>, <environmentaltech:void_botanic_miner_cont_6>,

    <thermalexpansion:augment:257>, <thermalexpansion:augment:273>,
    <thermalexpansion:augment:304>, <thermalexpansion:augment:337>,
    <thermalexpansion:augment:512>, <thermalexpansion:augment:513>,
    <thermalexpansion:augment:514>, <thermalexpansion:augment:515>,
    <thermalexpansion:augment:576>, <thermalexpansion:augment:640>,
    <thermalexpansion:augment:656>, <thermalexpansion:augment:672>,
    <thermalexpansion:augment:673>, <thermalexpansion:augment:674>,
    <thermalexpansion:augment:688>, <thermalexpansion:augment:704>,
    <thermalexpansion:augment:720>, <thermalexpansion:dynamo:*>,

    <pneumaticcraft:vortex_cannon>,

    <botania:poolminecart>,

    <modularmachinery:itemmodularium>

    /*
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
    */
];

for Hide in hide {
    JEI.hide(Hide);
}