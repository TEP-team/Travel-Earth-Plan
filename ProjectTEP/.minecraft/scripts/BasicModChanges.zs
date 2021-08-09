/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#priority 32765

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