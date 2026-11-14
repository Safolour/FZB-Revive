function zombie:skill/nether/firelord/p5/hazards/cleanup
execute in minecraft:overworld as @e[tag=shop,tag=soulflamethrower] run function system:death
function zombie:skill/nether/firelord/p5/terminal/doors/cancel
kill @e[tag=fl.terminal]
tag @a remove fl.using
tag @a remove firelord.p5.route2.east
tag @a remove firelord.p5.route2.south
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p5.route2.east
tag @e[type=ghast,tag=firelord.p2.ghast] remove firelord.p5.route2.south
scoreboard players reset @a fl.id
execute if data storage map:r40 terminals if block 341 93 191 minecraft:lever run setblock 341 93 191 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 296 100 235 minecraft:lever run setblock 296 100 235 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 337 102 217 minecraft:lever run setblock 337 102 217 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 321 95 237 minecraft:lever run setblock 321 95 237 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 363 114 232 minecraft:lever run setblock 363 114 232 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 338 116 256 minecraft:lever run setblock 338 116 256 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 375 127 273 minecraft:lever run setblock 375 127 273 minecraft:lever[face=floor,facing=north,powered=false]
execute if data storage map:r40 terminals if block 360 128 288 minecraft:lever run setblock 360 128 288 minecraft:lever[face=floor,facing=north,powered=false]
data remove storage map:r40 terminals
execute if score #f288_176 fl.force matches 0 run forceload remove 288 176
scoreboard players reset #f288_176 fl.force
execute if score #f288_192 fl.force matches 0 run forceload remove 288 192
scoreboard players reset #f288_192 fl.force
execute if score #f288_208 fl.force matches 0 run forceload remove 288 208
scoreboard players reset #f288_208 fl.force
execute if score #f288_224 fl.force matches 0 run forceload remove 288 224
scoreboard players reset #f288_224 fl.force
execute if score #f288_240 fl.force matches 0 run forceload remove 288 240
scoreboard players reset #f288_240 fl.force
execute if score #f288_256 fl.force matches 0 run forceload remove 288 256
scoreboard players reset #f288_256 fl.force
execute if score #f288_272 fl.force matches 0 run forceload remove 288 272
scoreboard players reset #f288_272 fl.force
execute if score #f288_288 fl.force matches 0 run forceload remove 288 288
scoreboard players reset #f288_288 fl.force
execute if score #f304_176 fl.force matches 0 run forceload remove 304 176
scoreboard players reset #f304_176 fl.force
execute if score #f304_192 fl.force matches 0 run forceload remove 304 192
scoreboard players reset #f304_192 fl.force
execute if score #f304_208 fl.force matches 0 run forceload remove 304 208
scoreboard players reset #f304_208 fl.force
execute if score #f304_224 fl.force matches 0 run forceload remove 304 224
scoreboard players reset #f304_224 fl.force
execute if score #f304_240 fl.force matches 0 run forceload remove 304 240
scoreboard players reset #f304_240 fl.force
execute if score #f304_256 fl.force matches 0 run forceload remove 304 256
scoreboard players reset #f304_256 fl.force
execute if score #f304_272 fl.force matches 0 run forceload remove 304 272
scoreboard players reset #f304_272 fl.force
execute if score #f304_288 fl.force matches 0 run forceload remove 304 288
scoreboard players reset #f304_288 fl.force
execute if score #f320_176 fl.force matches 0 run forceload remove 320 176
scoreboard players reset #f320_176 fl.force
execute if score #f320_192 fl.force matches 0 run forceload remove 320 192
scoreboard players reset #f320_192 fl.force
execute if score #f320_208 fl.force matches 0 run forceload remove 320 208
scoreboard players reset #f320_208 fl.force
execute if score #f320_224 fl.force matches 0 run forceload remove 320 224
scoreboard players reset #f320_224 fl.force
execute if score #f320_240 fl.force matches 0 run forceload remove 320 240
scoreboard players reset #f320_240 fl.force
execute if score #f320_256 fl.force matches 0 run forceload remove 320 256
scoreboard players reset #f320_256 fl.force
execute if score #f320_272 fl.force matches 0 run forceload remove 320 272
scoreboard players reset #f320_272 fl.force
execute if score #f320_288 fl.force matches 0 run forceload remove 320 288
scoreboard players reset #f320_288 fl.force
execute if score #f336_176 fl.force matches 0 run forceload remove 336 176
scoreboard players reset #f336_176 fl.force
execute if score #f336_192 fl.force matches 0 run forceload remove 336 192
scoreboard players reset #f336_192 fl.force
execute if score #f336_208 fl.force matches 0 run forceload remove 336 208
scoreboard players reset #f336_208 fl.force
execute if score #f336_224 fl.force matches 0 run forceload remove 336 224
scoreboard players reset #f336_224 fl.force
execute if score #f336_240 fl.force matches 0 run forceload remove 336 240
scoreboard players reset #f336_240 fl.force
execute if score #f336_256 fl.force matches 0 run forceload remove 336 256
scoreboard players reset #f336_256 fl.force
execute if score #f336_272 fl.force matches 0 run forceload remove 336 272
scoreboard players reset #f336_272 fl.force
execute if score #f336_288 fl.force matches 0 run forceload remove 336 288
scoreboard players reset #f336_288 fl.force
execute if score #f352_176 fl.force matches 0 run forceload remove 352 176
scoreboard players reset #f352_176 fl.force
execute if score #f352_192 fl.force matches 0 run forceload remove 352 192
scoreboard players reset #f352_192 fl.force
execute if score #f352_208 fl.force matches 0 run forceload remove 352 208
scoreboard players reset #f352_208 fl.force
execute if score #f352_224 fl.force matches 0 run forceload remove 352 224
scoreboard players reset #f352_224 fl.force
execute if score #f352_240 fl.force matches 0 run forceload remove 352 240
scoreboard players reset #f352_240 fl.force
execute if score #f352_256 fl.force matches 0 run forceload remove 352 256
scoreboard players reset #f352_256 fl.force
execute if score #f352_272 fl.force matches 0 run forceload remove 352 272
scoreboard players reset #f352_272 fl.force
execute if score #f352_288 fl.force matches 0 run forceload remove 352 288
scoreboard players reset #f352_288 fl.force
execute if score #f368_176 fl.force matches 0 run forceload remove 368 176
scoreboard players reset #f368_176 fl.force
execute if score #f368_192 fl.force matches 0 run forceload remove 368 192
scoreboard players reset #f368_192 fl.force
execute if score #f368_208 fl.force matches 0 run forceload remove 368 208
scoreboard players reset #f368_208 fl.force
execute if score #f368_224 fl.force matches 0 run forceload remove 368 224
scoreboard players reset #f368_224 fl.force
execute if score #f368_240 fl.force matches 0 run forceload remove 368 240
scoreboard players reset #f368_240 fl.force
execute if score #f368_256 fl.force matches 0 run forceload remove 368 256
scoreboard players reset #f368_256 fl.force
execute if score #f368_272 fl.force matches 0 run forceload remove 368 272
scoreboard players reset #f368_272 fl.force
execute if score #f368_288 fl.force matches 0 run forceload remove 368 288
scoreboard players reset #f368_288 fl.force
execute if score #f384_176 fl.force matches 0 run forceload remove 384 176
scoreboard players reset #f384_176 fl.force
execute if score #f384_192 fl.force matches 0 run forceload remove 384 192
scoreboard players reset #f384_192 fl.force
execute if score #f384_208 fl.force matches 0 run forceload remove 384 208
scoreboard players reset #f384_208 fl.force
execute if score #f384_224 fl.force matches 0 run forceload remove 384 224
scoreboard players reset #f384_224 fl.force
execute if score #f384_240 fl.force matches 0 run forceload remove 384 240
scoreboard players reset #f384_240 fl.force
execute if score #f384_256 fl.force matches 0 run forceload remove 384 256
scoreboard players reset #f384_256 fl.force
execute if score #f384_272 fl.force matches 0 run forceload remove 384 272
scoreboard players reset #f384_272 fl.force
execute if score #f384_288 fl.force matches 0 run forceload remove 384 288
scoreboard players reset #f384_288 fl.force
execute if score #f400_176 fl.force matches 0 run forceload remove 400 176
scoreboard players reset #f400_176 fl.force
execute if score #f400_192 fl.force matches 0 run forceload remove 400 192
scoreboard players reset #f400_192 fl.force
execute if score #f400_208 fl.force matches 0 run forceload remove 400 208
scoreboard players reset #f400_208 fl.force
execute if score #f400_224 fl.force matches 0 run forceload remove 400 224
scoreboard players reset #f400_224 fl.force
execute if score #f400_240 fl.force matches 0 run forceload remove 400 240
scoreboard players reset #f400_240 fl.force
execute if score #f400_256 fl.force matches 0 run forceload remove 400 256
scoreboard players reset #f400_256 fl.force
execute if score #f400_272 fl.force matches 0 run forceload remove 400 272
scoreboard players reset #f400_272 fl.force
execute if score #f400_288 fl.force matches 0 run forceload remove 400 288
scoreboard players reset #f400_288 fl.force
execute if score #f416_176 fl.force matches 0 run forceload remove 416 176
scoreboard players reset #f416_176 fl.force
execute if score #f416_192 fl.force matches 0 run forceload remove 416 192
scoreboard players reset #f416_192 fl.force
execute if score #f416_208 fl.force matches 0 run forceload remove 416 208
scoreboard players reset #f416_208 fl.force
execute if score #f416_224 fl.force matches 0 run forceload remove 416 224
scoreboard players reset #f416_224 fl.force
execute if score #f416_240 fl.force matches 0 run forceload remove 416 240
scoreboard players reset #f416_240 fl.force
execute if score #f416_256 fl.force matches 0 run forceload remove 416 256
scoreboard players reset #f416_256 fl.force
execute if score #f416_272 fl.force matches 0 run forceload remove 416 272
scoreboard players reset #f416_272 fl.force
execute if score #f416_288 fl.force matches 0 run forceload remove 416 288
scoreboard players reset #f416_288 fl.force
execute if score #f432_176 fl.force matches 0 run forceload remove 432 176
scoreboard players reset #f432_176 fl.force
execute if score #f432_192 fl.force matches 0 run forceload remove 432 192
scoreboard players reset #f432_192 fl.force
execute if score #f432_208 fl.force matches 0 run forceload remove 432 208
scoreboard players reset #f432_208 fl.force
execute if score #f432_224 fl.force matches 0 run forceload remove 432 224
scoreboard players reset #f432_224 fl.force
execute if score #f432_240 fl.force matches 0 run forceload remove 432 240
scoreboard players reset #f432_240 fl.force
execute if score #f432_256 fl.force matches 0 run forceload remove 432 256
scoreboard players reset #f432_256 fl.force
execute if score #f432_272 fl.force matches 0 run forceload remove 432 272
scoreboard players reset #f432_272 fl.force
execute if score #f432_288 fl.force matches 0 run forceload remove 432 288
scoreboard players reset #f432_288 fl.force
execute if score #f448_176 fl.force matches 0 run forceload remove 448 176
scoreboard players reset #f448_176 fl.force
execute if score #f448_192 fl.force matches 0 run forceload remove 448 192
scoreboard players reset #f448_192 fl.force
execute if score #f448_208 fl.force matches 0 run forceload remove 448 208
scoreboard players reset #f448_208 fl.force
execute if score #f448_224 fl.force matches 0 run forceload remove 448 224
scoreboard players reset #f448_224 fl.force
execute if score #f448_240 fl.force matches 0 run forceload remove 448 240
scoreboard players reset #f448_240 fl.force
execute if score #f448_256 fl.force matches 0 run forceload remove 448 256
scoreboard players reset #f448_256 fl.force
execute if score #f448_272 fl.force matches 0 run forceload remove 448 272
scoreboard players reset #f448_272 fl.force
execute if score #f448_288 fl.force matches 0 run forceload remove 448 288
scoreboard players reset #f448_288 fl.force
