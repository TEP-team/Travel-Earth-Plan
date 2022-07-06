/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

RecipeUtils.recipeShaped(<armorunder:goopak_heat>,
    [[null, <contenttweaker:cloth_string>, null], 
     [<contenttweaker:cloth_string>, <armorunder:heating_goo>, <contenttweaker:cloth_string>], 
     [null, <contenttweaker:cloth_string>, null]], true);

RecipeUtils.recipeShaped(<armorunder:liner_snips>,
    [[<ore:ingotIron>, <contenttweaker:cloth_string>], 
     [null, <ore:ingotIron>]], true);

RecipeUtils.recipeShaped(<armorunder:warm_helmet_liner>,
    [[<armorunder:warm_liner_material>, <armorunder:warm_liner_material>, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>]], true);

RecipeUtils.recipeShaped(<armorunder:warm_chestplate_liner>,
    [[<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, <armorunder:warm_liner_material>, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, <armorunder:warm_liner_material>, <armorunder:warm_liner_material>]], true);

RecipeUtils.recipeShaped(<armorunder:warm_leggings_liner>,
    [[<armorunder:warm_liner_material>, <armorunder:warm_liner_material>, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>]], true);

RecipeUtils.recipeShaped(<armorunder:warm_boots_liner>,
    [[<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>], 
     [<armorunder:warm_liner_material>, null, <armorunder:warm_liner_material>]], true);

RecipeUtils.recipeShaped(<armorunder:heating_goo>*8,
    [[<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],
     [<minecraft:slime_ball>,<minecraft:lava_bucket>,<minecraft:slime_ball>],
     [<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>]], true);

RecipeUtils.recipeShapeless(<armorunder:heating_goo>,
    [<minecraft:flint_and_steel>.anyDamage().transformDamage(), <minecraft:slime_ball>], false);