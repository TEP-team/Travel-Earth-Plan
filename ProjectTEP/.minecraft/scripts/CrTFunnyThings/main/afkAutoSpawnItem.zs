/*
    Author: Dark2932
    Flie: AFK_Place.zs
*/

#priority 10000
#loader crafttweaker reloadableevents
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.WorldTickEvent;

zenClass AFKAutoSpawnItem {

    zenConstructor(arg as string) {
        this.id = arg;
    }

    function getBlockID(block as IBlock) as string {
        return BlockUtils.getBlockID(block, false);
    }

    function getItemID(item as IItemStack) as string {
        return ItemUtils.getItemID(item, true);
    }

    function makePlace(Block as IBlock) {
        events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
            val player = event.player;
            val world = event.world;
            val item = event.item;
            val block = event.block;
            val pos = event.position;
            val ID1 = this.getBlockID(block);
            if (!world.remote && player.creative && player.isSneaking && ID1 == this.getBlockID(Block) && !isNull(item)) {

                //save
                if (!(<minecraft:flint>.matches(item))) {
                    val ID2 = this.getItemID(item);
                    player.sendMessage("§6=================================================");
                    player.sendMessage("§a§l选中物品: §e" ~ ID2);
                    player.sendMessage("§b§l资源刷新: §c关闭");
                    player.sendMessage("§c§l按住 §eShift §c§l并使用 §e燧石 §c§l以开启资源刷新!");
                    if (!(this.position has pos)) {
                        this.position += pos;
                        this.hasItem += 1;
                        this.switch += 0;
                        this.tick += 0;
                        this.worldItem += item;
                        this.worldBlock += block;
                    } else {
                        for i, Pos in this.position {
                            this.position[i] = pos;
                            this.hasItem[i] = 1;
                            this.switch[i] = 0;
                            this.tick[i] = 0;
                            this.worldItem[i] = item;
                            this.worldBlock[i] = block;
                        }  
                    }
                }

                //start and close
                else {
                    if (!isNull(this.switch) && !isNull(this.hasItem)) {
                        for i, Pos in this.position {
                            if (Pos.x == pos.x && Pos.y == pos.y && Pos.z == pos.z && this.hasItem[i] == 1) {

                                //start
                                if (this.switch[i] == 0) {
                                    player.sendMessage("§b§l资源刷新: §a开启");
                                    player.sendMessage("§d§l刷新频率: §e" + this.speed + "s/个");
                                    this.switch[i] = 1;
                                }

                                //close
                                else if (this.switch[i] == 1) {
                                    player.sendMessage("§b§l资源刷新: §c关闭");
                                    this.switch[i] = 0;
                                }
                            }
                        }
                    }
                }
            }
        });
    }

    function makeProduct(Block as IBlock, second as double) {
        this.makePlace(Block);
        this.speed = second;
        events.onWorldTick(function(event as WorldTickEvent) {
            val world = event.world;
            if (!world.remote && event.phase == "START") {
                if (!isNull(this.position) && !isNull(this.tick) && !isNull(this.worldBlock) && !isNull(this.worldItem)) {
                    for i, item in this.worldItem {
                        this.tick[i] = this.tick[i] + 1;
                        if ((this.tick[i] % (second * 20) == 0) && (this.switch[i] == 1)) {
                            val pos = this.position[i];
                            val x = pos.x;
                            val y = pos.y;
                            val z = pos.z;
                            val block = world.getBlock(pos);
                            val player = world.getClosestPlayer(x, y, z, 1.5, false);
                            if (this.getBlockID(this.worldBlock[i]) == this.getBlockID(Block) && !isNull(player)) {
                                world.spawnEntity(item.withAmount(1).createEntityItem(world, x, y + 1, z));
                            }
                            this.tick[i] = 0;
                        }
                    }
                }
            }
        });
    }
    
    val id as string;
    val speed as double;
    var hasItem as int[] = [];
    var switch as int[] = [];
    var tick as int[] = [];
    var position as IBlockPos[] = [];
    var worldBlock as IBlock[] = [];
    var worldItem as IItemStack[] = [];

}

global AFKAutoSpawnItem as AFKAutoSpawnItem = AFKAutoSpawnItem("Instanced");