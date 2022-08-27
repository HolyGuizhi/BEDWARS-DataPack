#Guizhi

# basic
scoreboard players remove @s num 1

# display
execute store result storage bedwars:second emerald int 0.05 run scoreboard players get @s num
setblock ~ -64 ~ minecraft:oak_sign{Text1:'[{"text":"將在 ","color":"yellow"},{"nbt":"emerald","storage":"bedwars:second","color":"red"},{"text":" 秒後生成"}]'}
data modify entity @s CustomName set from block ~ -64 ~ Text1
setblock ~ -64 ~ minecraft:air

# 55秒
execute if score @s num matches ..1 positioned ~ ~-2 ~ unless entity @e[nbt={Item:{id:"minecraft:emerald",Count:5b,tag:{game:1b}}},distance=..2.5] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}
execute if score @s num matches ..1 run scoreboard players operation @s num = emerald_generate num
