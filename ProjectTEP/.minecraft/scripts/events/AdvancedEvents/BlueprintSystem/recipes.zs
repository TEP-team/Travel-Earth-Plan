/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.data.IData;
import scripts.events.AdvancedEvents.BlueprintSystem.lib;

var iron = <ore:ingotIron>;

//Field Projector
lib.dataChecker("Field_Projector",<compactmachines3:fieldprojector>,
    [[null,<ore:blockGlass>,null],
     [null,<contenttweaker:conversion_core>,null],
     [iron,iron,iron]]);

//Void Ore Miner
lib.dataChecker("Void_Ore_Miner",<environmentaltech:void_ore_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:diamond_block>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);

//Void Botanic Miner
lib.dataChecker("Void_Botanic_Miner",<environmentaltech:void_botanic_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:chorus_flower>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);