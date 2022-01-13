/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 80000
import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

//function
function droper(dropName as string, objBlock as IItemStack, dropItem as IItemStack) {
    Dropt.list(dropName)
        .add(Dropt.rule()
            .matchDrops([objBlock])
            .addDrop(Dropt.drop()
            .items([dropItem])
        )
    );
}

//0
var blocks0Int as int[] = [12,5,6,4,3,2];
var dirtydust0Int as int[] = [76,178,195,110,161,144];
for i, Dirtydust0Int in dirtydust0Int {
    val drop0 = materials.makeStack(Dirtydust0Int);
    val blocks0 = blocks0def.makeStack(blocks0Int[i]);
    droper("ore0_" ~ i, blocks0, drop0);
} // - 1 -

//1
var blocks1Int as int[] = [0,3];
var dirtydust1Int as int[] = [212,127];
for i, Dirtydust1Int in dirtydust1Int {
    val drop1 = materials.makeStack(Dirtydust1Int);
    val blocks1 = blocks1def.makeStack(blocks1Int[i]);
    droper("ore1_" ~ i, blocks1, drop1);
} // - 2 -

//vanilla and mek
for i, Dirtydusts in dirtydusts {
    droper("ore_normal_" ~ i, ore[i], Dirtydusts);
}