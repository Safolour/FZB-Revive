# 仅选取资源包的传送门实验室专属建议。
function map:area/lab/monhan/dialog/begin
scoreboard players set @s monhan.page 71
execute store result score #r monhan run random value 12..37
execute if score #r monhan matches 12 run function map:area/lab/monhan/dialog/say {t:"tips.pl.0"}
execute if score #r monhan matches 13 run function map:area/lab/monhan/dialog/say {t:"tips.pl.1"}
execute if score #r monhan matches 14 run function map:area/lab/monhan/dialog/say {t:"tips.pl.2"}
execute if score #r monhan matches 15 run function map:area/lab/monhan/dialog/say {t:"tips.pl.3"}
execute if score #r monhan matches 16 run function map:area/lab/monhan/dialog/say {t:"tips.pl.4"}
execute if score #r monhan matches 17 run function map:area/lab/monhan/dialog/say {t:"tips.pl.5"}
execute if score #r monhan matches 18 run function map:area/lab/monhan/dialog/say {t:"tips.pl.6"}
execute if score #r monhan matches 19 run function map:area/lab/monhan/dialog/say {t:"tips.pl.7"}
execute if score #r monhan matches 20 run function map:area/lab/monhan/dialog/say {t:"tips.pl.8"}
execute if score #r monhan matches 21 run function map:area/lab/monhan/dialog/say {t:"tips.pl.9"}
execute if score #r monhan matches 22 run function map:area/lab/monhan/dialog/say {t:"tips.pl.10"}
execute if score #r monhan matches 23 run function map:area/lab/monhan/dialog/say {t:"tips.pl.11"}
execute if score #r monhan matches 24 run function map:area/lab/monhan/dialog/say {t:"tips.pl.12"}
execute if score #r monhan matches 25 run function map:area/lab/monhan/dialog/say {t:"tips.pl.13"}
execute if score #r monhan matches 26 run function map:area/lab/monhan/dialog/say {t:"tips.pl.14"}
execute if score #r monhan matches 27 run function map:area/lab/monhan/dialog/say {t:"tips.pl.15"}
execute if score #r monhan matches 28 run function map:area/lab/monhan/dialog/say {t:"tips.pl.16"}
execute if score #r monhan matches 29 run function map:area/lab/monhan/dialog/say {t:"tips.pl.17"}
execute if score #r monhan matches 30 run function map:area/lab/monhan/dialog/say {t:"tips.pl.18"}
execute if score #r monhan matches 31 run function map:area/lab/monhan/dialog/say {t:"tips.pl.19"}
execute if score #r monhan matches 32 run function map:area/lab/monhan/dialog/say {t:"tips.pl.20"}
execute if score #r monhan matches 33 run function map:area/lab/monhan/dialog/say {t:"tips.pl.21"}
execute if score #r monhan matches 34 run function map:area/lab/monhan/dialog/say {t:"tips.pl.22"}
execute if score #r monhan matches 35 run function map:area/lab/monhan/dialog/say {t:"tips.pl.23"}
execute if score #r monhan matches 36 run function map:area/lab/monhan/dialog/say {t:"tips.pl.24"}
execute if score #r monhan matches 37 run function map:area/lab/monhan/dialog/say {t:"tips.pl.25"}
function map:area/lab/monhan/dialog/opt {c:3,t:"tips.3",i:1}
function map:area/lab/monhan/dialog/opt {c:3,t:"tips.4",i:2}
function map:area/lab/monhan/dialog/gap
function map:area/lab/monhan/dialog/opt {c:1,t:"tips.9",i:3}
function map:area/lab/monhan/dialog/gap
