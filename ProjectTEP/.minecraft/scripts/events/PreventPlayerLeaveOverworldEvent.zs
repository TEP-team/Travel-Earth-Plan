/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.EntityTravelToDimensionEvent;

events.onEntityTravelToDimension(function(event as EntityTravelToDimensionEvent) {
    var living as IEntity = event.entity;
    var world as IWorld = living.world;
    var dimension = event.dimension;
    if (!world.remote && living instanceof IPlayer) {
        var player as IPlayer = living;
        if (dimension == 1 || dimension == -1) {
            event.cancel();
            player.sendRichTextMessage(fromTranslation("dimension.tep.ban"));
        }
    }
});