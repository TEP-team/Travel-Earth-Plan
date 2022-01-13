/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 90000
#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

//fluid_builder
function fluidBuilder(name as string, still as string, flow as string, density_ as int, viscosity_ as int) {
    var fluid_builder as Fluid = VanillaFactory.createFluid(name, 0x000000);
    fluid_builder.stillLocation = "contenttweaker:blocks/fluids/" + still;
    fluid_builder.flowingLocation = "contenttweaker:blocks/fluids/" + flow;
    fluid_builder.density = density_;
    fluid_builder.viscosity = viscosity_;
    fluid_builder.colorize = false;
    fluid_builder.register();
}

//electrolyte
fluidBuilder("electrolyte","electrolyte_still","electrolyte_flow",500,650);

//deuterium
fluidBuilder("deuterium","deuterium_still","deuterium_flow",100,760);

//fluoride
fluidBuilder("fluoride","fluoride_still","fluoride_flow",100,760);