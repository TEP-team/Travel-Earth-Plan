/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerInteractBlockEvent;

function getExe(isCore as bool, condition as bool) as IItemStack {
    if (isCore) {
        return condition ? <contenttweaker:ft_core> : <contenttweaker:gc_core>;
    } else {
        return condition ? <contenttweaker:ft_exe> : <contenttweaker:gc_exe>;
    }
}

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    val player = event.player;
    if (!player.world.remote && !player.isFake()) {   
        val item = event.item;
        if (<contenttweaker:exe>.matches(item)) {
            val block = event.block; 
            if (getExe(true, true).definition.id == block.definition.id) {
                player.give(getExe(false, true));
            } else if (getExe(true, false).definition.id == block.definition.id) {
                player.give(getExe(false, false));
            }
            item.mutable().shrink(1);
            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("exe.tep.get"));
        }
    }
});