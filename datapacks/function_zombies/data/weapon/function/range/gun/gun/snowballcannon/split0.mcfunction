
execute if score #split weapon.state matches ..0 run return fail
scoreboard players remove #split weapon.state 1
summon item ~ ~0.5 ~ {Tags:["fzb_small_new","gun","snowballcannon","projectile","bounce","small"],Item:{id:"snowball",count:1b,components:{custom_data:{}}},PickupDelay:32767s}
execute as @e[type=item,tag=fzb_small_new] run function weapon:range/gun/gun/snowballcannon/split1
function weapon:range/gun/gun/snowballcannon/split0
