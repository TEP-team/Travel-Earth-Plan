/*  ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
    Oh, Dark2932's English is so bad!
*/

#loader contenttweaker
#priority 32760

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Part;

//ControlCircuit
static ControlCircuit = MaterialSystem.getPartBuilder().
setName("control_circuit").
setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).
build();

//EnergyCircuit
static EnergyCircuit = MaterialSystem.getPartBuilder().
setName("energy_circuit").
setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).
build();

//MachineryCircuit
static MachineryCircuit = MaterialSystem.getPartBuilder().
setName("machinery_circuit").
setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).
build();

//Bearing
static Bearing = MaterialSystem.getPartBuilder().
setName("Bearing").
setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).
build();