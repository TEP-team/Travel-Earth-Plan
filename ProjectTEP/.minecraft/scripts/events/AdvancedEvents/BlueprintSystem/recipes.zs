/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.data.IData;
import scripts.events.AdvancedEvents.BlueprintSystem.lib.dataChecker;

var iron = <ore:ingotIron>;
var compressedIron = <pneumaticcraft:ingot_iron_compressed>;

//Field Projector
dataChecker("Field_Projector",<compactmachines3:fieldprojector>,
    [[null,<ore:blockGlass>,null],
     [null,<contenttweaker:conversion_core>,null],
     [iron,iron,iron]]);

//Void Ore Miner
dataChecker("Void_Ore_Miner",<environmentaltech:void_ore_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:diamond_block>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);

//Void Botanic Miner
dataChecker("Void_Botanic_Miner",<environmentaltech:void_botanic_miner_cont_1>,
    [[<environmentaltech:litherite>,<minecraft:chorus_flower>,<environmentaltech:litherite>],
     [<environmentaltech:litherite>,<environmentaltech:diode>,<environmentaltech:litherite>],
     [<environmentaltech:interconnect>,<ore:etLaserLens>,<environmentaltech:interconnect>]]);

//Runic Altar
dataChecker("Runic_Altar",<botania:runealtar>,
    [[<botania:manaresource:1>,null,<botania:manaresource:1>],
     [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],
     [<botania:livingrock>,<botania:manaresource:2>,<botania:livingrock>]]);

//Terrastrial Agglomeration Plate
dataChecker("Terrastrial_Agglomeration_Plate",<botania:terraplate>,
    [[<pneumaticcraft:plastic:4>,<botania:manatablet>.withTag({mana: 500000}),<pneumaticcraft:plastic:4>],
     [<botania:storage>,<botania:rune:8>,<botania:storage>],
     [<pneumaticcraft:plastic:4>,<minecraft:lapis_block>,<pneumaticcraft:plastic:4>]]);

//Elven Gateway Core
dataChecker("Elven_Gateway_Core",<botania:alfheimportal>,
    [[<botania:livingwood>,<botania:manaresource:18>,<botania:livingwood>],
     [<botania:manaresource:18>,<botania:livingwood:5>,<botania:manaresource:18>],
     [<botania:livingwood>,<botania:manaresource:18>,<botania:livingwood>]]);

//Assembly Controller
dataChecker("Assembly_Controller",<pneumaticcraft:assembly_controller>,
    [[null,<ore:paneGlass>,null],
     [<pneumaticcraft:pressure_tube>,<contenttweaker:cpu>,<pneumaticcraft:printed_circuit_board>],
     [compressedIron,compressedIron,compressedIron]]);

//Refinery
dataChecker("Refinery",<pneumaticcraft:refinery>,
    [[compressedIron,<pneumaticcraft:compressed_iron_gear>,compressedIron],
     [compressedIron,<contenttweaker:cell_empty>,compressedIron],
     [compressedIron,<pneumaticcraft:compressed_iron_gear>,compressedIron]]);

//Thermopneumatic Processing Plant
dataChecker("Thermopneumatic_Processing_Plant",<pneumaticcraft:thermopneumatic_processing_plant>,
    [[<contenttweaker:cell_empty>,null,<contenttweaker:cell_empty>],
     [<pneumaticcraft:pressure_tube>,<pneumaticcraft:compressed_iron_gear>,<pneumaticcraft:pressure_tube>],
     [compressedIron,compressedIron,compressedIron]]);

//Plastic Mixer
dataChecker("Plastic_Mixer",<pneumaticcraft:plastic_mixer>,
    [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
     [compressedIron,<pneumaticcraft:compressed_iron_gear>,compressedIron],
     [compressedIron,compressedIron,compressedIron]]);