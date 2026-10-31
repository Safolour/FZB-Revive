
scoreboard players set replaceable area.showcase 0
$execute unless items entity @s container.* *[custom_data~{tag:["$(ammo)"]}] run return run scoreboard players set replaceable area.showcase 1
tellraw @s [{translate:zb.area.showcase.tellraw.2}]
playsound entity.enderman.teleport record @s ~ ~ ~ 1 0 0