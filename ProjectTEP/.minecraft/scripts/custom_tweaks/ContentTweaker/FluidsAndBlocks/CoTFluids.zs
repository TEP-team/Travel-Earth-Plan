/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 70001
#loader contenttweaker
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

var dt as Fluid = VanillaFactory.createFluid("deuterium", 0x000000);
dt.density = 100;
dt.viscosity = 760;
dt.colorize = false;
dt.stillLocation = "contenttweaker:blocks/fluids/deuterium_still";
dt.flowingLocation = "contenttweaker:blocks/fluids/deuterium_flow";
dt.gaseous = true;
dt.register();

var hf as Fluid = VanillaFactory.createFluid("fluoride", 0x000000);
hf.density = 100;
hf.viscosity = 760;
hf.colorize = false;
hf.stillLocation = "contenttweaker:blocks/fluids/fluoride_still";
hf.flowingLocation = "contenttweaker:blocks/fluids/fluoride_flow";
hf.gaseous = true;
hf.register();