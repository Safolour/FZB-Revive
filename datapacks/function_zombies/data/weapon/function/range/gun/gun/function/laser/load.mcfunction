# 毁灭激光
#   weapon.function_charge  函数枪当前充能，容量固定 1000；每次普通子弹或激光命中 +1
#   weapon.laser_cap  固定充能上限 1000
#   weapon.laser_threshold  每把枪独立释放阈值，初始 1000；每个激光命中 −2，最低 200
#   weapon.laser_s / laser_t 光束 item_display 当前的粗细（×100）和已存在的 tick 数
scoreboard objectives add weapon.function_charge dummy
scoreboard objectives add weapon.laser_cap dummy
scoreboard objectives add weapon.laser_threshold dummy
scoreboard objectives add weapon.laser_s dummy
scoreboard objectives add weapon.laser_t dummy
#   weapon.laser_c / laser_yaw / laser_pitch / laser_slot  蓄力 tick、按 Q 时的朝向（×1000）和槽位
scoreboard objectives add weapon.laser_c dummy
scoreboard objectives add weapon.laser_yaw dummy
scoreboard objectives add weapon.laser_pitch dummy
scoreboard objectives add weapon.laser_slot dummy
