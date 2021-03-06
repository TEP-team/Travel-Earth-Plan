/*  
    ZenScripts for Minecraft Modpack "Travel Earth Plan".
    You can use these scripts as a example.
    But you can't copy and paste these scripts to your Modpack.
    Thanks a lot!
*/

#priority 60000
import mods.jei.JEI;

val hide as string[] = 
[
    "jetif",
    "jeresources.villager",

    "cookingforblockheads.cowjar",

    "environmentaltech.voidminer.botanic.t5",
    "environmentaltech.voidminer.botanic.t6",
    "environmentaltech.voidminer.ore.t5",
    "environmentaltech.voidminer.ore.t6",

    "thermalexpansion.furnace_ore",
    "thermalexpansion.pulverizer_petrotheum",
    "thermalexpansion.compactor_gear",
    "thermalexpansion.smelter_pyrotheum",
    "thermalexpansion.steam",
    "thermalexpansion.magmatic",
    "thermalexpansion.compression",
    "thermalexpansion.reactant",
    "thermalexpansion.reactant_elemental",
    "thermalexpansion.enervation",
    "thermalexpansion.numismatic",
    "thermalexpansion.numismatic_gem"
];

for Hide in hide {
    JEI.hideCategory(Hide);
}

/*
--- JEI Categories ---
minecraft.crafting
minecraft.fuel
minecraft.smelting
minecraft.brewing
minecraft.anvil
botania.brewery
botania.pureDaisy
botania.runicAltar
botania.petals
botania.elvenTrade
botania.manaPool
botania.orechid
botania.orechid_ignem
thermalexpansion.furnace
thermalexpansion.furnace_food
thermalexpansion.furnace_ore
thermalexpansion.furnace_pyrolysis
thermalexpansion.pulverizer
thermalexpansion.pulverizer_petrotheum
thermalexpansion.sawmill
thermalexpansion.sawmill_tapper
thermalexpansion.smelter
thermalexpansion.smelter_pyrotheum
thermalexpansion.insolator
thermalexpansion.insolator_tree
thermalexpansion.compactor
thermalexpansion.compactor_mint
thermalexpansion.compactor_gear
thermalexpansion.crucible
thermalexpansion.crucible_lava
thermalexpansion.refinery
thermalexpansion.refinery_fossil
thermalexpansion.refinery_potion
thermalexpansion.transposer_fill
thermalexpansion.transposer_extract
thermalexpansion.charger
thermalexpansion.centrifuge
thermalexpansion.centrifuge_mobs
thermalexpansion.brewer
thermalexpansion.enchanter
thermalexpansion.precipitator
thermalexpansion.extruder
thermalexpansion.extruder_sedimentary
thermalexpansion.steam
thermalexpansion.magmatic
thermalexpansion.compression
thermalexpansion.reactant
thermalexpansion.reactant_elemental
thermalexpansion.enervation
thermalexpansion.numismatic
thermalexpansion.numismatic_gem
thermalexpansion.factorizer_combine
thermalexpansion.factorizer_split
thermalexpansion.coolant
thermaldynamics.covers
pneumaticcraft.pressure_chamber
pneumaticcraft.assembly_controller
pneumaticcraft.thermo_pneumatic
pneumaticcraft.refinery
pneumaticcraft.etching_acid
pneumaticcraft.uv_light_box
pneumaticcraft.plastic_mixer.heat_frame_cooling
mekanism.chemicalcrystallizer
mekanism.chemicaldissolutionchamber
mekanism.chemicalinfuser
mekanism.chemicaloxidizer
mekanism.chemicalwasher
mekanism.electrolyticseparator
mekanism.metallurgicinfuser
mekanism.pressurizedreactionchamber
mekanism.rotary_condensentrator_condensentrating
mekanism.rotary_condensentrator_decondensentrating
mekanism.solarneutronactivator
mekanism.combiner
mekanism.purificationchamber
mekanism.osmiumcompressor
mekanism.chemicalinjectionchamber
mekanism.precisionsawmill
mekanism.enrichmentchamber
mekanism.crusher
mekanism.thermalevaporationplant
botaniatweaks.agglomeration
bonsaitrees.Growing
environmentaltech.voidminer.botanic.t1
environmentaltech.voidminer.botanic.t2
environmentaltech.voidminer.botanic.t3
environmentaltech.voidminer.botanic.t4
environmentaltech.voidminer.ore.t1
environmentaltech.voidminer.ore.t2
environmentaltech.voidminer.ore.t3
environmentaltech.voidminer.ore.t4
compactmachines3.MultiblockMiniaturization
jehc.presser
jehc.shippingbin
jehc.market
jehc.apiary
jehc.ground_trap
jehc.water_trap
jehc.grinder
jehc.waterfilter
jeresources.plant
jeresources.worldgen
jeresources.mob
jeresources.enchantment
jeresources.dungeon
flux
appliedenergistics2.grinder
appliedenergistics2.condenser
appliedenergistics2.inscriber
integrateddynamicscompat:dryingBasin
integrateddynamicscompat:squeezer
integrateddynamicscompat:mechanicalDryingBasin
integrateddynamicscompat:mechanicalSqueezer
modularmachinery.preview
modularmachinery.recipes.mixin_tank
modularmachinery.recipes.packer
modularmachinery.recipes.gas_centrifuger
modularmachinery.recipes.fluid_processor
modularmachinery.recipes.energy_dismantler
modularmachinery.recipes.compiler
modularmachinery.recipes.mana_altar
modularmachinery.recipes.mana_convertor
modularmachinery.recipes.reactor
inworldcrafting.itemtransform
ie.cokeoven
ie.alloysmelter
ie.blastfurnace
ie.blastfurnace.fuel
ie.metalPress
ie.crusher
ie.workbench
ie.squeezer
ie.fermenter
ie.refinery
ie.arcFurnace
ie.arcFurnace.recycling
ie.bottlingMachine
ie.mixer
jei.information
*/