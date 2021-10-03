/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.command.ICommandSender;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.CommandEvent;

events.onCommand(function(event as CommandEvent) {
    var cmd as string = event.command.name;
    var sender as ICommandSender = event.commandSender;

    if (!sender.world.remote && sender instanceof IPlayer) {
        var cmds as string[] = ["gamemode", "give", "gamerule", "sereneseasons"];

        if (cmds has cmd) {
            event.cancel();
            sender.sendRichTextMessage(fromTranslation("prevent.tep.cmd"));
        }
    }
});