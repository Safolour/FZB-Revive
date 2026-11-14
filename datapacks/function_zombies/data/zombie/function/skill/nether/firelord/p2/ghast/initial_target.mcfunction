# Initial heading stays within 30 degrees of the arena center; later targets use target.mcfunction.
execute store result score #p2initial zombie.motionx run random value -30..30
execute store result storage zombie p2_initial.yaw int 1 run scoreboard players get #p2initial zombie.motionx
function zombie:skill/nether/firelord/p2/ghast/initial_target_apply with storage zombie p2_initial
scoreboard players set @s zombie.skill_timer 0
