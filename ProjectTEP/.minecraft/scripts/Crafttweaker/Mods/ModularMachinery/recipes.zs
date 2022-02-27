/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

var level0 as IItemStack[] = [];
var level1 as IItemStack[] = [];
var level2 as IItemStack[] = [];
var level3 as IItemStack[] = [];
var level4 as IItemStack[] = [];
var level5 as IItemStack[] = [];
var level6 as IItemStack[] = [];

for item in loadedMods["modularmachinery"].items {
    val id = ItemHelper.getItemID(item, true);
    if (!(id has "blockcasing")) {
        if (id has "0") level0 += item;
        if (id has "1") level1 += item;
        if (id has "2") level2 += item;
        if (id has "3") level3 += item;
        if (id has "4") level4 += item;
        if (id has "5") level5 += item;
        if (id has "6") level6 += item;
    }
}

for i, level in level1 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <ore:dustRedstone>, level0[i], true);
}

for i, level in level2 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing>, <mekanism:enrichedalloy>, level1[i], true);
}

for i, level in level3 {
    RecipeUtils.recipeCenterCornerTwoSide(level, <modularmachinery:blockcasing>, <mekanism:reinforcedalloy>, <mekanism:enrichedalloy>, level2[i], true);
}

for i, level in level4 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing:4>, <mekanism:reinforcedalloy>, level3[i], true);
}

for i, level in level5 {
    RecipeUtils.recipeCenterCornerTwoSide(level, <modularmachinery:blockcasing:4>, <mekanism:atomicalloy>, <mekanism:reinforcedalloy>, level4[i], true);
}

for i, level in level6 {
    RecipeUtils.recipeCenterCornerSide(level, <modularmachinery:blockcasing:4>, <mekanism:reinforcedalloy>, level5[i], true);
}

function recipeContronller(name as string, item as IItemStack, item1 as IItemStack) {
    RecipeUtils.recipeShaped(itemUtils.getItem("modularcontroller:" ~ name ~ "_controller"),
        [[<modularmachinery:blockcasing>,<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:" ~ name}),<modularmachinery:blockcasing>],
        [item,<modularmachinery:blockcontroller>,item],
        [<modularmachinery:blockcasing>,item1,<modularmachinery:blockcasing>]], false);
}

recipeContronller("fluid_processor", <minecraft:piston>, <mekanism:controlcircuit:2>);
recipeContronller("packer", <mekanism:controlcircuit:1>, <modularmachinery:blockcasing:3>);
recipeContronller("compiler", <mekanism:controlcircuit:1>, <mekanism:enrichedalloy>);
recipeContronller("energy_dismantler", <mekanism:controlcircuit:2>, <mekanism:electrolyticcore>);
recipeContronller("gas_centrifuger", <mekanism:controlcircuit:2>, <mekanism:atomicalloy>);
recipeContronller("mixin_tank", <mekanism:controlcircuit:1>, <mekanism:reinforcedalloy>);
recipeContronller("mana_convertor", <mekanism:controlcircuit:3>, <botania:rfgenerator>);
recipeContronller("mana_altar", <botania:manaresource:4>, <botania:rune:8>);
recipeContronller("reactor", <mekanism:controlcircuit:3>, <mekanism:atomicalloy>);

RecipeUtils.recipeCenterCornerSide(<modularmachinery:blockcasing:1>, <modularmachinery:blockcasing>, <minecraft:iron_bars>, <pneumaticcraft:heat_sink>, false);
RecipeUtils.recipeCenterCornerSide(<modularmachinery:blockcasing:5>, <modularmachinery:blockcasing>, <ore:dustRedstone>, <mekanism:controlcircuit>, false);
RecipeUtils.recipeCenterCornerSide(<modularmachinery:blockcasing:2>, <modularmachinery:blockcasing>, <immersiveengineering:material:6>, <immersiveengineering:material:17>, false);
RecipeUtils.recipeCenterCornerSide(<modularmachinery:blockcasing:3>, <modularmachinery:blockcasing>, <immersiveengineering:material:9>, <pneumaticcraft:compressed_iron_gear>, false);
RecipeUtils.recipeCenterCornerSide(<modularmachinery:blockcasing:4>*4, <modularmachinery:blockcasing>, <ore:ingotSteel>, <mekanism:basicblock:8>, true);

RecipeUtils.recipeAround(<modularmachinery:blockcasing>, <ore:plateCopper>, null, true);

RecipeUtils.recipeShaped(<modularmachinery:blockoutputbus>,
    [[<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<minecraft:chest>,<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<minecraft:hopper>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockcontroller>,
    [[<modularmachinery:blockcasing:4>,<ore:paneGlass>,<modularmachinery:blockcasing:4>],
     [<modularmachinery:blockcasing:3>,<modularmachinery:blockcasing:5>,<modularmachinery:blockcasing:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:controlcircuit:1>,<modularmachinery:blockcasing:4>]], true);

RecipeUtils.recipeShaped(<gugu-utils:sparkmanahatch>,
    [[<modularmachinery:blockcasing>,<botania:spark>,<modularmachinery:blockcasing>],
     [<mekanism:reinforcedalloy>,<botania:spreader>,<botania:pool>],
     [<modularmachinery:blockcasing>,<mekanism:reinforcedalloy>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<gugu-utils:sparkmanahatch:1>,
    [[<modularmachinery:blockcasing>,<botania:spark>,<modularmachinery:blockcasing>],
     [<mekanism:reinforcedalloy>,<botania:pool>,<botania:spreader>],
     [<modularmachinery:blockcasing>,<mekanism:reinforcedalloy>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockinputbus>,
    [[<modularmachinery:blockcasing>,<minecraft:hopper>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<minecraft:chest>,<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockenergyinputhatch>,
    [[<modularmachinery:blockcasing>,<mekanism:transmitter>.withTag({tier: 0}),<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<mekanism:energytablet>,<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockfluidinputhatch>,
    [[<modularmachinery:blockcasing>,<pneumaticcraft:liquid_hopper>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<mekanism:machineblock2:11>.withTag({tier: 0}),<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockenergyoutputhatch>,
    [[<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<mekanism:energytablet>,<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<mekanism:transmitter>.withTag({tier: 0}),<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockfluidoutputhatch>,
    [[<modularmachinery:blockcasing>,<ore:dustRedstone>,<modularmachinery:blockcasing>],
     [<ore:dustRedstone>,<mekanism:machineblock2:11>.withTag({tier: 0}),<ore:dustRedstone>],
     [<modularmachinery:blockcasing>,<pneumaticcraft:liquid_hopper>,<modularmachinery:blockcasing>]], true);

RecipeUtils.recipeShaped(<modularmachinery:blockenergyinputhatch:7>,
    [[<modularmachinery:blockcasing:4>,<mekanism:transmitter>.withTag({tier: 3}),<modularmachinery:blockcasing:4>],
     [<mekanism:controlcircuit:3>,<modularmachinery:blockenergyinputhatch:6>,<mekanism:controlcircuit:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:energycube>.withTag({tier: 3}),<modularmachinery:blockcasing:4>]], false);

RecipeUtils.recipeShaped(<modularmachinery:blockfluidinputhatch:7>,
    [[<modularmachinery:blockcasing:4>,<mekanism:transmitter:2>.withTag({tier: 3}),<modularmachinery:blockcasing:4>],
     [<mekanism:controlcircuit:3>,<modularmachinery:blockfluidinputhatch:7>,<mekanism:controlcircuit:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:gastank>.withTag({tier: 3}),<modularmachinery:blockcasing:4>]], false);

RecipeUtils.recipeShaped(<modularmachinery:blockenergyoutputhatch:7>,
    [[<modularmachinery:blockcasing:4>,<mekanism:energycube>.withTag({tier: 3}),<modularmachinery:blockcasing:4>],
     [<mekanism:controlcircuit:3>,<modularmachinery:blockenergyoutputhatch:6>,<mekanism:controlcircuit:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:transmitter>.withTag({tier: 3}),<modularmachinery:blockcasing:4>]], false);

RecipeUtils.recipeShaped(<modularmachinery:blockfluidoutputhatch:7>,
    [[<modularmachinery:blockcasing:4>,<mekanism:gastank>.withTag({tier: 3}),<modularmachinery:blockcasing:4>],
     [<mekanism:controlcircuit:3>,<modularmachinery:blockfluidoutputhatch:6>,<mekanism:controlcircuit:3>],
     [<modularmachinery:blockcasing:4>,<mekanism:transmitter:2>.withTag({tier: 3}),<modularmachinery:blockcasing:4>]], false);