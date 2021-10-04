/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;

    if (!player.world.remote && !player.isFake()) {
        //commands
        /*var cmds as string[] = ["gamerule naturalRegeneration false", "gamerule keepInventory true", "gamerule maxEntityCramming 16", "gamerule mobGriefing false"];
        
        for cmd in cmds {
            server.commandManager.executeCommand(server, cmd);
        }*/

        //messages
        for i in 1 to 5 {
            player.sendRichTextMessage(fromTranslation("logged.tep.send" + i));
        }
    }
});