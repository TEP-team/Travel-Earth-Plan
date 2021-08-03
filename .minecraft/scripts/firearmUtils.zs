//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
#priority 32767

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import mods.jei.JEI;
import mods.zenutils.I18n;

for mwthings in game.items{
    if (mwthings.owner == "mw"){
        if(mwthings.subItems.length > 0){
            for i in 0 to mwthings.subItems.length {
                val titleArray = ["Type:","Damage:","Cartridge:","Pellet:","Pellets","Fire:","Rate:","Rating:","Chamber:","Magazine","Intake:","Caliber:"] as string[];
                for titles in titleArray{
                    if (mwthings.subItems[i].definition.creativeTab.tabLabel != "AmmoTab"){
                        mwthings.subItems[i].removeTooltip("^(.*)"~titles~"(.*)");
                    }
                }
            }
        }
    }
}

static allTypes as string[string] = {
    "sap" : I18n.format("type.zarcus.sap"),
    "lrp" : I18n.format("type.zarcus.lrp"),
    "sasp" : I18n.format("type.zarcus.sasp"),
    "msp" : I18n.format("type.zarcus.msp"),
    "sasap" : I18n.format("type.zarcus.sasap"),
    "sssrsap" : I18n.format("type.zarcus.sssrsap"),
    "dap" : I18n.format("type.zarcus.dap"),
    "dsap" : I18n.format("type.zarcus.dsap"),
    "csa" : I18n.format("type.zarcus.csa"),
    "cep" : I18n.format("type.zarcus.cep"),
    "rev" : I18n.format("type.zarcus.rev"),
    "mp" : I18n.format("type.zarcus.mp"),
    "ump" : I18n.format("type.zarcus.ump"),
    "smg" : I18n.format("type.zarcus.smg"),
    "mp/smg" : I18n.format("type.zarcus.mp_smg"),
    "pdw" : I18n.format("type.zarcus.pdw"),
    "s/p" : I18n.format("type.zarcus.s_p"),
    "s/p/m" : I18n.format("type.zarcus.s_p_m"),
    "pcc/smg" : I18n.format("type.zarcus.pcc_smg"),
    "ba" : I18n.format("type.zarcus.ba"),
    "lar" : I18n.format("type.zarcus.lar"),
    "ba-r" : I18n.format("type.zarcus.ba_r"),
    "rba-r" : I18n.format("type.zarcus.rba_r"),
    "sar" : I18n.format("type.zarcus.sar"),
    "r" : I18n.format("type.zarcus.r"),
    "c" : I18n.format("type.zarcus.c"),
    "ar" : I18n.format("type.zarcus.ar"),
    "ar/c" : I18n.format("type.zarcus.ar_c"),
    "ar/c/saw" : I18n.format("type.zarcus.ar_c_saw"),
    "ar/lmg/pdw" : I18n.format("type.zarcus.ar_lmg_pdw"),
    "emf" : I18n.format("type.zarcus.emf"),
    "bar" : I18n.format("type.zarcus.bar"),
    "mar" : I18n.format("type.zarcus.mar"),
    "ear" : I18n.format("type.zarcus.ear"),
    "mpr" : I18n.format("type.zarcus.mpr"),
    "br" : I18n.format("type.zarcus.br"),
    "dmr" : I18n.format("type.zarcus.dmr"),
    "br/dmr" : I18n.format("type.zarcus.br_dmr"),
    "amr" : I18n.format("type.zarcus.amr"),
    "sn" : I18n.format("type.zarcus.sn"),
    "ssn" : I18n.format("type.zarcus.ssn"),
    "psn" : I18n.format("type.zarcus.psn"),
    "ams" : I18n.format("type.zarcus.ams"),
    "sass" : I18n.format("type.zarcus.sass"),
    "gl" : I18n.format("type.zarcus.gl"),
    "lmg" : I18n.format("type.zarcus.lmg"),
    "gpmg" : I18n.format("type.zarcus.gpmg"),
    "smart" : I18n.format("type.zarcus.smart"),
    "mng" : I18n.format("type.zarcus.mng"),
    "sh" : I18n.format("type.zarcus.sh"),
    "dbs" : I18n.format("type.zarcus.dbs"),
    "sas" : I18n.format("type.zarcus.sas"),
    "cove" : I18n.format("type.zarcus.cove"),
    "cs" : I18n.format("type.zarcus.cs"),
    "c/s" : I18n.format("type.zarcus.c_s"),
    "sats" : I18n.format("type.zarcus.sats"),
    "slayer" : I18n.format("type.zarcus.slayer"),
    "gpc" : I18n.format("type.zarcus.gpc"),
    "nuke" : I18n.format("type.zarcus.nuke")
};
//Author: ChromaPIE
function mwStat(
    gun as IItemStack, type as string, damage as double, cart as string, mode as int, rate as string, mag as IItemStack[]){

    val frate as string[int] = {
        0 : I18n.format("frate.zarcus.ba"),
        1 : I18n.format("frate.zarcus.semi"),
        2 : I18n.format("frate.zarcus.auto"),
        3 : I18n.format("frate.zarcus.burst"),
        4 : I18n.format("frate.zarcus.sa"),
        5 : I18n.format("frate.zarcus.sba"),
        6 : I18n.format("frate.zarcus.sb"),
        7 : I18n.format("frate.zarcus.pa"),
        8 : I18n.format("frate.zarcus.la"),
    };
    val titleArray = [
        "",
        I18n.format("statpart.zarcus.head"),
        I18n.format("statpart.zarcus.type"),
        I18n.format("statpart.zarcus.damage"),
        I18n.format("statpart.zarcus.cart"),
        I18n.format("statpart.zarcus.frate"),
        I18n.format("statpart.zarcus.rate"),
        I18n.format("statpart.zarcus.mag")
    ] as string[];
    val statArray = [
        "",
        "",
        "§7"~allTypes[type]~"§r",
        "§7"~damage~"§r",
        "§7"~cart~"§r",
        "§7"~frate[mode]~"§r",
        "§7"~rate~"/100"~"§r",
        ""
    ] as string[];
    for i, stats in statArray{
        gun.addTooltip(titleArray[i]~statArray[i]);
    }
    for mags in mag{
        gun.addTooltip(mags.displayName);
    }
}
