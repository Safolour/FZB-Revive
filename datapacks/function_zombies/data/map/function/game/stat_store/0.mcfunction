
execute unless items block 1 -60 1 container.1 paper run item replace block 1 -60 1 container.1 with paper[custom_data={root:{}}]

return fail
scoreboard players set loop game.player 0
function map:game/stat_store/1
#\
{global:{},player:[{name:bruh,stat:{}}]}