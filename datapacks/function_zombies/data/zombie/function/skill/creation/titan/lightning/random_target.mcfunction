# Tenths-of-block positions in the recorded playable corridor; original RNG bounds are not exposed.
execute store result storage titan_light target.x double 0.1 run random value 3410..3560
execute store result storage titan_light target.z double 0.1 run random value 1340..1680
function zombie:skill/creation/titan/lightning/place_target with storage titan_light target
execute at @s run function zombie:skill/creation/titan/lightning/target_init
