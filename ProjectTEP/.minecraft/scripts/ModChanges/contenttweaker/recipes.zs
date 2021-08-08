#priority 28999

import crafttweaker.item.IItemStack;

var iron = <ore:ingotIron>;
var rs = <ore:dustRedstone>;

//Contenttweaker
recipes.addShaped(<contenttweaker:sieve_string>,
    [[<minecraft:stick>,<minecraft:stick>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:string>,<minecraft:stick>],
	 [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]]);

recipes.addShaped(<contenttweaker:snow_tool>,
    [[null,null,<minecraft:dye:4>],
	 [null,iron,null],
	 [rs,null,null]]);

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
    [[rs,<contenttweaker:common_code>,rs],
	 [<contenttweaker:common_code>,iron,<contenttweaker:common_code>],
	 [rs,<contenttweaker:common_code>,rs]]);

recipes.addShaped(<contenttweaker:handsaw_wood>,
    [[null,null,iron],
	 [null,iron,<ore:plankWood>],
	 [<minecraft:stick>,<ore:plankWood>,null]]);

recipes.addShaped(<contenttweaker:medical_splint>,
    [[null,<minecraft:stick>,<minecraft:string>],
	 [<minecraft:stick>,null,<minecraft:stick>],
	 [<minecraft:string>,<minecraft:stick>,null]]);

recipes.addShaped(<contenttweaker:medical_metal_splint>,
    [[null,<contenttweaker:metal_stick>,<minecraft:string>],
	 [<contenttweaker:metal_stick>,null,<contenttweaker:metal_stick>],
	 [<minecraft:string>,<contenttweaker:metal_stick>,null]]);

recipes.addShaped(<contenttweaker:metal_stick>*4,
    [[iron],
	 [iron],
	 [iron]]);

recipes.addShaped(<contenttweaker:pipe_empty>,
    [[null,null,<contenttweaker:metal_stick>],
	 [null,iron,null],
	 [<contenttweaker:metal_stick>,null,null]]);

recipes.addShapeless(<contenttweaker:cloth_string>,
    [<minecraft:string>,<minecraft:string>,<minecraft:string>,<minecraft:string>]);

recipes.addShapeless(<contenttweaker:medical_bandage>,
    [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>]);

recipes.addShaped(<contenttweaker:medical_pack>,
    [[<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>],
	 [<contenttweaker:medical_bandage>,<contenttweaker:pipe_blood>,<contenttweaker:medical_metal_splint>],
	 [<contenttweaker:cloth_string>,<contenttweaker:cloth_string>,<contenttweaker:cloth_string>]]);

recipes.addShaped(<contenttweaker:hammer_plate>,
    [[null,iron,null],
	 [null,<minecraft:stick>,iron],
	 [<minecraft:stick>,null,null]]);

//ingots, plates
var hammer as IItemStack = <contenttweaker:hammer_plate>;
val ingots as IItemStack[] = [<modularmachinery:itemmodularium>,<contenttweaker:material_part:29>,<contenttweaker:material_part:45>,<contenttweaker:material_part:61>,
							  <contenttweaker:material_part:77>,<contenttweaker:material_part:96>,<contenttweaker:material_part:115>,<contenttweaker:material_part:134>,
							  <contenttweaker:material_part:153>];
val plates as IItemStack[] = [<contenttweaker:material_part:15>,<contenttweaker:material_part:31>,<contenttweaker:material_part:47>,<contenttweaker:material_part:63>,
							  <contenttweaker:material_part:79>,<contenttweaker:material_part:98>,<contenttweaker:material_part:117>,<contenttweaker:material_part:136>,
							  <contenttweaker:material_part:159>];
for r, Plates in plates {
    recipes.addShapeless(Plates, [hammer.anyDamage().transformDamage(), ingots[r]]);
}