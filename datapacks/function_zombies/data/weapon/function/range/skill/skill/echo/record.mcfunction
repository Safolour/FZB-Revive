# Called ONLY by the source gun after its burst completes; never by Echo.
execute unless items entity @s container.* *[custom_data~{skill:"echo"}] run return 0
execute store result storage weapon:echo call.id int 1 run scoreboard players get @s uuid
$data modify storage weapon:echo call.gun set value "$(gun)"
$scoreboard players operation @s weapon.echo_last = uuid weapon.gun_$(gun)
function weapon:range/skill/skill/echo/record0 with storage weapon:echo call
