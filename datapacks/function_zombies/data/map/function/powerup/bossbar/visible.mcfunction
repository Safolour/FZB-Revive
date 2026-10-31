
scoreboard players operation bossbar0 powerup = bossbar powerup
execute if score bossbar powerup matches 0 run bossbar set powerup players
execute if score bossbar powerup matches 1 run bossbar set powerup players @a[scores={system.room=4}]