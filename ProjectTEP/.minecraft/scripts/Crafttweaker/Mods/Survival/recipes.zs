/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 50000
import crafttweaker.item.IItemStack;

val iron = <ore:ingotIron>;
val redstone = <minecraft:redstone>;
val warmLiner = <armorunder:warm_liner_material>;

val mods as string[] = ["sereneseasons", "armorunder"];
for Mods in mods {
    val remove = loadedMods[Mods].items;
    for Remove in remove {
        recipes.remove(Remove);
    }
}

recipes.addShaped(<armorunder:goopak_heat>,
    [[null,<contenttweaker:cloth_string>,null],
     [<contenttweaker:cloth_string>,<armorunder:heating_goo>,<contenttweaker:cloth_string>],
     [null,<contenttweaker:cloth_string>,null]]);

recipes.addShapeless(<armorunder:heating_goo>,
    [<minecraft:flint_and_steel>.anyDamage().transformDamage(),<minecraft:slime_ball>]);

recipes.addShapeless(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide"}),
    [<minecraft:book>,<minecraft:snowball>]);

recipes.addShaped(<armorunder:liner_snips>,
    [[<ore:ingotIron>,<contenttweaker:cloth_string>],
     [null,<ore:ingotIron>]]);

recipes.addShaped(<armorunder:warm_helmet_liner>,
    [[warmLiner,warmLiner,warmLiner],
     [warmLiner,null,warmLiner]]);

recipes.addShaped(<armorunder:warm_chestplate_liner>,
    [[warmLiner,null,warmLiner],
     [warmLiner,warmLiner,warmLiner],
     [warmLiner,warmLiner,warmLiner]]);

recipes.addShaped(<armorunder:warm_leggings_liner>,
    [[warmLiner,warmLiner,warmLiner],
     [warmLiner,null,warmLiner],
     [warmLiner,null,warmLiner]]);

recipes.addShaped(<armorunder:warm_boots_liner>,
    [[warmLiner,null,warmLiner],
     [warmLiner,null,warmLiner]]);

recipes.addShaped(<sereneseasons:greenhouse_glass>*4,
    [[<ore:dyeCyan>,<minecraft:glass>,<ore:dyeCyan>],
     [<minecraft:glass>,<armorunder:heating_goo>,<minecraft:glass>],
     [<ore:dyeCyan>,<minecraft:glass>,<ore:dyeCyan>]]);

recipes.remove(<simpledifficulty:spit>);
recipes.addShaped(<simpledifficulty:spit>,
    [[<minecraft:stick>,<minecraft:cobblestone>,<minecraft:stick>],
     [<minecraft:stick>,null,<minecraft:stick>],
     [<minecraft:stick>,null,<minecraft:stick>]]);

recipes.remove(<simpledifficulty:campfire>);
recipes.addShaped(<simpledifficulty:campfire>,
    [[null,<ore:logWood>,null],
     [<ore:logWood>,<ore:logWood>,<ore:logWood>],
     [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);

recipes.remove(<simpledifficulty:rain_collector>);
recipes.addShaped(<simpledifficulty:rain_collector>,
    [[iron,<simpledifficulty:charcoal_filter>,iron],
     [iron,<minecraft:bucket>,iron],
     [iron,iron,iron]]);

recipes.remove(<simpledifficulty:heater>);
recipes.addShaped(<simpledifficulty:heater>,
    [[<armorunder:heating_goo>,null,<armorunder:heating_goo>],
     [<armorunder:heating_goo>,redstone,<armorunder:heating_goo>],
     [iron,iron,iron]]);

recipes.remove(<simpledifficulty:charcoal_filter>);
recipes.addShaped(<simpledifficulty:charcoal_filter>*2,
    [[null,<minecraft:paper>,null],
     [<minecraft:paper>,<minecraft:coal:1>,<minecraft:paper>],
     [null,<minecraft:paper>,null]]);