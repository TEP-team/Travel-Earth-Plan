/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

//remove
var remove as IItemStack[] = 
[
    <botania:manaresource:14>,<botania:felpumpkin>,<botania:pylon>,<botania:pylon:1>,
    <botania:pylon:2>,<botania:cellblock>,<botania:bifrostperm>
];
for Remove in remove {
    recipes.remove(Remove);
}

//add
recipes.remove(<botania:fertilizer>);
recipes.addShapeless(<botania:fertilizer>,
    [<minecraft:dye:15>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>,<botania:dye:*>]);

recipes.addShapeless(<botania:fertilizer>*2,
    [<botania:fertilizer>,<cropdusting:poop>]);

recipes.remove(<botania:terraplate>);
recipes.addShaped(<botania:terraplate>,
    [[<pneumaticcraft:plastic:4>,<botania:manatablet>.withTag({mana: 500000}),<pneumaticcraft:plastic:4>],
     [<botania:storage>,<botania:rune:8>,<botania:storage>],
     [<pneumaticcraft:plastic:4>,<minecraft:lapis_block>,<pneumaticcraft:plastic:4>]]);

recipes.remove(<botania:alfheimportal>);
recipes.addShaped(<botania:alfheimportal>,
    [[<botania:livingwood>,<botania:manaresource:18>,<botania:livingwood>],
     [<botania:manaresource:18>,<botania:livingwood:5>,<botania:manaresource:18>],
     [<botania:livingwood>,<botania:manaresource:18>,<botania:livingwood>]]);