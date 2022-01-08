/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/
#norun
#priority 51000
import scripts.events.AdvancedEvents.MachineLevelUpSystem.lib.levelUper;

var basicuper = <contenttweaker:basic_uper>;
var mediumuper = <contenttweaker:medium_uper>;
var advuper = <contenttweaker:adv_uper>;

levelUper(<modularmachinery:blockinputbus>, basicuper, <blockstate:modularmachinery:blockinputbus:size=small>, <contenttweaker:material_part:13>*6);
levelUper(<modularmachinery:blockinputbus:1>, basicuper, <blockstate:modularmachinery:blockinputbus:size=normal>, <contenttweaker:material_part:7>*4);
levelUper(<modularmachinery:blockinputbus:2>, mediumuper, <blockstate:modularmachinery:blockinputbus:size=reinforced>, <contenttweaker:material_part:30>*6);
levelUper(<modularmachinery:blockinputbus:3>, mediumuper, <blockstate:modularmachinery:blockinputbus:size=big>, <contenttweaker:material_part:24>*4);
levelUper(<modularmachinery:blockinputbus:4>, advuper, <blockstate:modularmachinery:blockinputbus:size=huge>, <contenttweaker:material_part:47>*6);
levelUper(<modularmachinery:blockinputbus:5>, advuper, <blockstate:modularmachinery:blockinputbus:size=ludicrous>, <contenttweaker:material_part:41>*4);

levelUper(<modularmachinery:blockoutputbus>, basicuper, <blockstate:modularmachinery:blockoutputbus:size=small>, <contenttweaker:material_part:13>*6);
levelUper(<modularmachinery:blockoutputbus:1>, basicuper, <blockstate:modularmachinery:blockoutputbus:size=normal>, <contenttweaker:material_part:7>*4);
levelUper(<modularmachinery:blockoutputbus:2>, mediumuper, <blockstate:modularmachinery:blockoutputbus:size=reinforced>, <contenttweaker:material_part:30>*6);
levelUper(<modularmachinery:blockoutputbus:3>, mediumuper, <blockstate:modularmachinery:blockoutputbus:size=big>, <contenttweaker:material_part:24>*4);
levelUper(<modularmachinery:blockoutputbus:4>, advuper, <blockstate:modularmachinery:blockoutputbus:size=huge>, <contenttweaker:material_part:47>*6);
levelUper(<modularmachinery:blockoutputbus:5>, advuper, <blockstate:modularmachinery:blockoutputbus:size=ludicrous>, <contenttweaker:material_part:41>*4);

levelUper(<modularmachinery:blockfluidinputhatch>, basicuper, <blockstate:modularmachinery:blockfluidinputhatch:size=small>, <contenttweaker:cell_empty>*2);
levelUper(<modularmachinery:blockfluidinputhatch:1>, basicuper, <blockstate:modularmachinery:blockfluidinputhatch:size=normal>, <contenttweaker:material_part:10>*4);
levelUper(<modularmachinery:blockfluidinputhatch:2>, mediumuper, <blockstate:modularmachinery:blockfluidinputhatch:size=reinforced>, <contenttweaker:cell_empty>*4);
levelUper(<modularmachinery:blockfluidinputhatch:3>, mediumuper, <blockstate:modularmachinery:blockfluidinputhatch:size=big>, <contenttweaker:material_part:27>*4);
levelUper(<modularmachinery:blockfluidinputhatch:4>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=huge>, <contenttweaker:cell_empty>*8);
levelUper(<modularmachinery:blockfluidinputhatch:5>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=ludicrous>, <contenttweaker:material_part:44>*4);
levelUper(<modularmachinery:blockfluidinputhatch:6>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=vacuum>, <minecraft:ender_pearl>*16);

levelUper(<modularmachinery:blockfluidoutputhatch>, basicuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=small>, <contenttweaker:cell_empty>*2);
levelUper(<modularmachinery:blockfluidoutputhatch:1>, basicuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=normal>, <contenttweaker:material_part:10>*4);
levelUper(<modularmachinery:blockfluidoutputhatch:2>, mediumuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=reinforced>, <contenttweaker:cell_empty>*4);
levelUper(<modularmachinery:blockfluidoutputhatch:3>, mediumuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=big>, <contenttweaker:material_part:27>*4);
levelUper(<modularmachinery:blockfluidoutputhatch:4>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=huge>, <contenttweaker:cell_empty>*8);
levelUper(<modularmachinery:blockfluidoutputhatch:5>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=ludicrous>, <contenttweaker:material_part:44>*4);
levelUper(<modularmachinery:blockfluidoutputhatch:6>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=vacuum>, <minecraft:ender_pearl>*16);

levelUper(<modularmachinery:blockenergyinputhatch>, basicuper, <blockstate:modularmachinery:blockenergyinputhatch:size=small>, <mekanism:controlcircuit>);
levelUper(<modularmachinery:blockenergyinputhatch:1>, basicuper, <blockstate:modularmachinery:blockenergyinputhatch:size=normal>, <contenttweaker:material_part:2>*4);
levelUper(<modularmachinery:blockenergyinputhatch:2>, mediumuper, <blockstate:modularmachinery:blockenergyinputhatch:size=reinforced>, <mekanism:controlcircuit:1>);
levelUper(<modularmachinery:blockenergyinputhatch:3>, mediumuper, <blockstate:modularmachinery:blockenergyinputhatch:size=big>, <contenttweaker:material_part:19>*4);
levelUper(<modularmachinery:blockenergyinputhatch:4>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=huge>, <mekanism:controlcircuit:2>);
levelUper(<modularmachinery:blockenergyinputhatch:5>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=ludicrous>, <contenttweaker:material_part:36>*4);
levelUper(<modularmachinery:blockenergyinputhatch:6>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=ultimate>, <mekanism:controlcircuit:3>);

levelUper(<modularmachinery:blockenergyoutputhatch>, basicuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=small>, <mekanism:controlcircuit>);
levelUper(<modularmachinery:blockenergyoutputhatch:1>, basicuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=normal>, <contenttweaker:material_part:2>*4);
levelUper(<modularmachinery:blockenergyoutputhatch:2>, mediumuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=reinforced>, <mekanism:controlcircuit:1>);
levelUper(<modularmachinery:blockenergyoutputhatch:3>, mediumuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=big>, <contenttweaker:material_part:19>*4);
levelUper(<modularmachinery:blockenergyoutputhatch:4>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=huge>, <mekanism:controlcircuit:2>);
levelUper(<modularmachinery:blockenergyoutputhatch:5>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=ludicrous>, <contenttweaker:material_part:36>*4);
levelUper(<modularmachinery:blockenergyoutputhatch:6>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=ultimate>, <mekanism:controlcircuit:3>);