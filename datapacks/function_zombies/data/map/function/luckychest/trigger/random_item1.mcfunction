
#$tellraw @a [{text:"$(item) "},{nbt:"item[$(item)].id",storage:luckychest}]
$function map:luckychest/trigger/random_item2 with storage luckychest item[$(item)]