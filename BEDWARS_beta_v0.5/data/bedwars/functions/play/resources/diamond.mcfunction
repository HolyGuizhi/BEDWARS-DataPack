#Guizhi

# basic
scoreboard players remove @s num 1

# display
execute store result storage bedwars:second diamond int 0.05 run scoreboard players get @s num
setblock ~ -64 ~ minecraft:oak_sign{Text1:'[{"text":"將在 ","color":"yellow"},{"nbt":"diamond","storage":"bedwars:second","color":"red"},{"text":" 秒後生成"}]'}
data modify entity @s CustomName set from block ~ -64 ~ Text1
setblock ~ -64 ~ minecraft:air

# 30秒
execute if score @s num matches ..1 positioned ~ ~-2 ~ unless entity @e[nbt={Item:{id:"minecraft:diamond",Count:8b,tag:{game:1b}}},distance=..3] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}
execute if score @s num matches ..1 run scoreboard players operation @s num = diamond_generate num
