
#D=d*min{500,(500-(min{400,max{4v,20v-80d/(8+t)}}-75p))}/500
#w0=20v-80d/(8+t)
#w1=max{4v,w0}
#w2=min{400,w1}-75p
#w3=(500-w2)
#w4=d*min(500,w3)
#D=w4/500

#execute if entity @s[scores={inventory.armor=0}] run return run scoreboard players operation d health.operation *= 2 number
 scoreboard players set p health.operation 0
scoreboard players operation v health.operation = @s armor.armor
scoreboard players operation t health.operation = @s armor.toughness

#tellraw @a [{score:{name:"d",objective:health.operation}}]
#w0=20v-80d/(8+t)
scoreboard players operation w0_0 health.operation = t health.operation
scoreboard players add w0_0 health.operation 8
#tellraw @a [{score:{name:"w0_0",objective:health.operation}}]

scoreboard players operation w0_1 health.operation = d health.operation
scoreboard players operation w0_1 health.operation *= 8 number
#tellraw @a [{score:{name:"w0_1",objective:health.operation}}]
scoreboard players operation w0_1 health.operation /= w0_0 health.operation
#tellraw @a [{score:{name:"w0_1",objective:health.operation}}]

scoreboard players operation w0_2 health.operation = v health.operation
scoreboard players operation w0_2 health.operation *= 20 number
scoreboard players operation w0_2 health.operation -= w0_1 health.operation

scoreboard players operation w0 health.operation = w0_2 health.operation
#w1=max{4v,w0}
scoreboard players operation w1_0 health.operation = v health.operation
scoreboard players operation w1_0 health.operation *= 4 number
scoreboard players operation w1_0 health.operation > w0 health.operation

scoreboard players operation w1 health.operation = w1_0 health.operation
#w2=min{400,w1}-75p
scoreboard players set w2_0 health.operation 400
scoreboard players operation w2_0 health.operation < w1 health.operation

scoreboard players operation w2_1 health.operation = p health.operation
scoreboard players operation w2_1 health.operation *= 75 number

scoreboard players operation w2_0 health.operation -= w2_1 health.operation

scoreboard players operation w2 health.operation = w2_0 health.operation
#w3=(500-w2)
scoreboard players set w3_0 health.operation 500
scoreboard players operation w3_0 health.operation -= w2 health.operation
scoreboard players operation w3 health.operation = w3_0 health.operation
#w4=d*min(500,w3)
scoreboard players set w4_0 health.operation 500
scoreboard players operation w4_0 health.operation < w3 health.operation
scoreboard players operation w4_0 health.operation *= d health.operation

scoreboard players operation w4 health.operation = w4_0 health.operation
#D=w4/500
scoreboard players operation damage health.operation = w4 health.operation
scoreboard players operation damage health.operation /= 500 number

#scoreboard players operation damage0 health.operation *= 10 number
