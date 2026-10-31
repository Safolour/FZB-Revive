return 0

summon marker ~ ~ ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.0","chosen"]}

summon marker ~1 ~ ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
summon marker ~-1 ~ ~ {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
summon marker ~ ~ ~1 {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}
summon marker ~ ~ ~-1 {Tags:["mob.skill","skill.guardian","skill.guardian.floor.platform.marker","skill.guardian.floor.platform.marker.1","chosen"]}

setblock ~ ~ ~ pearlescent_froglight
setblock ~1 ~ ~ polished_tuff
setblock ~-1 ~ ~ polished_tuff
setblock ~ ~ ~1 polished_tuff
setblock ~ ~ ~-1 polished_tuff
