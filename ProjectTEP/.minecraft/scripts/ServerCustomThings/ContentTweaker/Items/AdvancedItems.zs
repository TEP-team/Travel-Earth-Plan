#loader contenttweaker
#priority 32703

import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.text.ITextComponent;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.ctutils.utils.Math;

//tp_gem [PLAYER'S RANDOM TELEPORT]
var tg as Item = VanillaFactory.createItem("tp_gem");
tg.rarity = "epic";
tg.maxStackSize = 1;
tg.glowing = true;
tg.itemRightClick = function(item, world, player, hand) {
    if (!world.remote && world.dimension == 0) {
var pdata = player.data;
    if (pdata has "cd_time") {
var cdtime = pdata.memberGet("cd_time") as int;
    if (cdtime > 0) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("tpgem.tep.tpfail"));
            return "fail";
                }
            }
var tpx = Math.random() * 2000 + player.x - 2000;
var tpz = Math.random() * 2000 + player.z - 2000;
   Commands.call("playsound block.portal.travel block @p ~ ~ ~ 0.15 2", player, world, false, true);
    Commands.call("tp @p " + tpx + " 80 " + tpz, player, world, false, true);
     Commands.call("effect @p resistance 10 10", player, world, false, true);
      Commands.call("effect @p regeneration 10 10", player, world, false, true);
       player.sendRichTextMessage(ITextComponent.fromTranslation("tpgem.tep.tpsuccess"));
        player.update(pdata + {"cd_time": 2400});
         item.shrink(1);
          return "success";
                }
        return "pass";
            };
tg.register();

//pipe_empty [METERIAL AND DRAW BLOOD]
var pe as Item = VanillaFactory.createItem("pipe_empty");
pe.rarity = "uncommon";
pe.maxStackSize = 4;
pe.itemRightClick = function(item, world, player, hand) {
    var health = player.health;
if (!world.remote) {
    if (health > 4) {
        Commands.call("effect @p weakness 10 1", player, world, false, true);
         Commands.call("effect @p slowness 5 1", player, world, false, true);
          Commands.call("effect @p blindness 3 1", player, world, false, true);
           player.sendRichTextMessage(ITextComponent.fromTranslation("pipe.tep.dbsuccess"));
            player.give(itemUtils.getItem("contenttweaker:pipe_blood"));
             item.shrink(1);
              player.health -= 4;
               return "success";
    } else {
        player.sendRichTextMessage(ITextComponent.fromTranslation("pipe.tep.dbfail"));
            return "fail";
                } return "pass";
        }  return "pass";
};
pe.register();

//pipe_blood [INJECT BLOOD]
var pb as Item = VanillaFactory.createItem("pipe_blood");
pb.rarity = "uncommon";
pb.maxStackSize = 4;
pb.itemRightClick = function(item, world, player, hand) {
    var health = player.health as int;
if (!world.remote) {
    if (health < 30) {
        Commands.call("effect @p resistance 3 1", player, world, false, true);
         Commands.call("effect @p speed 3 1", player, world, false, true);
          Commands.call("effect @p strength 1 1", player, world, false, true);
           player.sendRichTextMessage(ITextComponent.fromTranslation("pipe.tep.injectsuccess"));
            player.give(itemUtils.getItem("contenttweaker:pipe_empty"));
             item.shrink(1);
              player.health += 4;
               return "success";
    } else {
        player.sendRichTextMessage(ITextComponent.fromTranslation("pipe.tep.injectfail"));
            return "fail";
                } return "pass";
            }  return "pass";
};
pb.register();

//medical_bandage [STOP BLEEDING]
var mb as Item = VanillaFactory.createItem("medical_bandage");
mb.rarity = "uncommon";
mb.maxStackSize = 4;
mb.itemRightClick = function(item, world, player, hand) {
    var bleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
    if (!world.remote) {
        if (bleeding) {
        player.removePotionEffect(<potion:contenttweaker:bleeding>);
        Commands.call("effect @p resistance 2 1", player, world, false, true);
        Commands.call("effect @p speed 2 1", player, world, false, true);
        Commands.call("effect @p strength 1 1", player, world, false, true);
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.msuccess"));
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.bsuccess"));
        player.health += 2;
        item.shrink(1);
        return "success";
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mfail"));
            return "fail";
        }   return "pass";
    }
     return "pass";
};
mb.register();

//medical_pack [STOP BLEEDING]
var mp as Item = VanillaFactory.createItem("medical_pack");
mp.rarity = "uncommon";
mp.maxStackSize = 4;
mp.itemRightClick = function(item, world, player, hand) {
    var bleeding = player.isPotionActive(<potion:contenttweaker:bleeding>);
    var fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
    if (!world.remote) {
        var health = player.health;
        if (health < 30) {
        player.removePotionEffect(<potion:contenttweaker:bleeding>);
        player.removePotionEffect(<potion:contenttweaker:fractured>);
        Commands.call("effect @p resistance 5 1", player, world, false, true);
        Commands.call("effect @p speed 5 1", player, world, false, true);
        Commands.call("effect @p strength 3 1", player, world, false, true);
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mpsuccess"));
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.psuccess"));
        player.health += 6;
        item.shrink(1);
        return "success";
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.mpfail"));
            return "fail";
        }   return "pass";
    }
     return "pass";
};
mp.register();

//medical_splint [HEAL FRACTURED]
var ms as Item = VanillaFactory.createItem("medical_splint");
ms.rarity = "uncommon";
ms.maxStackSize = 4;
ms.itemRightClick = function(item, world, player, hand) {
    if (!world.remote) {
        var fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
        if (fractured) {
        player.removePotionEffect(<potion:contenttweaker:fractured>);
        Commands.call("effect @p resistance 2 1", player, world, false, true);
        Commands.call("effect @p speed 2 1", player, world, false, true);
        Commands.call("effect @p strength 1 1", player, world, false, true);
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
        item.shrink(1);
        return "success";
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            return "fail";
        }   return "pass";
    }
     return "pass";
};
ms.register();

//medical_metal_splint [HEAL FRACTURED]
var mms as Item = VanillaFactory.createItem("medical_metal_splint");
mms.rarity = "uncommon";
mms.maxStackSize = 4;
mms.itemRightClick = function(item, world, player, hand) {
    if (!world.remote) {
        var fractured = player.isPotionActive(<potion:contenttweaker:fractured>);
        if (fractured) {
        player.removePotionEffect(<potion:contenttweaker:fractured>);
        Commands.call("effect @p resistance 3 1", player, world, false, true);
        Commands.call("effect @p speed 3 1", player, world, false, true);
        Commands.call("effect @p strength 1 1", player, world, false, true);
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.ssuccess"));
        player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.bsuccess"));
        player.health += 4;
        item.shrink(1);
        return "success";
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("healing.tep.sfail"));
            return "fail";
        }   return "pass";
    }
     return "pass";
};
mms.register();