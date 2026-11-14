scoreboard players set @s inventory 2
execute if items entity @s container.0 *[custom_data~{gun:"paradox"}] run item modify entity @s container.0 weapon:paradox/dream
execute if items entity @s container.1 *[custom_data~{gun:"paradox"}] run item modify entity @s container.1 weapon:paradox/dream
execute if items entity @s container.2 *[custom_data~{gun:"paradox"}] run item modify entity @s container.2 weapon:paradox/dream
execute if items entity @s container.3 *[custom_data~{gun:"paradox"}] run item modify entity @s container.3 weapon:paradox/dream
execute if items entity @s container.4 *[custom_data~{gun:"paradox"}] run item modify entity @s container.4 weapon:paradox/dream
execute if items entity @s container.5 *[custom_data~{gun:"paradox"}] run item modify entity @s container.5 weapon:paradox/dream
execute if items entity @s container.6 *[custom_data~{gun:"paradox"}] run item modify entity @s container.6 weapon:paradox/dream
execute if items entity @s container.7 *[custom_data~{gun:"paradox"}] run item modify entity @s container.7 weapon:paradox/dream
execute if items entity @s container.8 *[custom_data~{gun:"paradox"}] run item modify entity @s container.8 weapon:paradox/dream
function inventory:item_store0
scoreboard players set @s inventory 1
