/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.item.IItemStack;
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Player;
import mods.contenttweaker.ActionResult;
import mods.ctutils.utils.Math;
import mods.zenutils.cotx.Item;
import scripts.Classes.ContentUtils.ContentUtils;

val ContentUtils as ContentUtils = ContentUtils("Instanced");

val item1 = ContentUtils.itemBuilder("tp_gem", "epic", -1, 64, true) as Item;
item1.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !player.isFake() && world.dimension == 0) {
        val x = Math.random() * 3000 + player.x;
        val z = Math.random() * 3000 + player.z;
        val pdata = player.data;
        Commands.call("tp @p " + x + " 140 " + z, player, world, false, true);
        Commands.call("playsound minecraft:block.portal.travel ambient @p ~ ~ ~ 0.8 2", player, world, false, true);
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(240, 0));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(240, 0));
        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("tpgem.tep.tpsuccess"));
        player.setCooldown(stack, 2400);
        stack.shrink(1);
    }
    return "success";
};
item1.register();

val item2 = ContentUtils.itemBuilder("medical_bandage", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(item2, 30);
item2.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val bleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
            if (bleeding) {
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(40, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.msuccess"));
                player.health += 2;
                player.update(player.data + {"shrink" : 1});
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mfail"));
            }
        }
    }
    return stack;
};
item2.register();

val item3 = ContentUtils.itemBuilder("medical_pack", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(item3, 60);
item3.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            var pdata = player.data;
            if (player.health < 20) {
                if (player.isPotionActive(<potion:contenttweaker:fractured>)) {
                    player.removePotionEffect(<potion:contenttweaker:fractured>);
                    player.update(pdata + {"slowness" : 1});
                }
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mpsuccess"));
                player.health += 6;
                player.update(pdata + {"shrink" : 1});
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mpfail"));
            }
        }
    }
    return stack;
};
item3.register();

val item4 = ContentUtils.itemBuilder("medical_splint", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(item4, 45);
item4.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                var pdata = player.data;
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.update(pdata + {"slowness" : 1});
                player.update(pdata + {"shrink" : 1});
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
item4.register();

val item5 = ContentUtils.itemBuilder("medical_metal_splint", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(item5, 45);
item5.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                var pdata = player.data;
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.health += 2;
                player.update(pdata + {"slowness" : 1});
                player.update(pdata + {"shrink" : 1});
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
item5.register();

val item6 = ContentUtils.itemBuilder("ore_detector", "uncommon", -1, 1, false) as Item;
item6.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (!world.remote && !player.isFake() && player.isSneaking) {
        val ores as IItemStack[] = [
            <minecraft:gold_ore>, <minecraft:iron_ore>, <minecraft:coal_ore>,
            <minecraft:lapis_ore>, <minecraft:diamond_ore>, <minecraft:redstone_ore>,
            <minecraft:emerald_ore>, <contenttweaker:sub_block_holder_0:1>,
            <contenttweaker:sub_block_holder_0:3>, <contenttweaker:sub_block_holder_0:4>,
            <immersiveengineering:ore:1>, <immersiveengineering:ore:2>,
            <immersiveengineering:ore:3>, <immersiveengineering:ore:4>,
            <immersiveengineering:ore:5>, <mekanism:oreblock>,
            <mekanism:oreblock:1>, <mekanism:oreblock:2>];

        for y in 0 to 256 {
            val x = pos.x;
            val z = pos.z;
            val block = world.getBlock(x, y, z);
            for ore in ores {
                if (block.definition.id == ore.definition.id && block.meta == ore.asBlock().meta) {
                    player.sendRichTextMessage(ITextComponent.fromTranslation("ore.tep.find"));
                }
            } 
        }
    }
    return ActionResult.success();
};
item6.register();