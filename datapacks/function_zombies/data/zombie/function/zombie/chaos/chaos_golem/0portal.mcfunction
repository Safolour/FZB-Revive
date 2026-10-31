summon lightning_bolt 300 110 120
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.chaosgolem"}],color:"#ff8a00"}

execute positioned 300 100 126 run function zombie:zombie/chaos/chaos_golem/0
