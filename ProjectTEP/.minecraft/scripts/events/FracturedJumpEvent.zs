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
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.EntityLivingJumpEvent;

events.onEntityLivingJump(function(event as EntityLivingJumpEvent) {
    var living as IEntityLivingBase = event.entityLivingBase;
    var world as IWorld = living.world;
    var Fractured as bool = living.isPotionActive(<potion:contenttweaker:fractured>);
    if (living instanceof IPlayer && Fractured) {
        var player as IPlayer = living;
        if (world.remote) {
            player.playSound("minecraft:entity.player.hurt", 1, 1);
        } 
        if (!world.remote) {
            player.health -= 2;
            player.sendRichTextMessage(ITextComponent.fromTranslation("fractured.tep.jump"));
        }
    }
});