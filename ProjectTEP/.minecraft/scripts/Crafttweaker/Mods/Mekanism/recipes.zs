/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

var redstone = <minecraft:redstone>;

//add
recipes.remove(<mekanism:atomicdisassembler>);
recipes.addShaped(<mekanism:atomicdisassembler>,
    [[<mekanism:controlcircuit:3>,<mekanism:energycube>.withTag({tier: 3}),<mekanism:controlcircuit:3>],
     [<mekanism:atomicalloy>,<mekanism:ingot>,<mekanism:atomicalloy>],
     [null,<mekanism:ingot>,null]]);

recipes.addShaped(<mekanism:controlcircuit>,
    [[redstone,<mekanism:ingot:1>.withTag({tier: 3}),redstone],
     [<mekanism:ingot:1>,<contenttweaker:papers>,<mekanism:ingot:1>],
     [redstone,<mekanism:ingot:1>,redstone]]);

recipes.remove(<mekanism:controlcircuit:1>);
recipes.addShaped(<mekanism:controlcircuit:1>,
    [[<mekanism:energytablet>,<mekanism:enrichedalloy>,<mekanism:energytablet>],
     [<mekanism:enrichedalloy>,<mekanism:controlcircuit>,<mekanism:enrichedalloy>],
     [<mekanism:energytablet>,<mekanism:enrichedalloy>,<mekanism:energytablet>]]);

recipes.remove(<mekanism:controlcircuit:2>);
recipes.addShaped(<mekanism:controlcircuit:2>,
    [[<botania:manaresource:2>,<mekanism:reinforcedalloy>,<botania:manaresource:2>],
     [<mekanism:reinforcedalloy>,<mekanism:controlcircuit:1>,<mekanism:reinforcedalloy>],
     [<botania:manaresource:2>,<mekanism:reinforcedalloy>,<botania:manaresource:2>]]);

recipes.remove(<mekanism:controlcircuit:3>);
recipes.addShaped(<mekanism:controlcircuit:3>,
    [[<botania:manaresource:9>,<mekanism:atomicalloy>,<botania:manaresource:9>],
     [<mekanism:atomicalloy>,<mekanism:controlcircuit:2>,<mekanism:atomicalloy>],
     [<botania:manaresource:9>,<mekanism:atomicalloy>,<botania:manaresource:9>]]);

recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 0}),
    [[<mekanism:compressedobsidian>,<mekanism:controlcircuit>,<mekanism:compressedobsidian>],
     [<minecraft:obsidian>,<minecraft:chest>,<minecraft:obsidian>],
     [<minecraft:cobblestone>,<minecraft:obsidian>,<minecraft:cobblestone>]]);

recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 1}),
    [[<botania:manaresource:7>,<mekanism:controlcircuit:1>,<botania:manaresource:7>],
     [<minecraft:obsidian>,<mekanism:basicblock:6>.withTag({tier: 0}),<minecraft:obsidian>],
     [<minecraft:cobblestone>,<minecraft:obsidian>,<minecraft:cobblestone>]]);

recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 2}),
    [[<botania:manaresource:9>,<mekanism:controlcircuit:2>,<botania:manaresource:9>],
     [<minecraft:obsidian>,<mekanism:basicblock:6>.withTag({tier: 1}),<minecraft:obsidian>],
     [<minecraft:cobblestone>,<minecraft:obsidian>,<minecraft:cobblestone>]]);

recipes.addShaped(<mekanism:basicblock:6>.withTag({tier: 3}),
    [[<botania:manaresource:8>,<mekanism:controlcircuit:3>,<botania:manaresource:8>],
     [<minecraft:obsidian>,<mekanism:basicblock:6>.withTag({tier: 2}),<minecraft:obsidian>],
     [<minecraft:cobblestone>,<minecraft:obsidian>,<minecraft:cobblestone>]]);