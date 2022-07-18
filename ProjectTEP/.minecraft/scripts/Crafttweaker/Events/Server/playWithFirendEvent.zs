/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRightClickItemEvent;

events.onCommand(function(event as CommandEvent) {
    val senderYaw = event.commandSender;
    val world = senderYaw.world;
    val command = event.command;
    val parameters = event.parameters;
    if (!world.remote && senderYaw instanceof IPlayer) {
        val sender as IPlayer = senderYaw;
        var dataSender = sender.data;
        if (!sender.isFake()) {
            if (command.name == "togetherforever") {
                if (parameters has "invite" && parameters.length == 2) {
                    val receiver = world.getPlayerByName(parameters[1]);
                    if (!isNull(receiver)) {
                        receiver.update(receiver.data + {"invite" : true});
                    }
                }
                if (parameters has "accept" && parameters.length == 1 && dataSender has "invite") {
                    val invite = dataSender.memberGet("invite").asBool();
                    if (invite) {
                        sender.give(<minecraft:feather>.withTag({display: {Lore: ["§2右键后即可传送至你的队长！"], Name: "§d组队羽毛"}, "senderName" : sender.name}));
                        sender.update(dataSender + {"invite" : false});
                    }
                }
            }
        }
    }
});

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    val world = event.world;
    val player = event.player;
    val item = event.item;
    val tag = item.tag;
    if (!world.remote && !player.isFake() && <minecraft:feather>.matches(item)) {
        if (!isNull(tag) && tag has "senderName") {
            val sender = world.getPlayerByName(tag.memberGet("senderName").asString());
            server.commandManager.executeCommandSilent(server, "tp " ~ player.name ~ " sender");
            player.setCooldown(item, 12096000);
            item.mutable().shrink(1);
        }
    }
});