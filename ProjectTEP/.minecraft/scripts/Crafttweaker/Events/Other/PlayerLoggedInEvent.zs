/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.text.ITextComponent;
import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    val player = event.player;
    if (!player.world.remote && !player.isFake()) {
        /*
        val cmds as string[] = ["gamerule naturalRegeneration false", "gamerule keepInventory true", "gamerule maxEntityCramming 16", "gamerule mobGriefing false"];
        for cmd in cmds {
            server.commandManager.executeCommandSilent(server, cmd);
        }
        */
        for i in 1 to 5 {
            player.sendRichTextMessage(ITextComponent.fromTranslation("logged.tep.send" + i));
        }
    }
});