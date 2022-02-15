/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:ingot:1>, <contenttweaker:papers>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:1>, <botania:manaresource>, <mekanism:enrichedalloy>, <mekanism:controlcircuit>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:2>, <botania:manaresource:7>, <mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:3>, <botania:manaresource:14>, <mekanism:atomicalloy>, <mekanism:controlcircuit:2>, true);

RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock>, <ore:dustRedstone>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:3>, <ore:dustRedstone>, <mekanism:controlcircuit>, <appliedenergistics2:grindstone>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:10>, <ore:dustRedstone>, <mekanism:controlcircuit>, <ore:stickIron>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:2>, <ore:ingotSteel>, <mekanism:controlcircuit:1>, <minecraft:piston>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:8>, <ore:ingotSteel>, <mekanism:ingot:1>, <ore:dustRedstone>, <minecraft:furnace>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock2:5>, <ore:ingotSteel>, <mekanism:enrichedalloy>, <contenttweaker:handsaw_wood>, <mekanism:basicblock:8>, true);

RecipeUtils.recipeShaped(<mekanism:atomicdisassembler>,
    [[<mekanism:controlcircuit:3>,<mekanism:energycube>.withTag({tier: 3}),<mekanism:controlcircuit:3>],
     [<mekanism:atomicalloy>,<mekanism:ingot>,<mekanism:atomicalloy>],
     [null,<mekanism:ingot>,null]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:generator>,
    [[<ore:ingotSteel>,<mekanism:ingot:1>,<ore:ingotSteel>],
     [<minecraft:iron_bars>,<mekanism:basicblock:8>,<minecraft:iron_bars>],
     [<ore:dustRedstone>,<minecraft:furnace>,<ore:dustRedstone>]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:solarpanel>,
    [[<ore:paneGlass>,<ore:paneGlass>,<ore:paneGlass>],
     [<ore:dustRedstone>,<mekanism:enrichedalloy>,<ore:dustRedstone>],
     [<mekanism:ingot:1>,<ore:ingotCopper>,<mekanism:ingot:1>]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:generator:1>,
    [[<mekanismgenerators:solarpanel>,<mekanismgenerators:solarpanel>,<mekanismgenerators:solarpanel>],
     [<mekanism:enrichedalloy>,<ore:ingotSteel>,<mekanism:enrichedalloy>],
     [<mekanism:energytablet>,<mekanism:controlcircuit>,<mekanism:energytablet>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:9>,
    [[<mekanism:enrichedalloy>,<mekanism:basicblock:8>,<mekanism:enrichedalloy>],
     [<mekanism:controlcircuit:1>,<minecraft:piston>,<mekanism:controlcircuit:1>],
     [<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock:14>,
    [[<ore:ingotSteel>,<minecraft:stone_pressure_plate>,<ore:ingotSteel>],
     [<mekanism:energytablet>,<mekanism:controlcircuit:1>,<mekanism:energytablet>]], true);