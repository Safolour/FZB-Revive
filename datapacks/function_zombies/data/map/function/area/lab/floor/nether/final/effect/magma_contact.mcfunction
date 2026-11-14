# 使用玩家脚部碰撞箱的四角，避免中心点在相邻安全块时漏判。
execute positioned ~-0.299 ~ ~-0.299 align xyz if block ~ ~ ~ magma_block run return 1
execute positioned ~-0.299 ~ ~-0.299 align xyz if block ~ ~-1 ~ magma_block run return 1
execute positioned ~-0.299 ~ ~-0.299 align xyz if block ~ ~-2 ~ magma_block run return 1
execute positioned ~-0.299 ~ ~0.299 align xyz if block ~ ~ ~ magma_block run return 1
execute positioned ~-0.299 ~ ~0.299 align xyz if block ~ ~-1 ~ magma_block run return 1
execute positioned ~-0.299 ~ ~0.299 align xyz if block ~ ~-2 ~ magma_block run return 1
execute positioned ~0.299 ~ ~-0.299 align xyz if block ~ ~ ~ magma_block run return 1
execute positioned ~0.299 ~ ~-0.299 align xyz if block ~ ~-1 ~ magma_block run return 1
execute positioned ~0.299 ~ ~-0.299 align xyz if block ~ ~-2 ~ magma_block run return 1
execute positioned ~0.299 ~ ~0.299 align xyz if block ~ ~ ~ magma_block run return 1
execute positioned ~0.299 ~ ~0.299 align xyz if block ~ ~-1 ~ magma_block run return 1
execute positioned ~0.299 ~ ~0.299 align xyz if block ~ ~-2 ~ magma_block run return 1
return 0
