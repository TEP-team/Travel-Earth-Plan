#priority 302

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Conversion_Core
recipes.addShapeless(<minecraft:log:1>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log>]);
recipes.addShapeless(<minecraft:log:2>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log:1>]);
recipes.addShapeless(<minecraft:log:3>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log:2>]);
recipes.addShapeless(<minecraft:log2>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log:3>]);
recipes.addShapeless(<minecraft:log2:1>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log2>]);
recipes.addShapeless(<minecraft:log>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:log2:1>]);

recipes.addShapeless(<minecraft:sapling>,
    [<contenttweaker:conversion_core>.reuse(),<ore:plankWood>]);
recipes.addShapeless(<minecraft:sapling:1>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling>]);
recipes.addShapeless(<minecraft:sapling:2>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling:1>]);
recipes.addShapeless(<minecraft:sapling:3>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling:2>]);
recipes.addShapeless(<minecraft:sapling:4>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling:3>]);
recipes.addShapeless(<minecraft:sapling:5>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling:4>]);
recipes.addShapeless(<minecraft:sapling>,
    [<contenttweaker:conversion_core>.reuse(),<minecraft:sapling:5>]);

//Vanilla
val planks = [<minecraft:planks>,<minecraft:planks:1>,<minecraft:planks:2>,<minecraft:planks:3>,<minecraft:planks:4>,<minecraft:planks:5>] as IItemStack[];
val logs = [<minecraft:log>,<minecraft:log:1>,<minecraft:log:2>,<minecraft:log:3>,<minecraft:log2>,<minecraft:log2:1>] as IItemStack[];
for Planks in planks {recipes.remove(Planks);}
for Logs in logs {recipes.remove(Logs);}
for pn, Planks in planks {
    recipes.addShapeless(Planks, [logs[pn]]);
}
recipes.addShapeless(<minecraft:planks>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log>]);

recipes.addShapeless(<minecraft:planks:1>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:1>]);

recipes.addShapeless(<minecraft:planks:2>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:2>]);

recipes.addShapeless(<minecraft:planks:3>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log:3>]);

recipes.addShapeless(<minecraft:planks:4>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log2>]);

recipes.addShapeless(<minecraft:planks:5>*4,
    [<contenttweaker:handsaw_wood>.anyDamage().transformDamage(),<minecraft:log2:1>]);

var stick = <minecraft:stick>;
recipes.remove(stick);
recipes.addShaped(stick*2,
    [[null,null,<ore:plankWood>],
	 [null,<ore:plankWood>,null],
	 [<ore:plankWood>,null,null]]);
recipes.addShaped(stick*2,
    [[<ore:plankWood>,null,null],
	 [null,<ore:plankWood>,null],
	 [null,null,<ore:plankWood>]]);

//Beacon

//Contenttweaker
recipes.addShaped(<contenttweaker:sieve_string>,
    [[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:string>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]]);

recipes.addShaped(<contenttweaker:snow_tool>,
    [[null,null,<minecraft:dye:4>],
	 [null,<ore:ingotIron>,null],
	 [<ore:dustRedstone>,null,null]]);

recipes.addShapeless(<contenttweaker:wood_residue>,
    [<contenttweaker:sieve_string>.anyDamage().transformDamage(),<minecraft:snowball>]);

var wr as IItemStack = <contenttweaker:wood_residue>;
var bwr as IItemStack = <contenttweaker:big_wood_residue>;
recipes.addShapeless(<minecraft:log>,
    [<contenttweaker:snow_tool>.anyDamage().transformDamage(2),wr,wr,wr,wr,wr,wr,wr,wr]);
recipes.addShapeless(<minecraft:log>,
    [<contenttweaker:snow_tool>.anyDamage().transformDamage(2),bwr,bwr]);
recipes.addShapeless(bwr,
    [wr,wr,wr,wr]);

recipes.addShaped(<contenttweaker:conversion_core>,
    [[<ore:dustRedstone>,<contenttweaker:error_code>,<ore:dustRedstone>],
	 [<contenttweaker:error_code>,<minecraft:iron_block>,<contenttweaker:error_code>],
	 [<ore:dustRedstone>,<contenttweaker:error_code>,<ore:dustRedstone>]]);

recipes.addShaped(<contenttweaker:handsaw_wood>,
    [[null,null,<ore:ingotIron>],
	 [null,<ore:ingotIron>,<ore:plankWood>],
	 [<minecraft:stick>,<ore:plankWood>,null]]);

//bonsaipot
var iron = <ore:ingotIron>;
recipes.addShaped(<bonsaitrees:bonsaipot>,
    [[iron,null,iron],
	 [iron,iron,iron]]);

//glass and pane
var flint = <minecraft:flint> as IItemStack;
var Glass0 = <minecraft:glass> as IItemStack;
var Pane0 = <minecraft:glass_pane> as IItemStack;
recipes.remove(Pane0);
    recipes.addShapeless(Pane0*6,
        [flint,Glass0]);

val flintMore = [flint,flint,flint,flint] as IItemStack[];
val paneA = [<minecraft:stained_glass_pane>*6,<minecraft:stained_glass_pane:1>*6,<minecraft:stained_glass_pane:2>*6,<minecraft:stained_glass_pane:3>*6] as IItemStack[];
val glassA = [<minecraft:stained_glass>,<minecraft:stained_glass:1>,<minecraft:stained_glass:2>,<minecraft:stained_glass:3>] as IItemStack[];
for PaneA in paneA {
    recipes.remove(PaneA);
} for number, PaneA in paneA {
    recipes.addShapeless(PaneA, [flintMore[number], glassA[number]]);
} //Group 1

val paneB = [<minecraft:stained_glass_pane:4>*6,<minecraft:stained_glass_pane:5>*6,<minecraft:stained_glass_pane:6>*6,<minecraft:stained_glass_pane:7>*6] as IItemStack[];
val glassB = [<minecraft:stained_glass:4>,<minecraft:stained_glass:5>,<minecraft:stained_glass:6>,<minecraft:stained_glass:7>] as IItemStack[];
for PaneB in paneB {
    recipes.remove(PaneB);
} for number, PaneB in paneB {
    recipes.addShapeless(PaneB, [flintMore[number], glassB[number]]);
} //Group 2

val paneC = [<minecraft:stained_glass_pane:8>*6,<minecraft:stained_glass_pane:9>*6,<minecraft:stained_glass_pane:10>*6,<minecraft:stained_glass_pane:11>*6] as IItemStack[];
val glassC = [<minecraft:stained_glass:8>,<minecraft:stained_glass:9>,<minecraft:stained_glass:10>,<minecraft:stained_glass:11>] as IItemStack[];
for PaneC in paneC {
    recipes.remove(PaneC);
} for number, PaneC in paneC {
    recipes.addShapeless(PaneC, [flintMore[number], glassC[number]]);
} //Group 3

val paneD = [<minecraft:stained_glass_pane:12>*6,<minecraft:stained_glass_pane:13>*6,<minecraft:stained_glass_pane:14>*6,<minecraft:stained_glass_pane:15>*6] as IItemStack[];
val glassD = [<minecraft:stained_glass:12>,<minecraft:stained_glass:13>,<minecraft:stained_glass:14>,<minecraft:stained_glass:15>] as IItemStack[];
for PaneD in paneD {
    recipes.remove(PaneD);
} for number, PaneD in paneD {
    recipes.addShapeless(PaneD, [flintMore[number], glassD[number]]);
} //Group 4