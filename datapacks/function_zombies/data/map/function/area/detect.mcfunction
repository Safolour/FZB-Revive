

#需要计分板
#scoreboard objectives add area dummy
scoreboard players set @s area 0

#矿洞 100
execute if entity @s[x=20,y=24,z=102,dx=23.5,dy=12,dz=25] run scoreboard players set @s area 100

#遗迹 下层靠近锻造厂:200 下层靠近冰洞:201 楼梯:202 上层:203
execute if entity @s[x=44.5,y=23,z=99,dx=30,dy=10,dz=21] run scoreboard players set @s area 200
execute if entity @s[x=58,y=24,z=121,dx=17,dy=7,dz=10] run scoreboard players set @s area 201

execute if entity @s[x=49,y=24,z=121,dx=7,dy=11,dz=13] run scoreboard players set @s area 202
execute if entity @s[x=57,y=28,z=129,dx=2,dy=7,dz=4] run scoreboard players set @s area 202

execute if entity @s[x=60,y=31.5,z=127,dx=15,dy=16,dz=8] run scoreboard players set @s area 203
execute if entity @s[x=62,y=32,z=125,dx=4,dy=7,dz=1] run scoreboard players set @s area 203
execute if entity @s[x=56,y=33.5,z=106,dx=15,dy=7,dz=20] run scoreboard players set @s area 203

execute if entity @s[x=62,y=31,z=136,dx=4,dy=7,dz=5] run scoreboard players set @s area 203

#冰洞 靠近遗迹:300 靠近传送门废墟:301
execute if entity @s[x=76,y=24,z=111,dx=22,dy=27,dz=32] run scoreboard players set @s area 300

execute if entity @s[x=99,y=31,z=110,dx=22,dy=32,dz=32] run scoreboard players set @s area 301

#锻造厂 下层长通道靠近遗迹:500 下层中心:501 楼梯:502
# 上层(上):503 上层(中):504 上层(下):505 上层(小楼梯):506
# 侧边通道靠近下层:507 侧边通道靠近上层:508
execute if entity @s[x=60,y=25,z=57,dx=8,dy=17,dz=41] run scoreboard players set @s area 500

execute if entity @s[x=69,y=30,z=66,dx=18,dy=10.5,dz=16] run scoreboard players set @s area 501

execute if entity @s[x=69,y=34,z=61,dx=17,dy=14,dz=4] run scoreboard players set @s area 502

execute if entity @s[x=67,y=42,z=66,dx=14,dy=20,dz=22] run scoreboard players set @s area 503

execute if entity @s[x=82,y=41,z=67,dx=11,dy=20,dz=30] run scoreboard players set @s area 504
execute if entity @s[x=81,y=41,z=69,dx=0,dy=2,dz=13] run scoreboard players set @s area 504
execute if entity @s[x=90,y=38,z=70,dx=3,dy=2,dz=3] run scoreboard players set @s area 504

execute if entity @s[x=94,y=38,z=65,dx=14,dy=20,dz=23] run scoreboard players set @s area 505
execute if entity @s[x=93,y=38,z=74,dx=0,dy=2,dz=12] run scoreboard players set @s area 505

execute if entity @s[x=86,y=44,z=93,dx=7,dy=8,dz=4] run scoreboard players set @s area 506
execute if entity @s[x=89,y=47,z=88,dx=4,dy=5,dz=5] run scoreboard players set @s area 506

execute if entity @s[x=67,y=31,z=51,dx=6,dy=8,dz=10] run scoreboard players set @s area 507
execute if entity @s[x=75,y=32,z=42,dx=10,dy=13,dz=15] run scoreboard players set @s area 507

execute if entity @s[x=86,y=35,z=42,dx=15,dy=12,dz=22] run scoreboard players set @s area 508

#发电站
execute if entity @s[x=109,y=38,z=63,dx=21,dy=18,dz=21] run scoreboard players set @s area 600
execute if entity @s[x=106,y=39,z=66,dx=2,dy=7,dz=2] run scoreboard players set @s area 600

#传送门废墟
execute if entity @s[x=119,y=36,z=109,dx=0,dy=10,dz=1] run scoreboard players set @s area 400
execute if entity @s[x=120,y=36,z=109,dx=0,dy=10,dz=2] run scoreboard players set @s area 400
execute if entity @s[x=121,y=36,z=109,dx=1,dy=10,dz=3] run scoreboard players set @s area 400
execute if entity @s[x=117,y=36,z=90,dx=5,dy=23,dz=18] run scoreboard players set @s area 400
execute if entity @s[x=123,y=36,z=84,dx=15,dy=23,dz=30] run scoreboard players set @s area 400

#实验室 蓝色房间:700 黄色房间:701 绿色房间:702 灰色房间:703 桥靠近传送门:704 桥靠近入口:705
#光房间:706 暗房间:707  #光房间是南方的那个房间 暗房间是北方的那个房间
execute if entity @s[x=131,y=39,z=58,dx=25,dy=17,dz=28] run scoreboard players set @s area 700

execute if entity @s[x=139,y=39,z=44,dx=11,dy=11,dz=14] run scoreboard players set @s area 701

execute if entity @s[x=150,y=44,z=48,dx=28,dy=12,dz=22] run scoreboard players set @s area 703

execute if entity @s[x=150,y=44,z=55,dx=0,dy=5,dz=2] run scoreboard players set @s area 701

execute if entity @s[x=157,y=44,z=73,dx=21,dy=11,dz=16] run scoreboard players set @s area 702

execute if entity @s[x=179,y=43,z=59,dx=23,dy=8,dz=4] run scoreboard players set @s area 704

execute if entity @s[x=179,y=43,z=81,dx=23,dy=8,dz=4] run scoreboard players set @s area 705

execute if entity @s[x=203,y=39,z=81,dx=24,dy=12,dz=29] run scoreboard players set @s area 706

execute if entity @s[x=203,y=44,z=40,dx=26,dy=21,dz=23] run scoreboard players set @s area 707

#Portal Lab
execute if entity @s[x=287,y=80,z=129,dx=27,dy=34,dz=44] run scoreboard players set @s area 1000
# R40 核心及逃离通道；模板区域位于更东侧，不属于可游玩区域。
execute if score type map matches 4 if entity @s[x=288,y=80,z=173,dx=102,dy=56,dz=131] run scoreboard players set @s area 1001

return fail
#测试
execute if score @s area matches 100 run say 矿洞
execute if score @s area matches 200 run say 遗迹(底层 靠近锻造厂这边)
execute if score @s area matches 201 run say 遗迹(底层 靠近冰洞这边)
execute if score @s area matches 202 run say 遗迹(楼梯)
execute if score @s area matches 203 run say 遗迹(上层)
execute if score @s area matches 300 run say 冰洞(靠近遗迹)
execute if score @s area matches 301 run say 冰洞(靠近传送门废墟)
execute if score @s area matches 400 run say 传送门废墟
execute if score @s area matches 500 run say 锻造厂(下层 长通道 靠近遗迹)
execute if score @s area matches 501 run say 锻造厂(下层 中心 靠近发电站)
execute if score @s area matches 502 run say 锻造厂(楼梯)
execute if score @s area matches 503 run say 锻造厂(上层 上)
execute if score @s area matches 504 run say 锻造厂(上层 中)
execute if score @s area matches 505 run say 锻造厂(上层 下)
execute if score @s area matches 506 run say 锻造厂(上层 小楼梯)
execute if score @s area matches 507 run say 锻造厂(侧边通道 靠近下层)
execute if score @s area matches 508 run say 锻造厂(侧边通道 靠近上层)
execute if score @s area matches 600 run say 发电站
execute if score @s area matches 700 run say 实验室(蓝色房间)
execute if score @s area matches 701 run say 实验室(黄色房间)
execute if score @s area matches 702 run say 实验室(绿色房间)
execute if score @s area matches 703 run say 实验室(灰色房间)
execute if score @s area matches 704 run say 实验室(桥 靠近传送门)
execute if score @s area matches 705 run say 实验室(桥 靠近入口)
execute if score @s area matches 706 run say 实验室(光房间)
execute if score @s area matches 707 run say 实验室(暗房间)
execute if score @s area matches 1000 run say Portal Lab
