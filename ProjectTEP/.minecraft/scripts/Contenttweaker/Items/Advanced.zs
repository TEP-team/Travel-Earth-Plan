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

val ContentUtils as ContentUtils = ContentUtils("Instanced");

val tp_gem = ContentUtils.itemBuilder("tp_gem", "epic", -1, 64, true) as Item;
tp_gem.itemRightClick = function(stack, world, player, hand) {
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
tp_gem.register();

val medical_bandage = ContentUtils.itemBuilder("medical_bandage", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(medical_bandage, 30);
medical_bandage.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val bleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
            if (bleeding) {
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(40, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.msuccess"));
                player.health += 2;
                stack.shrink(1);
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mfail"));
            }
        }
    }
    return stack;
};
medical_bandage.register();

val medical_pack = ContentUtils.itemBuilder("medical_pack", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(medical_pack, 60);
medical_pack.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            if (player.health < 20) {
                if (player.isPotionActive(<potion:contenttweaker:fractured>)) {
                    player.removePotionEffect(<potion:contenttweaker:fractured>);
                    player.update(player.data + {"slowness" : 1});
                }
                player.removePotionEffect(<potion:contenttweaker:bleeding>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mpsuccess"));
                player.health += 6;
                stack.shrink(1);
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.mpfail"));
            }
        }
    }
    return stack;
};
medical_pack.register();

val medical_splint = ContentUtils.itemBuilder("medical_splint", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(medical_splint, 45);
medical_splint.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.update(player.data + {"slowness" : 1});
                stack.shrink(1);
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
medical_splint.register();

val medical_metal_splint = ContentUtils.itemBuilder("medical_metal_splint", "uncommon", -1, 4, false) as Item;
ContentUtils.durationBuilder(medical_metal_splint, 45);
medical_metal_splint.onItemUseFinish = function(stack, world, entity) {
    if (!world.remote && entity instanceof Player) {
        val player as Player = entity;
        if (!player.isFake()) {
            val fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
            if (fractured) {
                player.removePotionEffect(<potion:contenttweaker:fractured>);
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 0));
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
                player.update(player.data + {"slowness" : 1});
                player.health += 2;
                stack.shrink(1);
            } else {
                player.sendRichTextStatusMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            }
        }
    }
    return stack;
};
medical_metal_splint.register();

for exes in ["gc_exe", "ft_exe"] {
    val exe = ContentUtils.itemBuilder(exes, "common", -1, 64, false) as Item;
    exe.itemRightClick = function(stack, world, player, hand) {
        if (!world.remote && !player.isFake() && player.isSneaking) {
            stack.shrink(1);
            player.give(<contenttweaker:exe>);
            player.sendRichTextStatusMessage(ITextComponent.fromTranslation("exe.tep.clear"));
        }
    };
    exe.register();
}