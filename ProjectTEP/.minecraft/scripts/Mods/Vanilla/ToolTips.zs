/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;

//function
function tooltipAdder(key as string, item as IItemStack) {
    item.addTooltip(game.localize(key));
}

//ToolTips
tooltipAdder("tooltip.tep.0", <forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000}));
tooltipAdder("tooltip.tep.1", <contenttweaker:sieve_string:*>);
tooltipAdder("tooltip.tep.2", <contenttweaker:handsaw_wood:*>);
tooltipAdder("tooltip.tep.3", <contenttweaker:snow_tool:*>);
tooltipAdder("tooltip.tep.4", <contenttweaker:shinystar_ingot>);
tooltipAdder("tooltip.tep.5", <contenttweaker:shinystar_matter>);
tooltipAdder("tooltip.tep.6", <contenttweaker:conversion_core>);
tooltipAdder("tooltip.tep.7", <contenttweaker:conversion_core>);
tooltipAdder("tooltip.tep.8", <contenttweaker:tp_gem>);
tooltipAdder("tooltip.tep.9", <contenttweaker:pipe_empty>);
tooltipAdder("tooltip.tep.10", <contenttweaker:pipe_blood>);
tooltipAdder("tooltip.tep.11", <contenttweaker:pipe_blood>);
tooltipAdder("tooltip.tep.12", <contenttweaker:medical_bandage>);
tooltipAdder("tooltip.tep.13", <contenttweaker:medical_bandage>);
tooltipAdder("tooltip.tep.14", <contenttweaker:medical_bandage>);
tooltipAdder("tooltip.tep.15", <contenttweaker:medical_pack>);
tooltipAdder("tooltip.tep.16", <contenttweaker:medical_pack>);
tooltipAdder("tooltip.tep.17", <contenttweaker:medical_pack>);
tooltipAdder("tooltip.tep.18", <contenttweaker:medical_splint>);
tooltipAdder("tooltip.tep.19", <contenttweaker:medical_splint>);
tooltipAdder("tooltip.tep.20", <contenttweaker:medical_metal_splint>);
tooltipAdder("tooltip.tep.18", <contenttweaker:medical_metal_splint>);
tooltipAdder("tooltip.tep.19", <contenttweaker:medical_metal_splint>);
tooltipAdder("tooltip.tep.21", <contenttweaker:rainbow_gem>);
tooltipAdder("tooltip.tep.22", <contenttweaker:rainbow_gem>);
tooltipAdder("tooltip.tep.23", <contenttweaker:hammer_plate>);
tooltipAdder("tooltip.tep.24", <pneumaticcraft:empty_pcb:0>);
tooltipAdder("tooltip.tep.25", <pneumaticcraft:empty_pcb:*>);
tooltipAdder("tooltip.tep.26", <pneumaticcraft:empty_pcb:100>);
tooltipAdder("tooltip.tep.27", <cropdusting:poop>);
tooltipAdder("tooltip.tep.28", <cropdusting:poop>);
tooltipAdder("tooltip.tep.29", <modularmachinery:itemblueprint>);
tooltipAdder("tooltip.tep.30", <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"}));
tooltipAdder("tooltip.tep.31", <contenttweaker:blueprint_empty>);
tooltipAdder("tooltip.tep.32", <contenttweaker:noodles_bubbled>);
tooltipAdder("tooltip.tep.33", <contenttweaker:noodles>);
tooltipAdder("tooltip.tep.34", <contenttweaker:brain>);