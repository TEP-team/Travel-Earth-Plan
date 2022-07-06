/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker

val machine as string[] = ["structure_block","gc_core","gc_bearing","ft_core","working_box"];

for Machine in machine {
    ContentUtils.blockBuilder(Machine, <blockmaterial:iron>, <soundtype:metal>, 4, 0, 2, false).register();
}