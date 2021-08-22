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
import crafttweaker.data.IData;
import crafttweaker.event.PlayerTickEvent;

events.onPlayerTick(function(event as PlayerTickEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = player.world;
    var phase as string = event.phase;
    if (!world.remote && phase == "START") {
        var pdata as IData = player.data;
        if (pdata has "cd_time") {
            var cdtime = pdata.memberGet("cd_time") as int;
            if (cdtime > 0) {
                player.update(pdata + {"cd_time": cdtime - 1});
            }
        }
    }
});