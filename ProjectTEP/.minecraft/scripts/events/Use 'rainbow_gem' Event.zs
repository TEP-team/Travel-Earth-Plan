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
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerTickEvent;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    var pdata as IData = player.data;
    var phase as string = event.phase;
    if (!world.remote && !player.isFake() && phase == "START") {
        if (pdata has "rainbowGem") {
            var rbg = pdata.memberGet("rainbowGem") as int;
            if (rbg == 1) {
                player.give(itemUtils.getItem("contenttweaker:world_core"));
                player.sendRichTextMessage(ITextComponent.fromTranslation("gem.tep.give"));
                player.update(pdata + {"rainbowGem": rbg - 1});
            }
            else if (rbg > 0) {
                player.update(pdata + {"rainbowGem": rbg - 1});
            }
        }
    }
});