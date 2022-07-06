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
    1 : <contenttweaker:warm_paste>,
    2 : <contenttweaker:warm_paste>,
    3 : <contenttweaker:medical_bandage>,
    4 : <contenttweaker:medical_bandage>,
    5 : <contenttweaker:medical_bandage>,
    6 : <contenttweaker:medical_pack>,
    7 : <contenttweaker:medical_pack>,
    8 : <contenttweaker:medical_pack>,
    9 : <contenttweaker:medical_splint>,
    10 : <contenttweaker:medical_splint>,
    11 : <contenttweaker:medical_metal_splint>,
    12 : <contenttweaker:pc>,

    13 : <contenttweaker:world_core>,
    14 : <contenttweaker:world_core>,
    15 : <contenttweaker:sky_core>,
    16 : <contenttweaker:sky_core>,
    17 : <contenttweaker:ground_core>,
    18 : <contenttweaker:ground_core>,
    19 : <contenttweaker:mana_core>,
    20 : <contenttweaker:mana_core>,
    21 : <contenttweaker:machinery_core>,
    22 : <contenttweaker:machinery_core>,
    23 : <contenttweaker:life_core>,
    24 : <contenttweaker:life_core>,
    25 : <contenttweaker:shiny_core>,
    26 : <contenttweaker:shiny_core>,
    27 : <contenttweaker:smart_core>,
    28 : <contenttweaker:smart_core>,
    29 : <contenttweaker:seasons_core>,
    30 : <contenttweaker:seasons_core>,
    31 : <contenttweaker:heaven_core>,
    32 : <contenttweaker:heaven_core>
};

for num, obj in tips {
    BasicUtils.addTooltip(key + num, obj);
}

BasicUtils.addTooltip("tooltip.tep.9", <contenttweaker:medical_metal_splint>);
BasicUtils.addTooltip("tooltip.tep.10", <contenttweaker:medical_metal_splint>);