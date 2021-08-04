#priority 301

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.dropt.Dropt;

//ICE_HCLB_chiller [DELETE]
val ice as IItemStack[] = [<simpledifficulty:chiller>,<simpledifficulty:ice_helmet>,<simpledifficulty:ice_chestplate>,<simpledifficulty:ice_leggings>,<simpledifficulty:ice_boots>];
for ICE in ice {recipes.remove(ICE);}

//ICE_HCLB_chiller [DROP]
Dropt.list("ice_fire_block")
.add(Dropt.rule()
  .matchBlocks(["<minecraft:ice>"])
    .addDrop(Dropt.drop()
      .selector(Dropt.weight(0))
      .items([<simpledifficulty:ice_chunk>])))
.add(Dropt.rule()
  .matchBlocks(["<minecraft:magma>"])
    .addDrop(Dropt.drop()
      .selector(Dropt.weight(0))
      .items([<simpledifficulty:magma_chunk>])));