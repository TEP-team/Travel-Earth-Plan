/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var beaBlock as Block = VanillaFactory.createBlock("beacon_block",<blockmaterial:iron>);
beaBlock.blockHardness = 6;
beaBlock.blockResistance = 10;
beaBlock.entitySpawnable = false;
beaBlock.witherProof = false;
beaBlock.register();

val etlight as string[] = ["litherite_light","erodium_light","kyronite_light","pladium_light"];
for Etlight in etlight {
    val light = VanillaFactory.createBlock(Etlight,<blockmaterial:rock>);
    light.blockHardness = 2;
    light.blockSoundType = <soundtype:stone>;
    light.lightValue = 4;
    light.entitySpawnable = false;
    light.toolLevel = 0;
    light.register();
}

val machinery_blocks as string[] = ["structure_block","gc_core","gc_bearing","ft_core"];
for Machinery_Blocks in machinery_blocks {
    val machine = VanillaFactory.createBlock(Machinery_Blocks,<blockmaterial:iron>); 
    machine.lightValue = 0;
    machine.blockHardness = 4;
    machine.toolLevel = 2;
    machine.register();
}