/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 51000
#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.block.IBlockState.getBlockState;
import scripts.events.AdvancedEvents.MachineLevelUpSystem.lib.levelUper;

var basicuper = <contenttweaker:basic_uper>;
var mediumuper = <contenttweaker:medium_uper>;
var advuper = <contenttweaker:adv_uper>;

levelUper(<modularmachinery:blockinputbus>, basicuper, <blockstate:modularmachinery:blockinputbus:size=small>);
levelUper(<modularmachinery:blockinputbus:1>, basicuper, <blockstate:modularmachinery:blockinputbus:size=normal>);
levelUper(<modularmachinery:blockinputbus:2>, mediumuper, <blockstate:modularmachinery:blockinputbus:size=reinforced>);
levelUper(<modularmachinery:blockinputbus:3>, mediumuper, <blockstate:modularmachinery:blockinputbus:size=big>);
levelUper(<modularmachinery:blockinputbus:4>, advuper, <blockstate:modularmachinery:blockinputbus:size=huge>);
levelUper(<modularmachinery:blockinputbus:5>, advuper, <blockstate:modularmachinery:blockinputbus:size=ludicrous>);

levelUper(<modularmachinery:blockoutputbus>, basicuper, <blockstate:modularmachinery:blockoutputbus:size=small>);
levelUper(<modularmachinery:blockoutputbus:1>, basicuper, <blockstate:modularmachinery:blockoutputbus:size=normal>);
levelUper(<modularmachinery:blockoutputbus:2>, mediumuper, <blockstate:modularmachinery:blockoutputbus:size=reinforced>);
levelUper(<modularmachinery:blockoutputbus:3>, mediumuper, <blockstate:modularmachinery:blockoutputbus:size=big>);
levelUper(<modularmachinery:blockoutputbus:4>, advuper, <blockstate:modularmachinery:blockoutputbus:size=huge>);
levelUper(<modularmachinery:blockoutputbus:5>, advuper, <blockstate:modularmachinery:blockoutputbus:size=ludicrous>);

levelUper(<modularmachinery:blockfluidinputhatch>, basicuper, <blockstate:modularmachinery:blockfluidinputhatch:size=small>);
levelUper(<modularmachinery:blockfluidinputhatch:1>, basicuper, <blockstate:modularmachinery:blockfluidinputhatch:size=normal>);
levelUper(<modularmachinery:blockfluidinputhatch:2>, mediumuper, <blockstate:modularmachinery:blockfluidinputhatch:size=reinforced>);
levelUper(<modularmachinery:blockfluidinputhatch:3>, mediumuper, <blockstate:modularmachinery:blockfluidinputhatch:size=big>);
levelUper(<modularmachinery:blockfluidinputhatch:4>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=huge>);
levelUper(<modularmachinery:blockfluidinputhatch:5>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=ludicrous>);
levelUper(<modularmachinery:blockfluidinputhatch:6>, advuper, <blockstate:modularmachinery:blockfluidinputhatch:size=vacuum>);

levelUper(<modularmachinery:blockfluidoutputhatch>, basicuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=small>);
levelUper(<modularmachinery:blockfluidoutputhatch:1>, basicuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=normal>);
levelUper(<modularmachinery:blockfluidoutputhatch:2>, mediumuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=reinforced>);
levelUper(<modularmachinery:blockfluidoutputhatch:3>, mediumuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=big>);
levelUper(<modularmachinery:blockfluidoutputhatch:4>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=huge>);
levelUper(<modularmachinery:blockfluidoutputhatch:5>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=ludicrous>);
levelUper(<modularmachinery:blockfluidoutputhatch:6>, advuper, <blockstate:modularmachinery:blockfluidoutputhatch:size=vacuum>);

levelUper(<modularmachinery:blockenergyinputhatch>, basicuper, <blockstate:modularmachinery:blockenergyinputhatch:size=small>);
levelUper(<modularmachinery:blockenergyinputhatch:1>, basicuper, <blockstate:modularmachinery:blockenergyinputhatch:size=normal>);
levelUper(<modularmachinery:blockenergyinputhatch:2>, mediumuper, <blockstate:modularmachinery:blockenergyinputhatch:size=reinforced>);
levelUper(<modularmachinery:blockenergyinputhatch:3>, mediumuper, <blockstate:modularmachinery:blockenergyinputhatch:size=big>);
levelUper(<modularmachinery:blockenergyinputhatch:4>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=huge>);
levelUper(<modularmachinery:blockenergyinputhatch:5>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=ludicrous>);
levelUper(<modularmachinery:blockenergyinputhatch:6>, advuper, <blockstate:modularmachinery:blockenergyinputhatch:size=ultimate>);

levelUper(<modularmachinery:blockenergyoutputhatch>, basicuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=small>);
levelUper(<modularmachinery:blockenergyoutputhatch:1>, basicuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=normal>);
levelUper(<modularmachinery:blockenergyoutputhatch:2>, mediumuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=reinforced>);
levelUper(<modularmachinery:blockenergyoutputhatch:3>, mediumuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=big>);
levelUper(<modularmachinery:blockenergyoutputhatch:4>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=huge>);
levelUper(<modularmachinery:blockenergyoutputhatch:5>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=ludicrous>);
levelUper(<modularmachinery:blockenergyoutputhatch:6>, advuper, <blockstate:modularmachinery:blockenergyoutputhatch:size=ultimate>);