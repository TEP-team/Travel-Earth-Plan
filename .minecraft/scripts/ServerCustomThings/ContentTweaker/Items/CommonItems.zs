#loader contenttweaker
#priority 32704

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
ss.maxDamage = 90;
hw.maxStackSize = 1;
hw.rarity = "uncommon";
hw.register();