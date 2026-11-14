# health 准则会取整且可能尚未同步，改读实际生命值与实际上限。
execute unless entity @s[scores={stat.player=1},gamemode=!spectator] run return 0
execute store result score #heal_current weapon.state run data get entity @s Health 100000
execute if score @s bs.hmod matches 1.. if data entity @s active_effects[{id:"minecraft:instant_health",amplifier:28b}] run scoreboard players operation #heal_current weapon.state += @s bs.hmod
execute store result score #heal_max weapon.state run attribute @s minecraft:max_health get 100000
return run execute if score #heal_current weapon.state < #heal_max weapon.state
