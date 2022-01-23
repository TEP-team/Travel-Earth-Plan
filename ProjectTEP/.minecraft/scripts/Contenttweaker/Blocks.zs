/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import scripts.Classes.ContentUtils.ContentUtils;

val ContentUtils as ContentUtils = ContentUtils("Instanced");
val light as string[] = ["litherite_light","erodium_light","kyronite_light","pladium_light"];
val machine as string[] = ["structure_block","gc_core","gc_bearing","ft_core","working_box"];

for Light in light {
    ContentUtils.blockBuilder(Light, <blockmaterial:rock>, <soundtype:stone>, 2, 4, 0, false).register();
}

for Machine in machine {
    ContentUtils.blockBuilder(Machine, <blockmaterial:iron>, <soundtype:metal>, 4, 0, 2, false).register();
}