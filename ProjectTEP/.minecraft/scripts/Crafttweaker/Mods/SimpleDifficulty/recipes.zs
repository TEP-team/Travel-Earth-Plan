/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000

RecipeUtils.recipeShaped(<simpledifficulty:spit>,
    [[<minecraft:stick>, <minecraft:cobblestone>, <minecraft:stick>], 
     [<minecraft:stick>, null, <minecraft:stick>], 
     [<minecraft:stick>, null, <minecraft:stick>]], true);

RecipeUtils.recipeShaped(<simpledifficulty:campfire>,
    [[null, <ore:logWood>, null], 
     [<ore:logWood>, <ore:logWood>, <ore:logWood>], 
     [<ore:logWood>, <ore:logWood>, <ore:logWood>]], true);

RecipeUtils.recipeShaped(<simpledifficulty:rain_collector>,
    [[<ore:ingotIron>, <simpledifficulty:charcoal_filter>, <ore:ingotIron>], 
     [<ore:ingotIron>, <minecraft:bucket>, <ore:ingotIron>], 
     [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]], true);

RecipeUtils.recipeShaped(<simpledifficulty:heater>,
    [[<armorunder:heating_goo>, null, <armorunder:heating_goo>], 
     [<armorunder:heating_goo>, <minecraft:redstone>, <armorunder:heating_goo>], 
     [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]], true);

RecipeUtils.recipeShaped(<simpledifficulty:charcoal_filter>*2,
    [[null, <minecraft:paper>, null], 
     [<minecraft:paper>, <minecraft:coal:1>, <minecraft:paper>], 
     [null, <minecraft:paper>, null]], true);