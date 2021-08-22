/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50001
import crafttweaker.item.IItemStack;
import scripts.events.AdvancedEvents.BlueprintSystem.lib;

//Field Projector
var FieldProjector as IItemStack = <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aField Projector"]}});
lib.bluePrintData(FieldProjector, "Field_Projector");

//Void Ore Miner
var VoidOreMiner as IItemStack = <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Ore Miner"]}});
lib.bluePrintData(VoidOreMiner, "Void_Ore_Miner");

//Void Botanic Miner
var VoidBotanicMiner as IItemStack = <contenttweaker:blueprint_machine>.withTag({display: {Lore: ["§aVoid Botanic Miner"]}});
lib.bluePrintData(VoidBotanicMiner, "Void_Botanic_Miner");

//e