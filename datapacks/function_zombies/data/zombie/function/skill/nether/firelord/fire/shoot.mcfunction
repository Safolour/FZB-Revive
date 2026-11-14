execute store result score #firelord_attack zombie.skill.damage run random value 0..1
execute if score #firelord_attack zombie.skill.damage matches 0 run function zombie:skill/nether/firelord/fire/throw
execute if score #firelord_attack zombie.skill.damage matches 1 run function zombie:skill/nether/firelord/fire/drop
playsound entity.blaze.shoot hostile @a[scores={system.room=4..}] ~ ~ ~ 1.5 0.7
