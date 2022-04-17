/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val remove as IItemStack[] = [
    <mekanismgenerators:generator:7>, <mekanismgenerators:turbineblade>,
    <mekanism:electrolyticcore>, <mekanismgenerators:generator:8>,
    <mekanism:teleportationcore>
];

for Remove in remove {
    recipes.remove(Remove);
}

RecipeUtils.recipeCenterSide(<mekanism:basicblock2:8>, <mekanism:basicblock2:7>, <mekanism:controlcircuit:3>, true);

RecipeUtils.recipeCenterCornerSide(<mekanism:basicblock2:6>, <ore:ingotIron>, <ore:ingotNickel>, <mekanismgenerators:generator:10>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:ingot:1>, <contenttweaker:papers>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:1>, <botania:manaresource>, <mekanism:enrichedalloy>, <mekanism:controlcircuit>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:2>, <botania:manaresource:7>, <mekanism:reinforcedalloy>, <mekanism:controlcircuit:1>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:controlcircuit:3>, <botania:manaresource:14>, <mekanism:atomicalloy>, <mekanism:controlcircuit:2>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:basicblock2:7>, <ore:ingotIron>, <ore:ingotSteel>, <ore:ingotCopper>, true);
RecipeUtils.recipeCenterCornerSide(<mekanismgenerators:generator:10>*2, <ore:ingotIron>, <ore:ingotSteel>, <ore:ingotIron>, true);
RecipeUtils.recipeCenterCornerSide(<mekanismgenerators:generator:9>, <ore:ingotSteel>, <immersiveengineering:metal_decoration0:2>, <contenttweaker:super_coil>, true);
RecipeUtils.recipeCenterCornerSide(<mekanismgenerators:generator:11>, <mekanism:reinforcedalloy>, <mekanismgenerators:generator:10>, <mekanism:controlcircuit:3>, true);
RecipeUtils.recipeCenterCornerSide(<mekanismgenerators:generator:12>, <ore:ingotSteel>, <mekanismgenerators:generator:10>, <mekanism:transmitter:2>.withTag({tier: 2}), true);
RecipeUtils.recipeCenterCornerSide(<mekanism:basicblock:7>, <mekanism:ingot>, <mekanism:ingot:3>, <ore:ingotSteel>, true);
RecipeUtils.recipeCenterCornerSide(<mekanism:basicblock:15>, <mekanism:enrichedalloy>, <mekanism:basicblock2>, <mekanism:controlcircuit:2>, true);

RecipeUtils.recipeCenterCornerTwoSide(<mekanism:mufflingupgrade>, null, <mekanism:enrichedalloy>, <ore:blockGlass>, <minecraft:wool:*>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:15>, null, <mekanism:enrichedalloy>, <mekanism:transmitter:3>.withTag({tier: 0}), <mekanism:controlcircuit:1>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock>, <ore:dustRedstone>, <mekanism:controlcircuit>, <mekanism:enrichedalloy>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:3>, <ore:dustRedstone>, <mekanism:controlcircuit>, <appliedenergistics2:grindstone>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:10>, <ore:dustRedstone>, <mekanism:controlcircuit>, <ore:stickIron>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:2>, <ore:ingotSteel>, <mekanism:controlcircuit:1>, <minecraft:piston>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:8>, <ore:ingotSteel>, <mekanism:ingot:1>, <ore:dustRedstone>, <minecraft:furnace>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock2:5>, <ore:ingotSteel>, <mekanism:enrichedalloy>, <contenttweaker:handsaw_wood>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:portableteleporter>, <mekanism:ingot:3>, <mekanism:polyethene:2>, <mekanism:controlcircuit:2>, <mekanism:energycube>.withTag({tier: 0}), true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:11>, <mekanism:ingot>, <mekanism:basicblock:8>, <mekanism:controlcircuit:2>, <mekanism:teleportationcore>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock:9>, <mekanism:enrichedalloy>, <mekanism:controlcircuit:1>, <mekanism:machineblock:2>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:energycube>.withTag({tier: 0}), <ore:dustRedstone>, <mekanism:energytablet>, <mekanism:controlcircuit>, <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:energycube>.withTag({tier: 1}), <mekanism:enrichedalloy>, <mekanism:energytablet>, <mekanism:controlcircuit:1>, <mekanism:energycube>.withTag({tier: 0}), true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:energycube>.withTag({tier: 2}), <mekanism:reinforcedalloy>, <mekanism:energytablet>, <mekanism:controlcircuit:2>, <mekanism:energycube>.withTag({tier: 1}), true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:energycube>.withTag({tier: 3}), <mekanism:atomicalloy>, <mekanism:energytablet>, <mekanism:controlcircuit:3>, <mekanism:energycube>.withTag({tier: 2}), true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanism:machineblock2:8>, <mekanism:reinforcedalloy>, <mekanism:controlcircuit:3>, <mekanism:machineblock2:11>.withTag({tier: 2}), <mekanism:basicblock:8>, true);
RecipeUtils.recipeCenterCornerTwoSide(<mekanismgenerators:generator:13>, <mekanism:enrichedalloy>, <mekanismgenerators:generator:10>, <mekanism:transmitter:2>.withTag({tier: 2}), <mekanism:gastank>.withTag({tier: 1}), true);

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

RecipeUtils.recipeShaped(<mekanism:machineblock2:13>,
    [[<mekanism:enrichedalloy>,<ore:blockGlass>,<mekanism:enrichedalloy>],
     [<ore:blockRedstone>,<mekanism:transmitter>.withTag({tier: 1}),<ore:blockRedstone>],
     [<mekanism:transmitter>.withTag({tier: 1}),<mekanism:controlcircuit:1>,<mekanism:transmitter>.withTag({tier: 1})]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:15>,
    [[null,<ore:dustSilver>,null],
     [<mekanism:reinforcedalloy>,<ore:paneGlass>,<mekanism:reinforcedalloy>],
     [null,<mekanism:controlcircuit:1>,null]], true);

RecipeUtils.recipeShaped(<mekanism:seismicreader>,
    [[<ore:ingotSteel>,<mekanism:networkreader>,<ore:ingotSteel>],
     [<mekanism:reinforcedalloy>,<mekanism:energyupgrade>,<mekanism:reinforcedalloy>],
     [<ore:ingotSteel>,<mekanism:energytablet>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock:12>,
    [[<minecraft:bucket>,<mekanism:reinforcedalloy>,<minecraft:bucket>],
     [<ore:ingotSteel>,<mekanism:transmitter:1>.withTag({tier: 0}),<ore:ingotSteel>],
     [null,<mekanism:transmitter:1>.withTag({tier: 0}),null]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:generator:6>,
    [[null,<mekanism:reinforcedalloy>,null],
     [<mekanism:reinforcedalloy>,<botania:manaresource:7>,<mekanism:reinforcedalloy>],
     [<mekanism:energytablet>,<mekanism:controlcircuit:1>,<mekanism:energytablet>]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:generator:5>,
    [[<mekanismgenerators:generator:1>,<mekanism:reinforcedalloy>,<mekanismgenerators:generator:1>],
     [<mekanismgenerators:generator:1>,<mekanism:reinforcedalloy>,<mekanismgenerators:generator:1>],
     [<ore:ingotSteel>,<mekanism:controlcircuit:1>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2>,
    [[<mekanism:enrichedalloy>,<mekanism:controlcircuit:2>,<mekanism:enrichedalloy>],
     [<mekanism:gastank>.withTag({tier: 1}),<mekanism:basicblock:8>,<mekanism:machineblock2:11>.withTag({tier: 1})],
     [<mekanism:enrichedalloy>,<mekanism:controlcircuit:2>,<mekanism:enrichedalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock:1>,
    [[<mekanism:reinforcedalloy>,<mekanism:dust:2>,<mekanism:reinforcedalloy>],
     [<minecraft:piston>,<mekanism:basicblock:8>,<minecraft:piston>],
     [<mekanism:basicblock>,<mekanism:controlcircuit:1>,<mekanism:basicblock>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:1>,
    [[<mekanism:enrichedalloy>,<mekanism:controlcircuit:2>,<mekanism:enrichedalloy>],
     [<mekanism:gastank>.withTag({tier: 1}),<mekanism:basicblock:8>,<mekanism:basicblock:10>],
     [<mekanism:enrichedalloy>,<immersiveengineering:metal_decoration0:2>,<mekanism:enrichedalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock3:4>,
    [[<ore:ingotSteel>,<mekanism:controlcircuit:1>,<ore:ingotSteel>],
     [<ore:ingotCopper>,<mekanism:basicblock2:5>,<ore:ingotCopper>],
     [<ore:ingotSteel>,<mekanism:energytablet>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock3:5>,
    [[<ore:ingotSteel>,<minecraft:crafting_table>,<ore:ingotSteel>],
     [<mekanism:controlcircuit:2>,<mekanism:basicblock:8>,<mekanism:controlcircuit:2>],
     [<ore:ingotSteel>,<minecraft:chest>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock3:6>,
    [[<ore:ingotSteel>,<mekanism:controlcircuit:1>,<ore:ingotSteel>],
     [<minecraft:furnace>,<mekanism:basicblock:8>,<minecraft:furnace>],
     [<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:jetpack>,
    [[<mekanism:enrichedalloy>,<mekanism:controlcircuit:1>,<mekanism:enrichedalloy>],
     [<mekanism:enrichedalloy>,<mekanism:gastank>.withTag({tier: 1}),<mekanism:enrichedalloy>],
     [<mekanism:transmitter:2>.withTag({tier: 1}),<mekanism:energytablet>,<mekanism:transmitter:2>.withTag({tier: 1})]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:7>,
    [[<mekanism:atomicalloy>,<minecraft:bucket>,<mekanism:atomicalloy>],
     [<mekanism:controlcircuit:3>,<mekanism:basicblock:8>,<mekanism:controlcircuit:3>],
     [<mekanism:atomicalloy>,<mekanism:gastank>.withTag({tier: 2}),<mekanism:atomicalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:6>,
    [[<mekanism:atomicalloy>,<mekanism:controlcircuit:3>,<mekanism:atomicalloy>],
     [<mekanism:gastank>.withTag({tier: 2}),<mekanism:basicblock:8>,<mekanism:gastank>.withTag({tier: 2})],
     [<mekanism:atomicalloy>,<mekanism:machineblock2:11>.withTag({tier: 2}),<mekanism:atomicalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:2>,
    [[<ore:ingotSteel>,<mekanism:machineblock2:11>.withTag({tier: 1}),<ore:ingotSteel>],
     [<mekanism:reinforcedalloy>,<mekanism:basicblock:8>,<mekanism:reinforcedalloy>],
     [<ore:ingotSteel>,<mekanism:controlcircuit:2>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:3>,
    [[<mekanism:reinforcedalloy>,<mekanism:gastank>.withTag({tier: 1}),<mekanism:reinforcedalloy>],
     [<mekanism:transmitter:2>.withTag({tier: 1}),<mekanism:basicblock:8>,<mekanism:transmitter:2>.withTag({tier: 1})],
     [<mekanism:controlcircuit:2>,<immersiveengineering:toolupgrade>,<mekanism:controlcircuit:2>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:10>,
    [[<mekanism:reinforcedalloy>,<mekanism:machineblock2:11>.withTag({tier: 1}),<mekanism:reinforcedalloy>],
     [<mekanism:controlcircuit:2>,<mekanism:basicblock:8>,<mekanism:controlcircuit:2>],
     [<mekanism:reinforcedalloy>,<pneumaticcraft:flux_compressor>,<mekanism:reinforcedalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock2:4>,
    [[<ore:ingotSteel>,<mekanism:electrolyticcore>,<ore:ingotSteel>],
     [<mekanism:reinforcedalloy>,<mekanism:basicblock:8>,<mekanism:reinforcedalloy>],
     [<ore:ingotSteel>,<mekanism:controlcircuit:2>,<ore:ingotSteel>]], true);

RecipeUtils.recipeShaped(<mekanism:machineblock3>,
    [[<mekanism:polyethene:2>,<mekanism:teleportationcore>,<mekanism:polyethene:2>],
     [<mekanism:basicblock:6>.withTag({tier: 1}),<mekanism:basicblock:8>,<mekanism:machineblock2:11>.withTag({tier: 1})],
     [<mekanism:polyethene:2>,<mekanism:reinforcedalloy>,<mekanism:polyethene:2>]], true);

RecipeUtils.recipeShaped(<mekanismgenerators:generator:3>,
    [[<mekanism:enrichedalloy>,<mekanism:controlcircuit:2>,<mekanism:enrichedalloy>],
     [<mekanism:reinforcedalloy>,<minecraft:furnace>,<mekanism:reinforcedalloy>],
     [<mekanism:enrichedalloy>,<mekanism:gastank>.withTag({tier: 2}),<mekanism:enrichedalloy>]], true);

RecipeUtils.recipeShaped(<mekanism:basicblock:14>,
    [[<mekanism:controlcircuit:2>,<ore:paneGlass>,<mekanism:controlcircuit:2>],
     [<mekanism:basicblock2>,<minecraft:bucket>,<mekanism:basicblock2>],
     [<mekanism:basicblock2>,<mekanism:basicblock2>,<mekanism:basicblock2>]], true);

recipes.addShapedMirrored(<mekanism:electricbow>,
    [[null,<mekanism:ingot>,<mekanism:transmitter>.withTag({tier: 1})],
     [<mekanism:energycube>.withTag({tier: 1}),null,<mekanism:transmitter>.withTag({tier: 1})],
     [null,<mekanism:ingot>,<mekanism:transmitter>.withTag({tier: 1})]]);