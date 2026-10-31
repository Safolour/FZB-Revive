
execute on vehicle on passengers if entity @s[type=item_display] run kill @s
execute on vehicle run kill @s
function system:death
particle block{block_state:stone} ~ ~0.3 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
particle item{item:diamond_sword} ~ ~0.3 ~ 0.05 0.05 0.05 0 10 force @a[scores={particle=0}]
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
playsound entity.arrow.hit_player record @a ~ ~ ~ 1.5 2
