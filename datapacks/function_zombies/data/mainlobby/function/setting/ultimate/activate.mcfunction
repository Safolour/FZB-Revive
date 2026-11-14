# Consume the machine click before weapon:tick can also fire the held gun.
scoreboard players set @s interaction.right_click 0
scoreboard players set @s weapon.rightclick 0
execute unless score @s system.room matches 2 run return 0
execute positioned 14.5 -59 845.5 unless entity @s[distance=..6] run return 0
execute if items entity @s weapon.mainhand *[custom_data~{tag:["maximum"]}] run return run function mainlobby:setting/ultimate/maximum
execute if items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","gun"]}] run return run function mainlobby:setting/ultimate/apply
execute if items entity @s weapon.mainhand *[custom_data~{tag:["upgradable","melee"]}] run return run function mainlobby:setting/ultimate/apply
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0
tellraw @s {translate:"zb.shop.tellraw.12"}
