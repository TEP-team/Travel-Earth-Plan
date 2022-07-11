/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#norun
#loader crafttweaker reloadableevents
import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    val player = event.player;
    if (!player.world.remote && !player.isFake()) {
        val commands as string[] = ["naturalRegeneration false", "keepInventory true", "maxEntityCramming 16", "mobGriefing false"];
        for command in commands {
            server.commandManager.executeCommandSilent(server, "gamerule " ~ command);
        }
    }
});