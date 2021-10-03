/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

//glass and pane
var shears = <minecraft:shears>;
var Glass0 = <minecraft:glass>;
var Pane0 = <minecraft:glass_pane>;
recipes.remove(Pane0);
recipes.addShapeless(Pane0*6,
        [shears.anyDamage().transformDamage(),Glass0]);

val paneA = [<minecraft:stained_glass_pane>*6,<minecraft:stained_glass_pane:1>*6,<minecraft:stained_glass_pane:2>*6,<minecraft:stained_glass_pane:3>*6] as IItemStack[];
val glassA = [<minecraft:stained_glass>,<minecraft:stained_glass:1>,<minecraft:stained_glass:2>,<minecraft:stained_glass:3>] as IItemStack[];
for PaneA in paneA {
    recipes.remove(PaneA);
} for number, PaneA in paneA {
    recipes.addShapeless(PaneA, [shears.anyDamage().transformDamage(), glassA[number]]);
} //Group 1

val paneB = [<minecraft:stained_glass_pane:4>*6,<minecraft:stained_glass_pane:5>*6,<minecraft:stained_glass_pane:6>*6,<minecraft:stained_glass_pane:7>*6] as IItemStack[];
val glassB = [<minecraft:stained_glass:4>,<minecraft:stained_glass:5>,<minecraft:stained_glass:6>,<minecraft:stained_glass:7>] as IItemStack[];
for PaneB in paneB {
    recipes.remove(PaneB);
} for number, PaneB in paneB {
    recipes.addShapeless(PaneB, [shears.anyDamage().transformDamage(), glassB[number]]);
} //Group 2

val paneC = [<minecraft:stained_glass_pane:8>*6,<minecraft:stained_glass_pane:9>*6,<minecraft:stained_glass_pane:10>*6,<minecraft:stained_glass_pane:11>*6] as IItemStack[];
val glassC = [<minecraft:stained_glass:8>,<minecraft:stained_glass:9>,<minecraft:stained_glass:10>,<minecraft:stained_glass:11>] as IItemStack[];
for PaneC in paneC {
    recipes.remove(PaneC);
} for number, PaneC in paneC {
    recipes.addShapeless(PaneC, [shears.anyDamage().transformDamage(), glassC[number]]);
} //Group 3

val paneD = [<minecraft:stained_glass_pane:12>*6,<minecraft:stained_glass_pane:13>*6,<minecraft:stained_glass_pane:14>*6,<minecraft:stained_glass_pane:15>*6] as IItemStack[];
val glassD = [<minecraft:stained_glass:12>,<minecraft:stained_glass:13>,<minecraft:stained_glass:14>,<minecraft:stained_glass:15>] as IItemStack[];
for PaneD in paneD {
    recipes.remove(PaneD);
} for number, PaneD in paneD {
    recipes.addShapeless(PaneD, [shears.anyDamage().transformDamage(), glassD[number]]);
} //Group 4