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

val item1 = ContentUtils.itemBuilder("tp_gem", "epic", -1, 64, true) as Item;
item1.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !player.isFake() && world.dimension == 0) {
        val x = Math.random() * 3000 + player.x;
        val z = Math.random() * 3000 + player.z;
        Commands.call("tp @p " + x + " 140 " + z, player, world, false, true);
        Commands.call("playsound minecraft:block.portal.travel ambient @p ~ ~ ~ 0.8 2", player, world, false, true);
        player.sendRichTextStatusMessage(ITextComponent.fromTranslation("tpgem.tep.tpsuccess"));
        player.update({"teleport" : 1});
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
            val isBleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
            if (isBleeding) {
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(40, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.msuccess"));
                player.health += 2;
                player.update({"shrink" : 1});
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
            val isBleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
            val isFractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (player.health < 20 || isBleeding || isFractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mpsuccess"));
                player.health += 6;
                player.update({"shrink" : 1, "slowness" : 1});
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
            val isFractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (isFractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.update({"shrink" : 1, "slowness" : 1});
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
            val isFractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (isFractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.health += 2;
                player.update({"shrink" : 1, "slowness" : 1});
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
item5.register();