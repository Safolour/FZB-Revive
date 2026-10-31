# floor/reset_blocks 用：地板一带 3×3 个区块都加载好了返回 1
execute unless loaded 283 0 128 run return fail
execute unless loaded 283 0 150 run return fail
execute unless loaded 283 0 175 run return fail
execute unless loaded 300 0 128 run return fail
execute unless loaded 300 0 150 run return fail
execute unless loaded 300 0 175 run return fail
execute unless loaded 317 0 128 run return fail
execute unless loaded 317 0 150 run return fail
execute unless loaded 317 0 175 run return fail
return 1
