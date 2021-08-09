/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32764

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var sci = VanillaFactory.createItem("shinycopper_ingot");
sci.glowing = true;
sci.rarity = "epic";
sci.register();

var ssm = VanillaFactory.createItem("shinystar_matter");
ssm.glowing = true;
ssm.rarity = "epic";
ssm.register();

var ce = VanillaFactory.createItem("cell_empty");
ce.register();

var cc = VanillaFactory.createItem("cell_cold");
cc.register();

var cd = VanillaFactory.createItem("cell_dt");
cd.register();

var st = VanillaFactory.createItem("snow_tool");
st.maxDamage = 120;
st.maxStackSize = 1;
st.rarity = "uncommon";
st.register();

var ss = VanillaFactory.createItem("sieve_string");
ss.maxDamage = 90;
ss.maxStackSize = 1;
ss.rarity = "uncommon";
ss.register();

var wr = VanillaFactory.createItem("wood_residue");
wr.register();

var bwr = VanillaFactory.createItem("big_wood_residue");
bwr.register();

var cco = VanillaFactory.createItem("common_code");
cco.rarity = "rare";
cco.register();

var ec = VanillaFactory.createItem("error_code");
ec.register();

var coc = VanillaFactory.createItem("conversion_core");
coc.glowing = true;
coc.maxStackSize = 1;
coc.rarity = "uncommon";
coc.register();

var hw = VanillaFactory.createItem("handsaw_wood");
hw.maxDamage = 90;
hw.maxStackSize = 1;
hw.rarity = "uncommon";
hw.register();

var mes = VanillaFactory.createItem("metal_stick");
mes.register();

var cs = VanillaFactory.createItem("cloth_string");
cs.register();

var wc = VanillaFactory.createItem("world_core");
wc.rarity = "epic";
wc.glowing = true;
wc.register();

var sc = VanillaFactory.createItem("sky_core");
sc.rarity = "epic";
sc.glowing = true;
sc.register();

var gc = VanillaFactory.createItem("ground_core");
gc.rarity = "epic";
gc.glowing = true;
gc.register();

var hp = VanillaFactory.createItem("hammer_plate");
hp.maxDamage = 90;
hp.maxStackSize = 1;
hp.rarity = "uncommon";
hp.register();