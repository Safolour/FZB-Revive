$tellraw @a[scores={system.room=4..}] {translate:"zb.dialog.monhan.text.buy.1",with:[{selector:"@s"},{translate:"zb.zombie.name.monhan",color:"#FF674E"},{text:"§a$(n)"}]}
execute as @a[scores={system.room=4..}] at @s run playsound entity.blaze.shoot record @s ~ ~ ~ 1 0.8
