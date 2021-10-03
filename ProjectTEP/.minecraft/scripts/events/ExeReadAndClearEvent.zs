/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 57000
#loader crafttweaker reloadableevents
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.event.PlayerInteractBlockEvent;

//clear
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var player as IPlayer = event.player;
    var hand as string = event.hand;

    if (!player.world.remote && !player.isFake() && player.isSneaking) {
        var item as IItemStack = event.item;

        if (<contenttweaker:ft_exe>.matches(item) || <contenttweaker:gc_exe>.matches(item)) {
            item.mutable().shrink(1);
            player.give(<contenttweaker:exe>);
            player.sendRichTextMessage(fromTranslation("exe.tep.clear"));
        }
    }
});

//read
//function
function exeGetter(blockObject as IItemStack, itemObject as IItemStack, exeCard as IItemStack) {
    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
        var player as IPlayer = event.player;
        
        if (!player.world.remote && !player.isFake()) {
            if (blockObject.asBlock().definition.id == event.block.definition.id) {
                var item as IItemStack = event.item;

                if (itemObject.matches(item)) {
                    player.give(exeCard);
                    item.mutable().shrink(1);
                    player.sendRichTextMessage(fromTranslation("exe.tep.get"));
                }
            }
        }
    });
}

//reator
exeGetter(<contenttweaker:ft_core>,<contenttweaker:exe>,<contenttweaker:ft_exe>);
exeGetter(<contenttweaker:ft_core>,<contenttweaker:gc_exe>,<contenttweaker:ft_exe>);

//gas_centrifuger
exeGetter(<contenttweaker:gc_core>,<contenttweaker:exe>,<contenttweaker:gc_exe>);
exeGetter(<contenttweaker:gc_core>,<contenttweaker:ft_exe>,<contenttweaker:gc_exe>);