# One aimed flame and one wide-scatter flame per emission.
execute if entity @a[gamemode=adventure,scores={stat.player=1,system.room=4..},distance=..80] run function zombie:skill/nether/firelord/p3/eclipse/shoot_pair
