# Preserve the physical table; only the isolated interaction and labels rebuild.
execute if score tick system.stat matches 1 run function mainlobby:setting/ultimate/spawn
