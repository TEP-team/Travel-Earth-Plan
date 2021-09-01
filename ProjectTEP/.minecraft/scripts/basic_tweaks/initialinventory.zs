/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;
import mods.initialinventory.InvHandler.addStartingItem;

val starting as IItemStack[] = 
[
    <modularwarfare:prototype.p88>.withTag({punched: 0 as byte, attachment_barrel: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "modularwarfare:prototype.pistol_suppressor", Count: 1 as byte, tag: {skinId: 0}, Damage: 0 as short}, ammo: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "modularwarfare:prototype.p88ammo", Count: 1 as byte, tag: {ammocount: 15, skinId: 0, bullet: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "modularwarfare:prototype.9x19", Count: 1 as byte, Damage: 0 as short}}, Damage: 0 as short}, firemode: "semi", skinId: 0, attachment_sight: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "modularwarfare:prototype.docter_sight_mini", Count: 1 as byte, tag: {skinId: 0}, Damage: 0 as short}}),
    <modularwarfare:prototype.p88ammo>.withTag({ammocount: 15, skinId: 0, bullet: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "modularwarfare:prototype.9x19", Count: 1 as byte, Damage: 0 as short}})*8,
    <minecraft:stone_shovel:100>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Lore: ["§c要损坏了...", "§e应该还能铲雪."], Name: "§c磨损的石锹"}}),
    <contenttweaker:snow_tool:89>,<pneumaticcraft:seismic_sensor>,<contenttweaker:medical_pack>*2,<contenttweaker:medical_metal_splint>*2,<contenttweaker:tp_gem>,
    <harvestcraft:pumpkinoatsconesitem>.withTag({display: {Lore: ["§b具有一定的充饥作用."], Name: "§e压缩饼干"}})*4,
    <harvestcraft:energydrinkitem>.withTag({display: {Lore: ["§b可以解渴，也可以补充体力."], Name: "§e能量饮料"}})*4,
    <simpledifficulty:wool_helmet>,<simpledifficulty:wool_chestplate>,<simpledifficulty:wool_leggings>,<armorunder:goopak_heat>*4,
    <simpledifficulty:wool_boots>,<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide_chinese"}),<botania:lexicon>.withTag({})
];

for StartingItems in starting {
    addStartingItem(StartingItems);
}