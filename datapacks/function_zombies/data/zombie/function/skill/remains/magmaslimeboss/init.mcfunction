
summon lightning_bolt 300 110 120
tellraw @a[scores={system.room=4..}] {"translate":"zb.zombie.spawn",with:[{"translate":"zb.zombie.name.remains.magmaslimeboss"}],color:dark_red}

schedule function zombie:skill/remains/magmaslimeboss/warning/0 1s
