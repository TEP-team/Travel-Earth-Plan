/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 51001
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlockState;
import crafttweaker.text.ITextComponent.fromTranslation;
import crafttweaker.event.PlayerInteractBlockEvent;

function levelUper(blockObject as IItemStack, itemObject as IItemStack, state as IBlockState) {
    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
        var player as IPlayer = event.player;
        var world as IWorld = event.world;
        if (!player.isFake()) {
            var blockobj = blockObject.asBlock();
            var block = event.block;
            var item = event.item;
            if (blockobj.definition.id == block.definition.id && blockobj.meta == block.meta && itemObject.matches(item)) {
                if (!world.remote) {
                    var pos = event.position;
                    world.setBlockState(state, pos);
                    item.mutable().shrink(1);
                    player.sendRichTextMessage(fromTranslation("level.tep.up"));
                } else {
                    player.playSound("entity.player.levelup", 1, 1);
                    player.playSound("entity.generic.explode", 0.8, 1.5);
                }
            }
        }
    });
}