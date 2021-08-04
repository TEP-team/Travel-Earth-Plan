#loader contenttweaker
#priority 32702

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

var lifeCore as Block = VanillaFactory.createBlock("life_core", <blockmaterial:rock>);
lifeCore.blockLayer = "CUTOUT_MIPPED";
lifeCore.blockHardness = 2;
lifeCore.blockResistance = 4;
lifeCore.blockSoundType = <soundtype:stone>;
lifeCore.entitySpawnable = false;
lifeCore.lightValue = 2;
lifeCore.toolLevel = 0;
lifeCore.register();