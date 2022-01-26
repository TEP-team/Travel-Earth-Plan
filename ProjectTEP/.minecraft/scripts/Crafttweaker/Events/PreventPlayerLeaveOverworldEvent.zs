/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.EntityTravelToDimensionEvent;

events.onEntityTravelToDimension(function(event as EntityTravelToDimensionEvent) {
    val living = event.entity;
    val world = living.world;
    val dimension = event.dimension;
    if (!world.remote && living instanceof IPlayer) {
        val player as IPlayer = living;
        if (dimension == 1 || dimension == -1) {
            event.cancel();
            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("dimension.tep.ban"));
        }
    }
});