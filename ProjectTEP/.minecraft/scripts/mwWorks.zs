//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
//Made By ChromaPIE !!! Not TEP-team !!!
#priority 32766

import scripts.firearmUtils.mwStat;
import scripts.firearmUtils.allTypes;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.zenutils.I18n;

val akmag = [<mw:ak15mag_2>,<mw:ak47mag>,<mw:ak47pmagtan>,<mw:ak50mag>,<mw:ak75mag>,<mw:ak100mag>] as IItemStack[];
val natomag = [<mw:m4a1mag_2>,<mw:m38mag_2>,<mw:stanag50>,<mw:stanag60>,<mw:stanag100>] as IItemStack[];
val g12 = [<mw:shotgun12gauge>] as IItemStack[];

val n556 as string = "5.56x45mm "~I18n.format("string.zarcus.nato");
val spf as string = I18n.format("string.zarcus.springfield");

val need as string = I18n.format("statpart.zarcus.need");
val head as string = I18n.format("statpart.zarcus.head");
val type as string = I18n.format("statpart.zarcus.type");
val frate as string = I18n.format("statpart.zarcus.frate");
val mag as string = I18n.format("statpart.zarcus.mag");

val semi as string = "§7"~I18n.format("frate.zarcus.semi")~"§r";
//Author: ChromaPIE
mwStat(<mw:aac_honey_badger>,"pdw",7.5,".300 AAC Blackout",4,70,[<mw:honeybadgermag_2>]);
mwStat(<mw:acr>,"mar",7,n556,5,65,natomag);
mwStat(<mw:izhmash_ak12>,"ar",7,"5.45x39mm",4,75,[<mw:ak12mag>]);
mwStat(<mw:ak15>,"ar",8.5,"7.62x39mm",4,60,akmag);
mwStat(<mw:ak47>,"ar",8,"7.62x39mm",4,60,akmag);
mwStat(<mw:ak74>,"ar/c",6,"5.45x39mm",4,70,[<mw:ak74mag>]);
mwStat(<mw:ak101>,"ar",7,"5.56x45mm",4,60,[<mw:ak101mag_2>,<mw:ak60mag>]);
mwStat(<mw:ak103_bullpup>,"bar",7.5,"7.62x39mm",4,60,akmag);
mwStat(<mw:akm_vulcan>,"ar/c",7,"7.62x39mm"~I18n.format("string.zarcus.ak101bug"),4,60,[<mw:akmvulcanmag>]);
mwStat(<mw:apc9>,"smg",5.5,"9x19mm",4,85,[<mw:apc9mag>]);
mwStat(<mw:aps>,"mp",6.5,"9x19mm",1,75,[<mw:apsmag_2>]);
mwStat(<mw:ar10_super_sass>,"sass",10,"7.62x51mm",4,80,[<mw:m110mag_2>]);
mwStat(<mw:arx160>,"ar",7,n556,5,75,natomag);
mwStat(<mw:as50>,"ams",50,".50 BMG",1,10,[<mw:ax50mag>]);
mwStat(<mw:steyr_aug_a1>,"bar",7,n556,4,80,natomag);
mwStat(<mw:ax50>,"ams",20,".50 BMG",0,16,[<mw:ax50mag>]);
mwStat(<mw:asiimov_m4a1>,"ar/c",6,n556,4,80,[<mw:m4asiimovmag>]);
mwStat(<mw:br55>,"br",13,"7.62x51mm",3,80,[<mw:bullet762x51>]);
mwStat(<mw:bren_mkii>,"lmg",9,"7.62x51mm",4,50,[<mw:brenmag>]);
mwStat(<mw:browning_auto_5>,"sas",140,"12 Gauge",1,20,g12);
mwStat(<mw:browning_hi_power>,"sasap",6,"9x19mm",1,65,[<mw:hipowermag>]);
mwStat(<mw:c8_sfw>,"ar/c/saw",5,n556,4,80,[<mw:c8mag>]);
mwStat(<mw:csa16>,"c/s",150,"4 Gauge",7,10,[<mw:shotgun4g>]);
mwStat(<mw:cz805_bren_a1>,"mar",6,n556,4,75,[<mw:m4a1mag_2>]);
mwStat(<mw:cz805_bren>,"ar/c",7,n556,4,80,natomag);
mwStat(<mw:cz805_bren_s1>,"mar",6,n556,4,75,[<mw:sa80mag>]);
mwStat(<mw:chiappa_rhino>,"rev",13,".357",1,20,[<mw:bullet357>]);
mwStat(<mw:chiappa_triple_crown>,"sh",120,"12 Gauge",1,30,g12);
mwStat(<mw:dp28>,"lmg",14,"7.62x54mm",4,50,[<mw:dp28mag>]);
mwStat(<mw:desert_eagle>,"sap",15,".50 AE",1,20,[<mw:deserteaglemag>]);
mwStat(<mw:esa23>,"cep",11,I18n.format("type.zarcus.energy"),1,30,[<mw:energycase>]);
mwStat(<mw:f2000>,"ar",6,"5.56x45mm",4,85,natomag);
mwStat(<mw:fnfal>,"br",10,"7.62x51mm",4,60,[<mw:fnfalmag>]);
mwStat(<mw:fatman>,"nuke",0,I18n.format("type.zarcus.nuke"),1,0,[<mw:mininuke>]);
mwStat(<mw:frommer_stop>,"lrp",6,".380 ACP",1,50,[<mw:frommerstopmag>]);
mwStat(<mw:g11>,"ar/lmg/pdw",6,"4.73x33mm",6,80,[<mw:g11mag>]);
mwStat(<mw:g2_contender>,"ba",20,".45-70 Government",1,30,[<mw:bullet4570>]);
mwStat(<mw:g36c>,"ar",7,n556,5,75,[<mw:g36cmag_2>,<mw:stanag100>]);
mwStat(<mw:g36k>,"ar",6,n556,5,75,[<mw:g36cmag_2>]);
mwStat(<mw:g43_gewehr>,"sar",15,"7.92x57mm",1,25,[<mw:g43_gewehr_mag>]);
mwStat(<mw:gl06>,"gl",70,"40mm",1,"X",[<mw:grenade40mm>]);
mwStat(<mw:gpca1>,"gpc",400,I18n.format("type.zarcus.plasma"),1,4,[<mw:plasmacapsule>]);
mwStat(<mw:glock_18c>,"mp",5,"9x19mm",4,95,[<mw:glockmag13>,<mw:glock18cmag_2>,<mw:glockmag50>]);
mwStat(<mw:glock_19>,"sap",5,"9x19mm",1,99,[<mw:glockmag13>,<mw:glock18cmag_2>,<mw:glockmag50>]);
mwStat(<mw:har_27>,"ar/c",11,n556,4,50,[]); //Lacking compatible magazines
mwStat(<mw:he_standard_combat_shotgun>,"cs",120,"12 Gauge",7,50,g12);
mwStat(<mw:hk_416>,"ar/c/saw",6,n556,4,80,[<mw:m4a1mag_2>]);
mwStat(<mw:hk_g95>,"ar/c/saw",6,n556,4,80,[<mw:m4a1mag_2>]);
mwStat(<mw:hk_p12>,"sasp",6,".45 ACP",1,30,[<mw:usp45mag>]);
mwStat(<mw:hs12>,"dbs",120,"12 Gauge",1,30,g12);
mwStat(<mw:k2c1>,"ar",7,n556,4,75,natomag);
mwStat(<mw:kbp_9a91>,"c",6,"9x39mm",4,70,[<mw:kbp9a91mag_2>]);
mwStat(<mw:ks23>,"c/s",140,"4 Gauge",1,10,[<mw:shotgun4g>]);
mwStat(<mw:kalashnikov_ak12>,"ar/c",7,"5.45x39mm",4,60,[<mw:ak15mag_2>]);
mwStat(<mw:kar98k>,"ba-r",27,"7.92x57mm",0,16,[<mw:bullet792x57>]);
mwStat(<mw:pp91_kedr>,"smg",5,"9x19mm",4,70,[<mw:kedrmag_2>]);
mwStat(<mw:krag_jorgensen>,"rba-r",33,"8x58mm",0,16,[<mw:bullet8x58>]);
mwStat(<mw:kriss_vector>,"smg",6.5,".45 ACP",4,99,[<mw:vectormag>]);
mwStat(<mw:l131a1>,"sasp",5,"9x19mm",1,70,[<mw:l131a1mag>]);
mwStat(<mw:l96a1>,"sn",34,"7.62x51mm",0,16,[<mw:l96a1mag_2>]);
mwStat(<mw:m1014>,"sh",30,"12 Gauge",1,30,g12);
mwStat(<mw:m110_sass>,"sass",15,"7.62x51mm",1,65,[<mw:m110mag_2>]);
mwStat(<mw:m134>,"mng",15,"7.62x51mm "~I18n.format("string.zarcus.nato"),2,I18n.format("string.zarcus.m134flavor"),[<mw:m134mag>]);
mwStat(<mw:m16a1>,"ar",8,n556,6,80,natomag);
mwStat(<mw:m16a4>,"ar",8,n556,6,80,natomag);
mwStat(<mw:m17>,"sasp",4,"9x19mm",1,50,[<mw:m17mag>]);
mwStat(<mw:m1873>,"lar",13,"44-40 Winchester",8,50,[<mw:bullet4440>]);
mwStat(<mw:m1897>,"sh",120,"12 Gauge",7,50,g12);
mwStat(<mw:m1911>,"sap",6,".45 ACP",1,50,[<mw:m45a1mag_2>,<mw:m45a1mag14>]);
mwStat(<mw:m1928_thompson>,"smg",7,".45 ACP",4,75,[<mw:m1a1mag>,<mw:m1928mag>]);
mwStat(<mw:m1941_johnson>,"lmg",9,spf,4,50,[<mw:johnsonmag>]);
mwStat(<mw:m1941_johnson_rifle>,"sar",9,spf,1,50,[<mw:bullet3006springfield>]);
mwStat(<mw:m1_carbine>,"sar",7,".30 Carbine"~I18n.format("string.zarcus.m1carbinebug"),1,55,[<mw:m1carbinemag>]);
mwStat(<mw:m1_garand>,"sar",10,spf,1,20,[<mw:bullet3006springfield>]);
mwStat(<mw:m200_intervention>,"sn",40,".408 CheyTac",0,16,[<mw:interventionmag>]);
mwStat(<mw:m20>,"s/p",7,"9x19mm",4,95,[<mw:bullet9x19mm>]);
mwStat(<mw:m249>,"gpmg",10,n556,2,75,[<mw:m249mag>]);
mwStat(<mw:m38_dmr>,"c",7,n556,4,75,natomag);
mwStat(<mw:m392>,"dmr",14,"7.62x51mm",4,50,[<mw:bullet762x51>]);
mwStat(<mw:m40a6>,"sn",32,".308 Winchester",0,16,[<mw:m40a6mag_2>]);
mwStat(<mw:m41a>,"mpr",6.5,"10mm",2,99,[<mw:bullet10mm>]);
mwStat(<mw:m45>,"sh",340,"8 Gauge"~I18n.format("string.zarcus.m45bug"),7,50,g12);
mwStat(<mw:m4a1>,"c",7,n556,4,75,natomag);
mwStat(<mw:m56>,"smart",12,n556,2,99,[<mw:bullet556x45>]);
mwStat(<mw:m60e4>,"gpmg",13,"7.62x51mm",2,60,[<mw:m60mag>]);
mwStat(<mw:m6c>,"csa",8,"9x19mm",1,50,[<mw:bullet9x19mm>]);
mwStat(<mw:m6c_socom>,"csa",8,"9x19mm",1,50,[<mw:bullet9x19mm>]);
mwStat(<mw:m712>,"mp",7.5,"7.63x25mm "~I18n.format("string.zarcus.mauser"),4,75,[<mw:m712mag_2>]);
mwStat(<mw:m79>,"gl",70,"40mm",1,"X",[<mw:grenade40mm>]);
mwStat(<mw:m82_barrett>,"ams",50,".50 BMG",1,10,[<mw:m82mag_2>]);
mwStat(<mw:m8a7>,"c",7,n556,6,85,[<mw:bullet556x45>]);
mwStat(<mw:m9a1>,"dsap",5.5,"9x19mm",1,50,[<mw:m9mag_2>,<mw:m9mag30>,<mw:m9drummag>]);
mwStat(<mw:ma37_icws>,"ar",8,"7.62x51mm",4,75,[<mw:bullet762x51>]);
mwStat(<mw:ma5d>,"ar",9,"7.62x51mm",4,60,[<mw:bullet762x51>]);
mwStat(<mw:mac10>,"mp/smg",6,".45 ACP",4,99,[<mw:mac10mag>]);
mwStat(<mw:mg34>,"gpmg",13,"7.92x57mm",2,75,[<mw:mg42mag_2>]);
mwStat(<mw:mg42>,"gpmg",13,"7.92x57mm",2,95,[<mw:mg42mag_2>]);
mwStat(<mw:mp40>,"smg",7,"9x19mm",4,50,[<mw:mp40mag_2>]);
mwStat(<mw:mp43e>,"sh",50,"12 Gauge",1,30,g12);
mwStat(<mw:mp_443>,"msp",5.5,"9x19mm",1,50,[<mw:mp443mag_2>]);
mwStat(<mw:mp443_grach>,"msp",5,"9x19mm",1,70,[<mw:mp443mag_2>]);
mwStat(<mw:mp5a5>,"smg",5,"9x19mm",4,80,[<mw:mp5a5mag>,<mw:hk50drum>]);
mwStat(<mw:mp7a1>,"s/p/m",4,"4.6x30mm",4,80,[<mw:mp7mag>]);
mwStat(<mw:mp7_black_ice>,"s/p/m",5,"4.6x30mm",4,80,[<mw:mp7mag>]);
mwStat(<mw:mp7>,"s/p/m",5,"4.6x30mm",4,80,[<mw:mp7mag>]);
mwStat(<mw:sig_mpx>,"smg",6,"9x19mm",4,85,[<mw:mpxmag>]);
mwStat(<mw:makarov_pm>,"sssrsap",4.5,"9x18mm",1,30,[<mw:makarovmag>]);
mwStat(<mw:mares_leg>,"lar",16,".44 Magnum",8,50,[<mw:bullet44>]);
mwStat(<mw:mk14_ebr>,"br/dmr",8,"7.62x51mm",4,75,[<mw:mk14ebrmag_2>,<mw:m14drum50>]);
mwStat(<mw:ntw_20>,"ams",100,"20x82mm",1,10,[<mw:ntw20mag>]);
mwStat(<mw:nv4>,"ar/c",9,n556,4,80,[<mw:bullet556x45>]);
mwStat(<mw:osipr>,"ar",8,"7.62x51mm"~I18n.format("string.zarcus.osipr"),4,75,[<mw:bullet762x51>]);
mwStat(<mw:origin12>,"sats",30,"12 Gauge",1,30,g12);
mwStat(<mw:p10>,"msp",8,"10mm",1,50,[<mw:bullet10mm>]);
mwStat(<mw:p2022>,"sasp",4,"9x19mm",1,50,[<mw:p2022mag>]);
mwStat(<mw:p226>,"dsap",5.5,"9x19mm",1,50,[<mw:m9mag_2>,<mw:m9mag30>,<mw:m9drummag>]);
mwStat(<mw:p90>,"pdw",5,"5.7x28mm",4,80,[<mw:p90mag>]);
mwStat(<mw:pgm_hecate_ii>,"amr",50,".50 BMG",0,16,[<mw:hecateiimag>]);
mwStat(<mw:python>,"rev",10,".357",1,20,[<mw:bullet357>]);
mwStat(<mw:quad_barrel_shotgun>,"sh",322,"12 Gauge",1,30,g12);
mwStat(<mw:remington_700>,"psn",20,".300 Winchester"~I18n.format("string.zarcus.m1carbinebug"),0,16,[<mw:r700mag>]);
mwStat(<mw:remington870>,"sh",40,"12 Gauge",7,10,[<mw:bullet357>]);
mwStat(<mw:sa80>,"ar/c/saw",5.5,n556,4,80,[<mw:sa80mag>]);
mwStat(<mw:sccy_cpx_2>,"dap",6,"9x19mm",1,50,[<mw:sccy_cpx_2_mag>,<mw:m9mag30>,<mw:m9drummag>]);
mwStat(<mw:sl8>,"sar",10,I18n.format("type.zarcus.energy"),4,45,[<mw:energycase>]);
mwStat(<mw:socom_m4a1>,"ar/c",6,n556,4,80,[<mw:socom_mag>]);
mwStat(<mw:sr3_vikhr>,"ar",6,"9x39mm",4,75,[<mw:vssvintorezmag_2>]);
mwStat(<mw:srs99>,"ams",55,"7.62x51mm",1,50,[<mw:bullet762x51>]);
mwStat(<mw:ssg_08>,"psh",27,".308 Winchester",0,16,[<mw:ssg08mag>]);
mwStat(<mw:ssg42>,"slayer",360,"12 Gauge",1,30,g12);
mwStat(<mw:stg44>,"ar",8,"7.92x33mm",4,60,[<mw:stg44mag_2>]);
mwStat(<mw:sv98>,"sn",34,"7.62x54mm",0,16,[<mw:sv98mag_2>]);
mwStat(<mw:sw_500_magnum>,"rev",23,".500 Magnum",1,20,[<mw:bullet500>]);
mwStat(<mw:saiga12>,"c/s",60,"12 Gauge",1,40,[<mw:saigamag_2>]);
mwStat(<mw:scar_h_cqc>,"br",14,"7.62x51mm "~I18n.format("string.zarcus.nato"),4,55,[<mw:scarhmag_2>,<mw:scar40mag>,<mw:scar60mag>]);
mwStat(<mw:scar_l>,"c",8,n556,4,65,natomag);
mwStat(<mw:scorpion_evo3_a1>,"pcc/smg",6,"9x19mm",4,99,[<mw:scorpionmag>]);
mwStat(<mw:spas_12>,"sh",30,"12 Gauge",1,20,g12);
mwStat(<mw:springfield>,"ba_r",27,spf,0,16,[<mw:bullet3006springfield>]);
mwStat(<mw:stonera1>,"lmg",10,"5.56x45mm",2,75,[<mw:stonermag>]);
mwStat(<mw:supernova>,"sh",225,"12 Gauge",7,30,g12);
mwStat(<mw:taurus_raging_hunter>,"rev",14,".44 Magnum",0,20,[<mw:bullet44>]);
mwStat(<mw:the_dechard>,"rev",13,"5.56x45mm",1,20,[<mw:bullet556x45>]);
mwStat(<mw:tokyo_90>,"sh",48,"12 Gauge",7,10,g12);
mwStat(<mw:type2>,"emf",8,I18n.format("type.zarcus.energy"),4,80,[<mw:energycase>]);
mwStat(<mw:type51>,"cove",14,I18n.format("type.zarcus.energy"),1,30,[<mw:energycase>]);
mwStat(<mw:ump_45>,"ump",6.5,".45 ACP",4,60,[<mw:ump45mag>]);
mwStat(<mw:uzi>,"smg",6,"9x19mm",4,70,[<mw:uzimag_2>]);
mwStat(<mw:vp70>,"dsap",5.5,"9x19mm",1,50,[<mw:vp70mag_2>]);
mwStat(<mw:vss_vintorez>,"ssn",13,"9x39mm",4,70,[<mw:vssvintorezmag_2>]);
mwStat(<mw:volk>,"ear",8,n556,1,70,[<mw:g36cmag_2>]);

for str in [
    need~<mw:augparaconversion>.displayName,
    "§7"~<mw:aug9mmmag>.displayName,
] as string[]{
    <mw:steyr_aug_a1>.addTooltip(str);
}

for str in [
    need~<mw:p90terminator>.displayName,
    "§7"~<mw:p90terminatormag>.displayName,
] as string[]{
    <mw:p90>.addTooltip(str);
}

for str in [
    need~<mw:m191144magslide>.displayName,
    "§7"~<mw:m1911_44mag>.displayName,
] as string[]{
    <mw:m1911>.addTooltip(str);
}

for str in [
    need~<mw:ar57receiver>.displayName~I18n.format("string.zarcus.and")~<mw:ar57handguard>.displayName,
    "§7"~<mw:p90mag>.displayName,
    "§7"~I18n.format("string.zarcus.m4a1bug")
] as string[]{
    <mw:m4a1>.addTooltip(str);
}

for str in [
    need~<mw:samuraiedgebody>.displayName~I18n.format("string.zarcus.or")~<mw:samuraiedgeawbody>.displayName,
    "§7"~<mw:samuraiedgemag>.displayName
] as string[]{
    <mw:m9a1>.addTooltip(str);
}

for str in [
    need~<mw:krissvector556handguard>.displayName,
    "§7"~<mw:m4a1mag_2>.displayName,
    <mw:m38mag_2>.displayName,
    <mw:stanag50>.displayName,
    <mw:stanag60>.displayName,
    <mw:stanag100>.displayName
] as string[]{
    <mw:kriss_vector>.addTooltip(str);
}

for str in [
    "",
    head,
    I18n.format("statpart.zarcus.source"),
    "§7"~<mw:fuelcell>.displayName~"§r"
] as string[]{
    <mw:chainsaw>.addTooltip(str);
}

for str in [
    "",
    head,
    type~I18n.format("type.zarcus.bfg"),
    frate~semi,
    mag,
    "§7"~<mw:bfgammo>.displayName~"§r"
] as string[]{
    <mw:bfg_9000>.addTooltip(str);
}

for str in [
    "",
    head,
    type~"§7"~I18n.format("type.zarcus.rl")~"§r",
    frate~semi,
    mag,
    "§7"~<mw:m202rocket>.displayName~"§r"
] as string[]{
    <mw:m202>.addTooltip(str);
}

for str in [
    "",
    head,
    type~"§7"~I18n.format("type.zarcus.mgl")~"§r",
    frate~semi,
    mag,
    "§7"~<mw:grenade40mm>.displayName~"§r"
] as string[]{
    <mw:m32_mgl>.addTooltip(str);
}

for str in [
    "",
    head,
    type~"§7"~I18n.format("type.zarcus.rl")~"§r",
    frate~semi,
    mag,
    "§7"~<mw:rpg7_rocket>.displayName~"§r"
] as string[]{
    <mw:rpg7>.addTooltip(str);
}

<mw:remington870>.addTooltip(I18n.format("statpart.zarcus.ir")~"§7"~I18n.format("ir.zarcus.mod")~"§r");
<mw:tokyo_90>.addTooltip(I18n.format("statpart.zarcus.ir")~"§7"~I18n.format("ir.zarcus.mod")~"§r");

for str in [
    need~<mw:ump45receiver>.displayName,
    "§7"~<mw:ump9mag>.displayName
] as string[]{
    <mw:ump_45>.addTooltip(str);
}
