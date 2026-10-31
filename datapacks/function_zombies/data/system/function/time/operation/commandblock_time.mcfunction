
data modify storage time root.time.hour set string block 2 -60 1 LastOutput.text 1 3
data modify storage time root.time.minute set string block 2 -60 1 LastOutput.text 4 6
data modify storage time root.time.second set string block 2 -60 1 LastOutput.text 7 9

function system:time/operation/commandblock_time0 with storage time root.time