#Guizhi

function bedwars:play/end_game
execute if entity @a[team=red] run title @a[team=!red] title {"text":"- 紅隊獲勝 -","color":"red"}
execute if entity @a[team=red] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":"  紅隊獲勝！ ","color":"red"}]
execute if entity @a[team=blue] run title @a[team=!blue] title {"text":"- 藍隊獲勝 -","color":"blue"}
execute if entity @a[team=blue] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":"  藍隊獲勝！ ","color":"blue"}]
execute if entity @a[team=yellow] run title @a[team=!yellow] title {"text":"- 黃隊獲勝 -","color":"yellow"}
execute if entity @a[team=yellow] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":"  黃隊獲勝！ ","color":"yellow"}]
execute if entity @a[team=green] run title @a[team=!green] title {"text":"- 綠隊獲勝 -","color":"green"}
execute if entity @a[team=green] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":"  綠隊獲勝！ ","color":"green"}]

title @a[team=red] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=blue] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=yellow] title {"text":"- Victory -","bold":true,"color":"gold"}
title @a[team=green] title {"text":"- Victory -","bold":true,"color":"gold"}

execute as @a at @s run playsound entity.ender_dragon.death ambient @s ~ ~ ~
