# Called by initialization/reload; do not rebuild opened menus every tick.
function mainlobby:setting/npc/spawn
function mainlobby:setting/ultimate/spawn
execute if entity @a[scores={system.room=2}] run function mainlobby:setting/dummy/spawn
