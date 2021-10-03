/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000

//function
function langGet(key as string) as string {
    return game.localize(key);
}

//ToolTips
<forge:bucketfilled>.withTag({FluidName: "electrolyte", Amount: 1000}).addTooltip("§b高度的酸性，锂与硫酸的反应产物.");
<contenttweaker:sieve_string>.anyDamage().addTooltip("§b可以筛出雪球中的碎渣.");
<contenttweaker:handsaw_wood>.anyDamage().addTooltip("§b可以将原木锯出更多的木板.");
<contenttweaker:snow_tool>.anyDamage().addTooltip("§b可以将木渣聚合.");
<contenttweaker:shinystar_ingot>.addTooltip("§6闪烁迷离，震荡不定.");
<contenttweaker:shinystar_matter>.addTooltip("§6无穷无尽，璀璨耀眼.");
<contenttweaker:conversion_core>.anyDamage().addTooltip("§b程序代码与红石构成的高级芯片.");
<contenttweaker:conversion_core>.anyDamage().addTooltip("§6投影，编译，储存等效果显著!");
<contenttweaker:tp_gem>.addTooltip("§a可在所在位置半径 §e2000 §a格的范围内随机传送!");
<contenttweaker:pipe_empty>.addTooltip("§a右键以抽出 §e4 §a点生命值!");
<contenttweaker:pipe_blood>.addTooltip("§a右击以恢复 §e4 §a点生命值!");
<contenttweaker:pipe_blood>.addTooltip("§c生命值低于 §e20 §c时才可以使用!");
<contenttweaker:medical_bandage>.addTooltip("§a右击以恢复 §e2 §a点生命值!");
<contenttweaker:medical_bandage>.addTooltip("§a可以治疗 §e流血 §a!");
<contenttweaker:medical_bandage>.addTooltip("§c流血时才可以使用!");
<contenttweaker:medical_pack>.addTooltip("§a右击以恢复 §e6 §a点生命值!");
<contenttweaker:medical_pack>.addTooltip("§a可以治疗 §e骨折 §a与 §e流血 §a!");
<contenttweaker:medical_pack>.addTooltip("§c生命值低于 §e20 §c时才可以使用!");
<contenttweaker:medical_splint>.addTooltip("§a可以治疗 §e骨折 §a!");
<contenttweaker:medical_splint>.addTooltip("§c骨折时才可以使用!");
<contenttweaker:medical_metal_splint>.addTooltip("§a右击以恢复 §e3 §a点生命值!");
<contenttweaker:medical_metal_splint>.addTooltip("§a可以治疗 §e骨折 §a!");
<contenttweaker:medical_metal_splint>.addTooltip("§c骨折时才可以使用!");
<contenttweaker:rainbow_gem>.addTooltip("§b科学, §5魔法, §c生命 §a三大之力在此聚集.");
<contenttweaker:rainbow_gem>.addTooltip("§a右键以获得 §9彩§e虹 §a的庇佑!");
<contenttweaker:hammer_plate>.anyDamage().addTooltip("§b可以将金属锭锻造为金属板材.");
<contenttweaker:pc>.addTooltip("§b暂时没用... 或许未来更新会添加用途.");
<contenttweaker:nano_pack>.addTooltip("§b暂时没用... 或许未来更新会添加用途.");

<pneumaticcraft:empty_pcb:0>.addTooltip("§b扔到 §e蚀刻酸 §b中或与 §e蚀刻酸桶 §b在 §6压力室 §b中进行蚀刻.");
<pneumaticcraft:empty_pcb:*>.addTooltip("§b如果耐久不满，请在 §e紫外光灯线 §b中进行紫外线照射！");
<pneumaticcraft:empty_pcb:100>.addTooltip("§b目前电路板耐久为零，可直接放入 §6装配室 §b中进行激光印刷！");

<cropdusting:poop>.addTooltip("§b它可以食用.");
<cropdusting:poop>.addTooltip("§a没错你就是老八的传人！");

<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:mana_altar"}).addTooltip("§c注意：§e魔法水晶 §c因结构问题未显示，请获得该物品后搭建机器.");