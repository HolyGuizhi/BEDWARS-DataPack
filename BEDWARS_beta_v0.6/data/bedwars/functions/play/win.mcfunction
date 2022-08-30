#Guizhi

function bedwars:play/end_game
execute if entity @a[team=red] run title @a[team=!red] title {"text":"- 紅隊獲勝 -","color":"red"}
execute if entity @a[team=blue] run title @a[team=!blue] title {"text":"- 藍隊獲勝 -","color":"blue"}
execute if entity @a[team=yellow] run title @a[team=!yellow] title {"text":"- 黃隊獲勝 -","color":"yellow"}
execute if entity @a[team=green] run title @a[team=!green] title {"text":"- 綠隊獲勝 -","color":"green"}

title @a[team=red] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=blue] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=yellow] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=green] title {"text":"- Victory -","bold":true,"color":"gold"}

execute as @a at @s run playsound entity.ender_dragon.death ambient @s ~ ~ ~

tellraw @a {"text":"===================================================","color":"gold"}
tellraw @a {"text":">> 獲勝隊伍："}
execute if entity @a[team=blue] run tellraw @a [{"text":"    藍隊","color":"blue","bold":true},{"text":"獲勝！","color":"gold","bold":true}]
execute if entity @a[team=red] run tellraw @a [{"text":"    紅隊","color":"red","bold":true},{"text":"獲勝！","color":"gold","bold":true}]
execute if entity @a[team=yellow] run tellraw @a [{"text":"    黃隊","color":"yellow","bold":true},{"text":"獲勝！","color":"gold","bold":true}]
execute if entity @a[team=green] run tellraw @a [{"text":"    綠隊","color":"green","bold":true},{"text":"獲勝！","color":"gold","bold":true}]
tellraw @a {"text":">> 玩家戰績："}
execute as @a run tellraw @s [{"text":"     擊殺數：","color":"gold"},{"score":{"name":"@s","objective":"GameKillCount"},"color":"white"},{"text":" / ","color":"white"},{"text":"死亡次數：","color":"gold"},{"score":{"name":"@s","objective":"GameDeathCount"},"color":"white"},{"text":" / ","color":"white"},{"text":"破壞床數：","color":"gold"},{"score":{"name":"@s","objective":"destroy_beds"},"color":"white"}]
tellraw @a {"text":"===================================================","color":"gold"}
