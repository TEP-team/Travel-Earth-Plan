/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70000
#loader crafttweaker reloadableevents
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent;
import crafttweaker.util.Position3f;
import crafttweaker.world.IFacing;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import mods.modularcontroller.MachineRecipeStartEvent;
import mods.modularcontroller.MachineRecipeCompleteEvent;
import mods.randomtweaker.botania.IBotaniaFXHelper;
import mods.zenutils.DelayManager;

function getPosition(x as float, y as float, z as float) as Position3f {
    return Position3f.create(x, y, z);
}

function setProperXYZ(original as float) as float {
    return original * 0.02f;
}

function setProperWispFX(x as double, y as double, z as double, r as float, g as float, b as float, size as float, motionX as float, motionY as float, motionZ as float, maxAgeMul as float) {
    IBotaniaFXHelper.setWispFXDepthTest(false);
    IBotaniaFXHelper.wispFX(x + 0.5, y, z + 0.5, r, g, b, size, setProperXYZ(motionX), setProperXYZ(motionY), setProperXYZ(motionZ), maxAgeMul);
}

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {

    //basic
    val player = event.player;
    val world = event.world;
    val item = event.item;
    val pos = event.position;
    val block = event.block;
    val def = block.definition;

    if (!player.isFake() && player.isSneaking) {

        //controller
        if (def.id == "modularcontroller:heaven_altar_controller" && <contenttweaker:rainbow_gem>.matches(item)) {
            if (world.getBlockState(pos).matches(<blockstate:modularcontroller:heaven_altar_controller:facing=south>)) {

                //center
                val x = pos.x;
                val y = pos.y + 1.0;
                val z = pos.z;

                //the nine palaces
                val first = getPosition(x, y, z - 16); //坎
                val second = getPosition(x - 13, y, z + 13); //坤
                val third = getPosition(x + 16, y, z); //震
                val fourth = getPosition(x + 13, y, z + 13); //巽
                val fifth = getPosition(x, y, z); //中
                val sixth = getPosition(x - 13, y, z - 13); //乾
                val seventh = getPosition(x - 16, y, z); //兑
                val eighth = getPosition(x + 13, y, z - 13); //艮
                val ninth = getPosition(x, y, z + 16); //离
                val allPos as Position3f[] = [first, second, third, fourth, fifth, sixth, seventh, eighth, ninth];

                //activate
                if (!world.remote) {
                    item.mutable().shrink(1);
                    player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.1"));
                    DelayManager.addDelayWork(function() {
                        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.2"));
                        DelayManager.addDelayWork(function() {
                            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.3"));
                            DelayManager.addDelayWork(function() {                              
                                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.4"));
                                val name as string[] = [x ~ ".0, " ~ y ~ ".0, " ~ z ~ ".0"];
                                var data = world.getCustomWorldData();
                                world.updateCustomWorldData(data + {name[0] : 0});
                            }, 100);
                        }, 100);
                    }, 100);
                } else {
                    player.playSound("botania:goldenlaurel", 1.5, 1);
                    for i in 1 to 8 {
                        for all in allPos {
                            setProperWispFX(x, y + 0.25, z, 0.0f, 1.0f, 40.0f, 2.0f, all.x - x, all.y - y + 2.0, all.z - z, 10.0f);
                        }
                    }
                }
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.fail"));
            }
        }

        //pylons
        if (def.id == "botania:pylon" && world.getBlockState(pos).matches(<blockstate:botania:pylon:variant=mana>)) {

            //pylon
            val x = pos.x;
            val y = pos.y - 1.0;
            val z = pos.z;

            //core and pylon
            val allPylon as Position3f[IItemStack] = {
                <contenttweaker:ground_core> : getPosition(x, y, z + 16), //坎
                <contenttweaker:mana_core> : getPosition(x + 13, y, z - 13), //坤
                <contenttweaker:shiny_core> : getPosition(x - 16, y, z), //震
                <contenttweaker:smart_core> : getPosition(x - 13, y, z - 13), //巽
                <contenttweaker:world_core> : getPosition(x, y, z), //中
                <contenttweaker:sky_core> : getPosition(x + 13, y, z + 13), //乾
                <contenttweaker:life_core> : getPosition(x + 16, y, z), //兑
                <contenttweaker:seasons_core> : getPosition(x - 13, y, z + 13), //艮
                <contenttweaker:machinery_core> : getPosition(x, y, z - 16) //离
            };

            //order
            val allOrder as IItemStack[] = [
                <contenttweaker:ground_core>, //坎
                <contenttweaker:mana_core>, //坤
                <contenttweaker:shiny_core>, //震
                <contenttweaker:smart_core>, //巽
                <contenttweaker:world_core>, //中
                <contenttweaker:sky_core>, //乾
                <contenttweaker:life_core>, //兑
                <contenttweaker:seasons_core>, //艮
                <contenttweaker:machinery_core> //离
            ];

            //activate
            for core, position in allPylon {
                if (world.getBlock(position).definition.id == "modularcontroller:heaven_altar_controller" && core.matches(item)) {
                    if (!world.remote) {
                        var data = world.getCustomWorldData();
                        val name as string[] = [position.x ~ ", " ~ (position.y + 1) ~ ", " ~ position.z];
                        if (data has name[0]) {
                            var num = data.memberGet(name[0]).asInt();
                            for i, core in allOrder {
                                if (core.matches(item) && num == i) {
                                    world.updateCustomWorldData(data + {name[0] : num + 1});
                                    item.mutable().shrink(1);
                                    player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.sentence." ~ (i + 1)));
                                }
                            }
                        }
                    } else {
                        player.playSound("botania:goldenlaurel", 1.5, 1);
                        for i in 1 to 8 {
                            setProperWispFX(x, y + 2.0, z, 0.0f, 1.0f, 40.0f, 2.0f, position.x - x, position.y - y + 5.0, position.z - z, 8.0f);
                        }
                        
                    }
                }
            }

            //ninth
            var data = world.getCustomWorldData();
            val position = getPosition(x, y, z - 16);
            val name as string[] = [position.x ~ ", " ~ (position.y + 1) ~ ", " ~ position.z];
            if (data has name[0]) {
                var num = data.memberGet(name[0]).asInt();
                if (<contenttweaker:machinery_core>.matches(item) && num == 9) {
                    DelayManager.addDelayWork(function() {
                        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.5"));
                        DelayManager.addDelayWork(function() {
                            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.6"));
                            DelayManager.addDelayWork(function() {
                                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.7"));
                                DelayManager.addDelayWork(function() {
                                    player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.8"));
                                    world.updateCustomWorldData(data + {name[0] : num + 1});
                                }, 100);
                            }, 100);
                        }, 100);
                    }, 100);
                }
            }
        }

        //fifth
        if (def.id == "botania:corporeaindex" && <contenttweaker:world_core>.matches(item)) {

            //center
            val x = pos.x;
            val y = pos.y - 3.0;
            val z = pos.z;
            val position = getPosition(x, y, z);

            //activate
            if (world.getBlock(position).definition.id == "modularcontroller:heaven_altar_controller") {
                if (!world.remote) {
                    var data = world.getCustomWorldData();
                    val name as string[] = [x ~ ".0, " ~ (y + 1) ~ ".0, " ~ z ~ ".0"];
                    if (data has name[0]) {
                        var num = data.memberGet(name[0]).asInt();
                        if (num == 4) {
                            world.updateCustomWorldData(data + {name[0] : num + 1});
                            item.mutable().shrink(1);
                            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.sentence.5"));
                        }
                    }
                } else {
                    player.playSound("botania:gaiatrap", 1.5, 1);
                    for i in 1 to 8 {
                        setProperWispFX(x, y + 4.0, z, 10.0f, 0.0f, 40.0f, 2.0f, 0.0f, 4.0f, 0.0f, 3.0f);
                    }
                }
            }
        }

        //corporeaindex
        if (def.id == "botania:corporeaindex" && player.hasItemInSlot(IEntityEquipmentSlot.mainHand()) && !(player.hasItemInSlot(IEntityEquipmentSlot.offhand)) && !(<contenttweaker:world_core>.matches(item))) {
            val x = pos.x;
            val y = pos.y;
            val z = pos.z;
            var data = world.getCustomWorldData();
            val position = getPosition(x, y - 3, z);
            val name as string[] = [position.x ~ ", " ~ (position.y + 1) ~ ", " ~ position.z];
            if (!world.remote) {
                if (data has name[0]) {
                    var num = data.memberGet(name[0]).asInt();
                    if (num == 10) {
                        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.9"));
                        world.updateCustomWorldData(data + {name[0] : num + 1});
                        DelayManager.addDelayWork(function() {
                            world.spawnEntity(world.createLightningBolt(x, y + 1, z, false));
                            DelayManager.addDelayWork(function() {
                                world.spawnEntity(<contenttweaker:heaven_core>.createEntityItem(world, x, y + 10, z - 2));
                            }, 10);
                        }, 100);
                    }
                }
            } else {
                player.playSound("botania:airrod", 1.5, 1);
                DelayManager.addDelayWork(function() {
                    world.spawnEntity(world.createLightningBolt(x, y + 1, z, false));
                }, 100);
            }
        }
    }
});

events.onPlayerPickupItem(function(event as PlayerPickupItemEvent) {
    val item = event.item.item;
    val player = event.player;
    val world = player.world;
    if (!world.remote && <contenttweaker:heaven_core>.matches(item)) {
        DelayManager.addDelayWork(function() {
            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.10"));
            DelayManager.addDelayWork(function() {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("altar.tep.success.11"));
            }, 100);
        }, 100);
    }
});

events.onMachineRecipeStart(function(event as MachineRecipeStartEvent) {
    val world = event.world;
    val id = event.recipeID;
    val facing = event.facing;
    if (!world.remote && id == "modularmachinery:heaven_altar_core") {
        if (facing != IFacing.south()) {
            event.setFailed("The machine has stopped working.");
        }
    }
});

events.onMachineRecipeComplete(function(event as MachineRecipeCompleteEvent) {
    val world = event.world;
    val id = event.recipeID;
    val facing = event.facing;
    val pos = event.pos;
    val x = pos.x;
    val y = pos.y + 3;
    val z = pos.z;
    if (!world.remote && id == "modularmachinery:heaven_altar_core") {
        if (facing == IFacing.south()) {
            val head as Position3f[IItemStack] = {
                <teputils:head_dark> : Position3f.create(x - 2, y, z + 2),
                <teputils:head_furong> : Position3f.create(x + 2, y, z + 2),
                <teputils:head_yw> : Position3f.create(x - 2, y, z - 2),
                <teputils:head_sky> : Position3f.create(x + 2, y, z - 2)
            };
            for item, position in head {
                world.spawnEntity(item.createEntityItem(world, position));
            }
        }
    }
});