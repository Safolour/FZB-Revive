# 将非负编号拆成十个十进制数字，供计分板隐藏名称使用。
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d0 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d1 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d2 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d3 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d4 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d5 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d6 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d7 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d8 int 1 run scoreboard players get #scoreboard_digit uuid
scoreboard players operation #scoreboard_id uuid /= #scoreboard_base uuid
scoreboard players operation #scoreboard_digit uuid = #scoreboard_id uuid
scoreboard players operation #scoreboard_digit uuid %= #scoreboard_base uuid
execute store result storage game root.player.d9 int 1 run scoreboard players get #scoreboard_digit uuid
