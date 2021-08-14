/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32761

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var el as Fluid = VanillaFactory.createFluid("electrolyte", 0x7B8682);
el.density = 500;
el.luminosity = 1;
el.temperature = 100;
el.viscosity = 650;
el.colorize = false;
el.stillLocation = "contenttweaker:blocks/fluids/el_still";
el.flowingLocation = "contenttweaker:blocks/fluids/el_flow";
el.register();