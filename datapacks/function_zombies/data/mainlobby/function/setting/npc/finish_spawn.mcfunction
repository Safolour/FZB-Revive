# Wait for the anchor chunk, without spawning entities into unloaded chunks.
execute if score #wanted setting.npc matches 0 run return 0
function mainlobby:setting/npc/spawn
