/*
    Author: Dark2932
    Flie: Chest.zs
*/

#priority 999998
#loader crafttweaker reloadableevents
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.container.IContainer;
import crafttweaker.event.PlayerOpenContainerEvent;
import crafttweaker.event.PlayerCloseContainerEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import mods.zenutils.StringList;

zenClass Chest {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    function getBlockID(block as IBlock) as string {
        return BlockHelper.getBlockID(block, false);
    }

    function getItemID(item as IItemStack) as string {
        return ItemHelper.getItemID(item, true);
    }

    function isDye(player as IPlayer) as bool {
        return ItemHelper.matchCurrent(player);
    }

    function isEventDye(item as IItemStack) as bool {
        return <minecraft:dye:0>.matches(item);
    }

    function isCreative(player as IPlayer) as bool {
        return PlayerHelper.isCreative(player);
    }

    function isChest(container as IContainer) as bool {
        return EventHelper.getContainerCondition(container, "chest");
    }

    function ignore(player as IPlayer) as bool {
        return EventHelper.ignoreServer(player);
    }

    function createBracket(item as string) as string {
        return "<" ~ item ~ ">";
    }

    val slotInput as int[][int] = {
        1 : [0, 1, 2, 9, 10, 11, 18, 19, 20],
        2 : [4, 5, 6, 13, 14, 15, 22, 23, 24]
    };

    val slotOutput as int[int] = {
        1 : 12,
        2 : 16
    };

    val id as string;
    var stackInput as IItemStack[][] = [];
    var stackOutput as IItemStack[] = [];

    function call() {

        //save
        events.onPlayerCloseContainer(function(event as PlayerCloseContainerEvent) {
            val player = event.player;
            if (!this.ignore(player) && this.isCreative(player)) {
                val container = event.container;
                if (this.isChest(container) && this.isDye(player)) {
                    var input as IItemStack[][] = [];
                    var output as IItemStack[] = [];

                    //input
                    for key in slotInput {
                        var items as IItemStack[] = [];
                        for slot in slotInput[key] {
                            val item = container.getStack(slot);
                            if (!isNull(item)) {
                                items += item;
                            } else {
                                items += null;
                            }
                        }
                        input += items;
                    }
                    this.stackInput = input;

                    //output
                    for key in slotOutput {
                        val item = container.getStack(slotOutput[key]);
                        if (!isNull(item)) {
                            output += item;
                        } else {
                            output += null;
                        }
                    }
                    this.stackOutput = output;

                    player.sendMessage("§a§l箱子内物品已保存完毕, 请使用墨囊 §eShift+右键 §a§l导出配方!");
                }
            }
        });

        //export
        events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
            val player = event.player;
            val block = event.block;
            val data = block.data;
            val item = event.item;
            if (!this.ignore(player) && this.isCreative(player) && this.isEventDye(item) && player.isSneaking && this.getBlockID(block) == "minecraft:chest") {
                val output = this.stackOutput;
                val input = this.stackInput;
                var m as int = 0;

                for i, out in output {
                    
                    if ((!(input[i] has null) && isNull(out)) || ((input[i] has null) && !isNull(out))) {
                        player.sendMessage("§l导出失败: §c摆放格式不正确!");
                        Logger.error("An error happened when you exported the recipe(s)!");
                        break;
                    }
                    
                    else if (((input[i] has null) && isNull(out))) {
                        return;
                    }
                    
                    else {
                        val inputs = toString(input[i][0]) ~ ", " ~ toString(input[i][1]) ~ ", " ~ toString(input[i][2]) ~ ", " ~ toString(input[i][3]) ~ ", " ~ toString(input[i][4]) ~ ", " ~ toString(input[i][5]) ~ ", " ~ toString(input[i][6]) ~ ", " ~ toString(input[i][7]) ~ ", " ~ toString(input[i][8]);
                        print("recipes.addShapeless(" ~ toString(out) ~ ", [" ~ inputs ~ "]);");
                        m = 1;
                    }

                }

                if (m == 1) {
                    player.sendMessage("§l导出成功: §a请在 §e'crafttweaker.log' §a§l最底部查看代码!");
                }
            }
        });
    }

}

Chest("Instanced").call();

/*
val Items = data.memberGet("Items").asList();
if (!isNull(Items)) {
    for items in Items {
        val slot = items.Slot.asByte();
        for key in input {
            for k in input[key] {
                if ((slot == k)) {

                    //ExportHelper.printer(getItemID());
                    print(createBracket(items.id));

                }
            }
        }
    }
}
*/

/*
events.onPlayerOpenContainer(function(event as PlayerOpenContainerEvent) {
    val player = event.player;
    if (!ignore(player) && isCreative(player)) {
        val container = event.container;
        if (isChest(container) && isDye(player)) {
            player.sendMessage("§6§l====================");
            player.sendMessage("§c§l进入编辑模式!");
        }
    }
});

events.onPlayerCloseContainer(function(event as PlayerCloseContainerEvent) {
    val player = event.player;
    if (!ignore(player) && isCreative(player)) {
        val container = event.container;
        if (isChest(container) && isDye(player)) {
            if (!isNull(container.getStack(26))) {
                player.sendMessage("§l是否导出: §e是");
                player.sendMessage("§a§l请拿着墨囊 §dShift+右键 §a§l箱子以导出配方!");
            } else {
                player.sendMessage("§l是否导出: §e否");
            }

        }
    }
});
*/