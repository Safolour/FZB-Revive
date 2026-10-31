
#scoreboard players set time zombie.skill.missile 25 --设置投掷物砸到目标的时间
#execute at @n[type=zombie] run function zombie:skill/missile/start 以执行者为初始位置 @n[type=zombie]为目标位置运算得出Motion
 #function zombie:skill/missile/2 with storage zombie.skill.missile root.motion 一个投掷物例子
function zombie:skill/missile/0
#