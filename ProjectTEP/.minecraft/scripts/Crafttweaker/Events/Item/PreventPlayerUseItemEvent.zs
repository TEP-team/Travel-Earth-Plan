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
import crafttweaker.event.PlayerRightClickItemEvent;

static items as IItemStack[] = [<botania:manaresource:15>, <minecraft:writable_book>];

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    for item in items {
        if (!event.world.remote && item.matches(event.item)) {
            event.player.sendRichTextStatusMessage(ITextComponent.fromTranslation("item.tep.prevent"));
            event.cancel();
        }
    }
});