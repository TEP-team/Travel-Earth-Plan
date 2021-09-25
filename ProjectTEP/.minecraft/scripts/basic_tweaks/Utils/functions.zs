/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 62000
import crafttweaker.item.IItemStack;
import mods.dropt.Dropt;

//get localized languages
function langGet(key as string) as string {
    return game.localize(key);
}

//drop setter
function droper(dropName as string, objBlock as IItemStack, dropItem as IItemStack) {
    Dropt.list(dropName)
        .add(Dropt.rule()
            .matchDrops([objBlock])
            .addDrop(Dropt.drop()
            .items([dropItem])
        )
    );
}