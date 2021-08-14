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

var beaBlock as Block = VanillaFactory.createBlock("beacon_block",<blockmaterial:iron>);
beaBlock.blockHardness = 6;
beaBlock.blockResistance = 10;
beaBlock.entitySpawnable = false;
beaBlock.witherProof = false;
beaBlock.register();

val etlight as string[] = ["litherite_light","erodium_light","kyronite_light","pladium_light","ionite_light"];
for Etlight in etlight {
    val light = VanillaFactory.createBlock(Etlight,<blockmaterial:rock>);
    light.blockHardness = 2;
    light.blockSoundType = <soundtype:stone>;
    light.lightValue = 4;
    light.entitySpawnable = false;
    light.toolLevel = 0;
    light.register();
}