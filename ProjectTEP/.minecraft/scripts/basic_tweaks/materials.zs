/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 61000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;

//def
global materials as IItemDefinition = <contenttweaker:material_part>.definition;
global blocks0def as IItemDefinition = <contenttweaker:sub_block_holder_0>.definition;
global blocks1def as IItemDefinition = <contenttweaker:sub_block_holder_1>.definition;

//ints
global bearingInt as int[] = [0,17,34,51,68,85,102,119,136,153,170,187,204];
global beamInt as int[] = [1,18,35,52,69,86,103,120,137,154,171,188,205];
global boltInt as int[] = [2,19,36,53,70,87,104,121,138,155,172,189,206];
global casingInt as int[] = [3,20,37,54,71,88,105,122,139,156,173,190,207];
global clumpInt as int[] = [4,21,38,55,72,89,106,123,140,157,174,191,208];
global crystalInt as int[] = [5,22,39,56,73,90,107,124,141,158,175,192,209];
global crushedoreInt as int[] = [6,23,40,57,74,91,108,125,142,159,176,193,210];
global denseplateInt as int[] = [7,24,41,58,75,92,109,126,143,160,177,194,211];
global dirtydustInt as int[] = [8,25,42,59,76,93,110,127,144,161,178,195,212];
global dustInt as int[] = [9,26,43,60,77,94,111,128,145,162,179,196,213];
global gearInt as int[] = [10,27,44,61,78,95,112,129,146,163,180,197,214];
global ingotInt as int[] = [11,28,45,62,79,96,113,130,147,164,181,198,215];
global nuggetInt as int[] = [12,29,46,63,80,97,114,131,148,165,182,199,216];
global plateInt as int[] = [13,30,47,64,81,98,115,132,149,166,183,200,217];
global rodInt as int[] = [14,31,48,65,82,99,116,133,150,167,184,201,218];
global shardInt as int[] = [15,32,49,66,83,100,117,134,151,168,185,202,219];

//ore_dusts
global dirtydusts as IItemStack[] = [<mekanism:dirtydust>,<mekanism:dirtydust:1>,<mekanism:dirtydust:2>,<mekanism:dirtydust:3>,<mekanism:dirtydust:4>];
global dusts as IItemStack[] = [<mekanism:dust>,<mekanism:dust:1>,<mekanism:dust:2>,<mekanism:dust:3>,<mekanism:dust:4>];
global ore as IItemStack[] = [<minecraft:iron_ore>,<minecraft:gold_ore>,<mekanism:oreblock>,<mekanism:oreblock:1>,<mekanism:oreblock:2>];