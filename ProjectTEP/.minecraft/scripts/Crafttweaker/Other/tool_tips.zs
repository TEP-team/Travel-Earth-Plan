/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 80000
import crafttweaker.item.IItemStack;

val key = "tooltip.tep.";
val tips as IItemStack[int] = {
    0 : <forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000}),
    1 : <contenttweaker:hammer_flint>,
    2 : <contenttweaker:hammer_flint>,
    3 : <contenttweaker:handsaw_wood:*>,
    4 : <contenttweaker:shinystar_ingot>,
    5 : <contenttweaker:shinystar_matter>,
    6 : <contenttweaker:conversion_core>,
    7 : <contenttweaker:conversion_core>,
    8 : <contenttweaker:tp_gem>,
    9 : <contenttweaker:super_coil>,
    10 : <contenttweaker:electric_iron>,
    11 : <contenttweaker:warm_paste>,
    12 : <contenttweaker:medical_bandage>,
    13 : <contenttweaker:medical_bandage>,
    14 : <contenttweaker:medical_bandage>,
    15 : <contenttweaker:medical_pack>,
    16 : <contenttweaker:medical_pack>,
    17 : <contenttweaker:medical_pack>,
    18 : <contenttweaker:medical_splint>,
    19 : <contenttweaker:medical_splint>,
    20 : <contenttweaker:medical_metal_splint>,
    21 : <contenttweaker:rainbow_gem>,
    22 : <contenttweaker:warm_paste>,
    23 : <contenttweaker:hammer_plate>,
    24 : <pneumaticcraft:empty_pcb:0>,
    25 : <pneumaticcraft:empty_pcb:*>,
    26 : <pneumaticcraft:empty_pcb:100>,
    27 : <cropdusting:poop>,
    28 : <cropdusting:poop>,
    29 : <modularmachinery:itemblueprint>,
    //30 : ,
    31 : <contenttweaker:rainbow_rune>,
    32 : <contenttweaker:capacitance_pack>,
    33 : <contenttweaker:resistance_pack>,
    34 : <contenttweaker:nano_pack>,
    35 : <contenttweaker:pc>,
    36 : <contenttweaker:world_core>,
    37 : <contenttweaker:sky_core>,
    38 : <contenttweaker:ground_core>,
    39 : <contenttweaker:mana_core>,
    40 : <contenttweaker:machinery_core>,
    41 : <contenttweaker:life_core>,
    42 : <contenttweaker:shiny_core>,
    43 : <contenttweaker:smart_core>,
    44 : <contenttweaker:seasons_core>,
    45 : <contenttweaker:heaven_core>
};

for num, obj in tips {
    BasicUtils.addTooltip(key + num, obj);
}

BasicUtils.addTooltip("tooltip.tep.18", <contenttweaker:medical_metal_splint>);
BasicUtils.addTooltip("tooltip.tep.19", <contenttweaker:medical_metal_splint>);