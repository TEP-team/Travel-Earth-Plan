/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.Player;
import mods.contenttweaker.Commands;
import mods.ctutils.utils.Math;
import mods.zenutils.cotx.Item;
import scripts.Classes.ContentUtils.ContentUtils;

val CUtils as ContentUtils = ContentUtils("Instanced");

var tp_gem = CUtils.itemBuilder("tp_gem", "epic", -1, 64, true) as Item;
tp_gem.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !player.isFake() && world.dimension == 0) {
        var pdata = player.data;
        if (pdata has "cd_time") {
            var cdtime as int = pdata.memberGet("cd_time").asInt();
            if (cdtime > 0) {
                player.sendRichTextMessage(ITextComponent.fromTranslation("tpgem.tep.tpfail"));
                return "fail";
            }
        }
        var x = Math.random() * 3000 + player.x;
        var z = Math.random() * 3000 + player.z;
        Commands.call("tp @p " + x + " 140 " + z, player, world, false, true);
        Commands.call("playsound minecraft:block.portal.travel ambient @p ~ ~ ~ 0.8 2", player, world, false, true);
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(240, 0));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(240, 0));
        player.sendRichTextMessage(ITextComponent.fromTranslation("tpgem.tep.tpsuccess"));
        player.update(pdata + {"cd_time": 2400});
        stack.shrink(1);
        return "success";
    }
    return "pass";
};
tp_gem.register();

var rainbow_gem = CUtils.itemBuilder("rainbow_gem", "epic", -1, 64, true) as Item;
rainbow_gem.itemRightClick = function(stack, world, player, hand) {
    if (!world.remote && !player.isFake()) {
        var pdata = player.data;
        player.update(pdata + {"rainbowGem": 101});
        player.sendRichTextMessage(ITextComponent.fromTranslation("gem.tep.use"));
        Commands.call("playsound botania:blacklotus ambient @p ~ ~ ~ 1 1", player, world, false, true);
        stack.shrink(1);
        return "success";
    }   
    return "pass";
};
rainbow_gem.register();

var medical_bandage = CUtils.itemBuilder("medical_bandage", "uncommon", -1, 4, false) as Item;
CUtils.durationBuilder(medical_bandage, 30);
medical_bandage.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        var player as Player = entity;
        if (!player.isFake()) {
            var bleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
            if (bleeding) {
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(40, 0));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.msuccess"));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.bsuccess"));
                player.health += 2;
                stack.shrink(1);
            } else {
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mfail"));
            }
        }
    }
    return stack;
};
medical_bandage.register();

var medical_pack = CUtils.itemBuilder("medical_pack", "uncommon", -1, 4, false) as Item;
CUtils.durationBuilder(medical_pack, 60);
medical_pack.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        var player as Player = entity;
        if (!player.isFake()) {
            var health = player.health;
            if (health < 20) {
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mpsuccess"));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.psuccess"));
                player.health += 6;
                stack.shrink(1);
            } else {
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mpfail"));
            }
        }
    }
    return stack;
};
medical_pack.register();

var medical_splint = CUtils.itemBuilder("medical_splint", "uncommon", -1, 4, false) as Item;
CUtils.durationBuilder(medical_splint, 45);
medical_splint.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        var player as Player = entity;
        if (!player.isFake()) {
            var fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.removePotionEffect(<potion:minecraft:slowness>);
                player.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(100, 4));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                stack.shrink(1);
            } else {
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
medical_splint.register();

var medical_metal_splint = CUtils.itemBuilder("medical_metal_splint", "uncommon", -1, 4, false) as Item;
CUtils.durationBuilder(medical_metal_splint, 45);
medical_metal_splint.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        var player as Player = entity;
        if (!player.isFake()) {
            var fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.removePotionEffect(<potion:minecraft:slowness>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.bsuccess"));
                player.health += 2;
                stack.shrink(1);
            } else {
                player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
medical_metal_splint.register();