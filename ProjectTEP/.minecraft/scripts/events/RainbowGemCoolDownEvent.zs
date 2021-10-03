/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.data.IData;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.PlayerTickEvent;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    var pdata as IData = player.data;
    
    if (!world.remote && !player.isFake() && event.phase == "START") {
        if (pdata has "rainbowGem") {
            var rbg as int = pdata.memberGet("rainbowGem").asInt();

            if (rbg == 1) {
                player.give(<contenttweaker:world_core>);
                player.sendRichTextMessage(fromTranslation("gem.tep.give"));
                player.update({"rainbowGem": rbg - 1});
            } else if (rbg > 0) {
                player.update({"rainbowGem": rbg - 1});
            }
        }
    }
});