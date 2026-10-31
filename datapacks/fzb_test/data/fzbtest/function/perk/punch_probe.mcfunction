# 以假人身份执行：模拟手枪子弹击中靶子时的击退计算，把靶子得到的 zombie.motionz 记到 #probe_mz perk（击退在同一 tick 内就会被消耗，测试读不到）
execute anchored eyes run summon marker ^ ^ ^1 {Tags:["chosen","fzbtest_probe"]}
scoreboard players operation @s weapon.use = uuid weapon.gun_pistol
scoreboard players operation punch weapon.state = punch weapon.gun_pistol
execute as @e[tag=fzbtest_target,limit=1] at @s run function weapon:range/gun/damage/punch
scoreboard players operation #probe_mz perk = @e[tag=fzbtest_target,limit=1] zombie.motionz
scoreboard players set @e[tag=fzbtest_target] zombie.motionz 0
scoreboard players set @s weapon.use 0
kill @e[tag=fzbtest_probe]
