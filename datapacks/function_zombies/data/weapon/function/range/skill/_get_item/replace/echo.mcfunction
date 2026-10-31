scoreboard players set @s inventory 2
$item replace entity @s container.$(slot) with carrot_on_a_stick[max_damage=10000,item_model="minecraft:echo_shard",custom_data={slot:$(slot),skill:"echo",tag:["skill","echo","clear","range"]},custom_name={translate:"zb.item.skill.echo.name"},lore=[{translate:"zb.item.skill.echo.lore.0"},{translate:"zb.item.skill.echo.lore.1"},{text:""},{translate:"zb.item.skill.echo.lore.3"}]]
function weapon:range/skill/skill/echo/init
scoreboard players set @s inventory 1
function inventory:item_store
