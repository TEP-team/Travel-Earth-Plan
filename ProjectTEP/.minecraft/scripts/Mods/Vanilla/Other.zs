/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

var iron = <ore:ingotIron>;

//seeds
vanilla.seeds.removeSeed(<minecraft:wheat_seeds>);

//furnace
furnace.remove(<pneumaticcraft:empty_pcb:100>);
furnace.remove(<forge:bucketfilled>.withTag({FluidName: "purifiedwater", Amount: 1000}));
furnace.remove(<simpledifficulty:purified_water_bottle>);
furnace.addRecipe(<contenttweaker:hot_water>,<minecraft:water_bucket>,0.2);
furnace.addRecipe(<minecraft:leather>,<minecraft:rotten_flesh>,0.1);
furnace.addRecipe(<contenttweaker:ingot_is>,<contenttweaker:tin_solder_dust>,1);
furnace.addRecipe(<contenttweaker:ingot_in>,<contenttweaker:iron_with_nickel>,1);
furnace.setFuel(<contenttweaker:wood_residue>,38);
furnace.setFuel(<contenttweaker:big_wood_residue>,150);

recipes.remove(<bonsaitrees:bonsaipot>);
recipes.addShaped(<bonsaitrees:bonsaipot>,
    [[iron,null,iron],
	 [iron,iron,iron]]);

recipes.remove(<spiceoflife:bookfoodjournal>);
recipes.addShapeless(<spiceoflife:bookfoodjournal>,
    [<minecraft:book>,<minecraft:wheat>]);

recipes.remove(<spiceoflife:lunchbag>);
recipes.addShaped(<spiceoflife:lunchbag>,
    [[null,<contenttweaker:cloth_string>,null],
	 [<contenttweaker:cloth_string>,<spiceoflife:bookfoodjournal>,<contenttweaker:cloth_string>],
	 [null,<contenttweaker:cloth_string>,null]]);

recipes.remove(<spiceoflife:lunchbox>);
recipes.addShaped(<spiceoflife:lunchbox>,
    [[null,iron,null],
	 [iron,<spiceoflife:lunchbag>,iron],
	 [null,iron,null]]);