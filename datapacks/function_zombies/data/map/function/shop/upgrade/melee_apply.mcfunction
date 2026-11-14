$function weapon:melee/_get_item/replace/$(upgrade) with storage map:shop_upgrade context.item
execute in minecraft:overworld run function inventory:item_store0
playsound entity.player.levelup record @s ~ ~ ~ 1 1 0
function map:shop/upgrade/melee_feedback with storage map:shop_upgrade context.item
