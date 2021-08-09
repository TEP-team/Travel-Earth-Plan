/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32762

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var beaBlock as Block = VanillaFactory.createBlock("beacon_block", <blockmaterial:iron>);
beaBlock.blockHardness = 6;
beaBlock.blockResistance = 10;
beaBlock.blockSoundType = <soundtype:metal>;
beaBlock.entitySpawnable = false;
beaBlock.witherProof = false;
beaBlock.beaconBase = false;
beaBlock.register();

/*
var lifeCore as Block = VanillaFactory.createBlock("life_core", <blockmaterial:rock>);
lifeCore.blockHardness = 2;
lifeCore.blockResistance = 4;
lifeCore.blockSoundType = <soundtype:stone>;
lifeCore.entitySpawnable = false;
lifeCore.lightValue = 2;
lifeCore.toolLevel = 0;
lifeCore.register();
*/