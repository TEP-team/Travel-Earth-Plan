#loader contenttweaker
#priority 32701

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;

var el as Fluid = VanillaFactory.createFluid("electrolyte", 0x7B8682);
el.density = 500;
el.luminosity = 1;
el.temperature = 100;
el.viscosity = 650;
el.colorize = false;
el.register();