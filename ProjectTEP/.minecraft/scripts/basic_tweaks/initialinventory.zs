/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import crafttweaker.item.IItemStack;

val starting as IItemStack[] = 
[
    <minecraft:stone_shovel:100>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], display: {Lore: ["§c要损坏了...", "§e应该还能铲雪."], Name: "§c磨损的石锹"}}),
    <contenttweaker:snow_tool:89>,<contenttweaker:sieve_string:51>,<pneumaticcraft:seismic_sensor>,<contenttweaker:medical_pack>*2,<contenttweaker:medical_metal_splint>*2,
    <harvestcraft:pumpkinoatsconesitem>.withTag({display: {Lore: ["§b具有一定的充饥作用."], Name: "§e压缩饼干"}})*4,
    <harvestcraft:energydrinkitem>.withTag({display: {Lore: ["§b可以解渴，也可以补充体力."], Name: "§e能量饮料"}})*4,
    <simpledifficulty:wool_helmet>,<simpledifficulty:wool_chestplate>,<simpledifficulty:wool_leggings>,<armorunder:goopak_heat>*4,
    <simpledifficulty:wool_boots>,<botania:lexicon>.withTag({})
];

for StartingItems in starting {
    mods.initialinventory.InvHandler.addStartingItem(StartingItems);
}