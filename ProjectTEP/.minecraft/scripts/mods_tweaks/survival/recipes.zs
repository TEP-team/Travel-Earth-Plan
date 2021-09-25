/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 40000
import crafttweaker.item.IItemStack;

var iron = <ore:ingotIron>;
var redstone = <minecraft:redstone>;

//mods hide
val mods as string[] = ["sereneseasons","armorunder"];
for Mods in mods {
    val remove = loadedMods[Mods].items;
    for Remove in remove {
        recipes.remove(Remove);
    }
}

var fas = <minecraft:flint_and_steel>;
fas.maxDamage = 4;
recipes.remove(fas);
recipes.addShapeless(fas,
    [<minecraft:cobblestone>,<minecraft:flint>]);

recipes.addShaped(<armorunder:goopak_heat>*4,
    [[null,<contenttweaker:cloth_string>,null],
     [<contenttweaker:cloth_string>,<armorunder:heating_goo>,<contenttweaker:cloth_string>],
     [null,<contenttweaker:cloth_string>,null]]);

recipes.addShaped(<armorunder:warm_liner_material>,
    [[null,<minecraft:string>,null],
     [<minecraft:string>,<armorunder:heating_goo>,<minecraft:string>],
     [null,<minecraft:string>,null]]);

recipes.addShapeless(<armorunder:heating_goo>,
    [<minecraft:flint_and_steel>.anyDamage().transformDamage(),<minecraft:slime_ball>]);

recipes.addShaped(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide_chinese"}),
    [[<minecraft:snowball>],
     [<minecraft:book>],
     [<minecraft:snowball>]]);

recipes.addShaped(<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:tep_guide_english"}),
    [[<minecraft:snowball>,<minecraft:book>,<minecraft:snowball>]]);

recipes.addShaped(<armorunder:liner_snips>,
    [[<ore:ingotIron>,<contenttweaker:cloth_string>],
     [null,<ore:ingotIron>]]);

recipes.addShaped(<armorunder:warm_helmet_liner>,
    [[<armorunder:warm_liner_material>,<armorunder:warm_liner_material>,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>]]);

recipes.addShaped(<armorunder:warm_chestplate_liner>,
    [[<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,<armorunder:warm_liner_material>,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,<armorunder:warm_liner_material>,<armorunder:warm_liner_material>]]);

recipes.addShaped(<armorunder:warm_leggings_liner>,
    [[<armorunder:warm_liner_material>,<armorunder:warm_liner_material>,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>]]);

recipes.addShaped(<armorunder:warm_boots_liner>,
    [[<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>],
     [<armorunder:warm_liner_material>,null,<armorunder:warm_liner_material>]]);

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