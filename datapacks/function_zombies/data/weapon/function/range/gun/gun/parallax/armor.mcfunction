# 红色激光削甲。x = zombie.armor_init（出生时的护甲，恢复也不改）
# 每下扣 1%*x。护甲是整数，扣不下一个点的部分攒在 zombie.armor_frac（百分之一点）
# 最低停在 x/2（50%*x，整数除法，奇数会少半点）
# 起源 boss 还没做。做的时候它的下限不是 50%*x，而是 80%*x*75%

execute unless score @s zombie.armor_init = @s zombie.armor_init run scoreboard players operation @s zombie.armor_init = @s zombie.armor
execute unless score @s zombie.armor_init matches 1.. run return 0
execute unless score @s zombie.armor = @s zombie.armor run return 0
execute unless score @s zombie.armor_frac = @s zombie.armor_frac run scoreboard players set @s zombie.armor_frac 0

scoreboard players operation #floor weapon.state = @s zombie.armor_init
scoreboard players operation #floor weapon.state /= 2 number
execute if score @s zombie.armor <= #floor weapon.state run return 0

scoreboard players operation @s zombie.armor_frac += @s zombie.armor_init
scoreboard players operation #cut weapon.state = @s zombie.armor_frac
scoreboard players operation #cut weapon.state /= 100 number
scoreboard players operation @s zombie.armor_frac %= 100 number

scoreboard players operation #next weapon.state = @s zombie.armor
scoreboard players operation #next weapon.state -= #cut weapon.state
execute if score #next weapon.state > #floor weapon.state run return run scoreboard players operation @s zombie.armor = #next weapon.state
scoreboard players operation @s zombie.armor = #floor weapon.state
scoreboard players set @s zombie.armor_frac 0
