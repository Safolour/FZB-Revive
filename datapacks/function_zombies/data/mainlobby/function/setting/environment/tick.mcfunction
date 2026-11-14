# One first check also finds a session left by an offline player across /reset.
execute as @a at @s unless score @s setting.env matches 0..1 run function mainlobby:setting/environment/reconcile
execute as @a[scores={setting.env=1}] at @s unless score @s system.room matches 2 run function mainlobby:setting/environment/leave
execute as @a[scores={system.room=2,setting.env=0}] at @s run function mainlobby:setting/environment/enter
