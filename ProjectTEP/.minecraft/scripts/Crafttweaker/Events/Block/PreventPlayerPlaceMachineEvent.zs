/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.text.ITextComponent;
import crafttweaker.event.BlockPlaceEvent;

events.onBlockPlace(function(event as BlockPlaceEvent) {
    val player = event.player;
    val world = event.world;
    if (!world.remote && player.dimension == 144) {
        val id = event.block.definition.id;
        if (id == <compactmachines3:machine>.asBlock().definition.id) {
            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("place.tep.prevent"));
            event.cancel();
        }
    }
});