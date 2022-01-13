/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.SoundType;

function blockBuilder(name as string, blockmaterial as BlockMaterial, sound as SoundType, hardness as int, lightvalue as int, toollevel as int, entityspawnable as bool) {
    var block as Block = VanillaFactory.createBlock(name, blockmaterial);
    block.blockSoundType = sound;
    block.entitySpawnable = entityspawnable;
    block.blockHardness = hardness;
    block.lightValue = lightvalue;
    block.toolLevel = toollevel;
    block.register();    
}

val etlight as string[] = ["litherite_light","erodium_light","kyronite_light","pladium_light"];
for Etlight in etlight {
    blockBuilder(Etlight, <blockmaterial:rock>, <soundtype:stone>, 2, 4, 0, false);
}

val machinery_blocks as string[] = ["structure_block","gc_core","gc_bearing","ft_core","working_box"];
for Machinery_Blocks in machinery_blocks {
    blockBuilder(Machinery_Blocks, <blockmaterial:iron>, <soundtype:metal>, 4, 0, 2, false);
}