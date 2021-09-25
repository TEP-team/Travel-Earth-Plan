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
import crafttweaker.command.ICommand;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.CommandEvent;

events.onCommand(function(event as CommandEvent) {
    var sender as ICommandSender = event.commandSender;
    var cmd = event.command.name;
    var parameter = event.parameters;
    if (!sender.world.remote) {
        var cmds as string[] = ["gamemode","give","gamerule","sereneseasons"];
        for i, Cmds in cmds {
            if (cmd == Cmds) {
                event.cancel();
                sender.sendRichTextMessage(fromTranslation("prevent.tep.cmd"));
            }
        }
    }
});