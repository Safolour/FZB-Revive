
execute unless score @s zombie.knockresistance = @s zombie.knockresistance run scoreboard players set @s zombie.knockresistance 0
execute if score punch weapon.state matches 0 run scoreboard players set punch weapon.state 0

function weapon:range/gun/damage/punch_source
execute if entity @p[scores={weapon.use=1..,perk.no_knockback=1}] run scoreboard players operation punch weapon.state *= punch perk.no_knockback
execute if entity @p[scores={weapon.use=1..,perk.no_knockback=1}] run scoreboard players operation punch weapon.state /= 100 number
# 引力子弹取反。视差红激光已在 damage_1/2 取过反，这里不再取第二次，否则变回推开
execute if entity @p[scores={weapon.use=1..,perk.gravity_bullet=1}] unless score gun weapon.use = uuid weapon.gun_parallax run scoreboard players operation punch weapon.state *= -1 number
execute if entity @p[scores={weapon.use=1..,perk.gravity_bullet=1}] if score gun weapon.use = uuid weapon.gun_parallax unless score #parallax_mode weapon.state matches 1 run scoreboard players operation punch weapon.state *= -1 number

execute store result score vector.x weapon.state run data get entity @n[tag=summon] Pos[0] 100
execute store result score vector.y weapon.state run data get entity @n[tag=summon] Pos[1] 100
execute store result score vector.z weapon.state run data get entity @n[tag=summon] Pos[2] 100
scoreboard players operation @s zombie.knockresistance1 = @s zombie.knockresistance
scoreboard players operation @s zombie.knockresistance1 -= 100 number
scoreboard players operation punch weapon.state *= @s zombie.knockresistance1
scoreboard players operation vector.x weapon.state *= punch weapon.state
scoreboard players operation vector.y weapon.state *= punch weapon.state
scoreboard players operation vector.z weapon.state *= punch weapon.state
scoreboard players operation @s zombie.motionx = vector.x weapon.state
scoreboard players operation @s zombie.motiony = vector.y weapon.state
scoreboard players operation @s zombie.motionz = vector.z weapon.state
scoreboard players reset punch weapon.state
execute as @e[type=marker,tag=summon] run function system:death
