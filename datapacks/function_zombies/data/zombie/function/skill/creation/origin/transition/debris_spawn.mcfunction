execute store result storage origin:transition debris.x double 0.1 run random value -20..20
execute store result storage origin:transition debris.y double 0.1 run random value 0..100
execute store result storage origin:transition debris.z double 0.1 run random value -20..20
execute store result storage origin:transition debris.sx float 1 run random value 20..40
execute store result storage origin:transition debris.sy float 1 run random value 20..40
execute store result storage origin:transition debris.sz float 1 run random value 20..40
execute store result score #debris_model origin.line run random value 0..3
execute if score #debris_model origin.line matches 0 run data modify storage origin:transition debris.model set value "custom:block"
execute if score #debris_model origin.line matches 1 run data modify storage origin:transition debris.model set value "custom:block0"
execute if score #debris_model origin.line matches 2 run data modify storage origin:transition debris.model set value "custom:block1"
execute if score #debris_model origin.line matches 3 run data modify storage origin:transition debris.model set value "custom:block2"
function zombie:skill/creation/origin/transition/debris_summon with storage origin:transition debris
