/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60004
import mods.dropt.Dropt;

//copper ore
Dropt.list("ore_drop_0")
    .add(Dropt.rule()
        .matchDrops([<ore:oreCopper>])
        .addDrop(Dropt.drop()
        .items([<mekanism:oreblock:1>])
    )
);

//tin ore
Dropt.list("ore_drop_1")
    .add(Dropt.rule()
        .matchDrops([<ore:oreTin>])
        .addDrop(Dropt.drop()
        .items([<mekanism:oreblock:2>])
    )
);

//lead ore
Dropt.list("ore_drop_2")
    .add(Dropt.rule()
        .matchDrops([<ore:orelead>])
        .addDrop(Dropt.drop()
        .items([<contenttweaker:sub_block_holder_1>])
    )
);