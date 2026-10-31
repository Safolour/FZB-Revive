# 算出本 tick 新开的枪数 #shot 和新命中数 #hit（weapon.gun_shot / gun_hit 是累计值）
execute unless score @s weapon.gun_hit = @s weapon.gun_hit run scoreboard players set @s weapon.gun_hit 0
execute unless score @s perk.last_shot = @s perk.last_shot run scoreboard players operation @s perk.last_shot = @s weapon.gun_shot
execute unless score @s perk.last_hit = @s perk.last_hit run scoreboard players operation @s perk.last_hit = @s weapon.gun_hit
scoreboard players operation #shot perk = @s weapon.gun_shot
scoreboard players operation #shot perk -= @s perk.last_shot
scoreboard players operation #hit perk = @s weapon.gun_hit
scoreboard players operation #hit perk -= @s perk.last_hit
scoreboard players operation @s perk.last_shot = @s weapon.gun_shot
scoreboard players operation @s perk.last_hit = @s weapon.gun_hit
