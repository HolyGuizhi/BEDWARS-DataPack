#Guizhi

# times:計算鐵錠  deathcount:計算金錠  give_emerald:計算綠寶石  num:當前等級
tp @s ~ ~ ~ ~3 ~
scoreboard players add @s times 1
scoreboard players add @s deathcount 1
execute if score @s num matches 3.. run scoreboard players add @s give_emerald 1

# 都在分數為1的時候生成 如果鐵錠已生成兩組以上都沒被拿走則不會生成
execute if score @s times matches 1 positioned ~ ~-1 ~ store result score @s Tmp run execute if entity @e[nbt={Item:{id:"minecraft:iron_ingot",Count:64b,tag:{game:1b}}},distance=..3]
execute if score @s times matches 1 unless score @s Tmp matches 2.. run summon item ^ ^ ^0.2 {Item:{id:"minecraft:iron_ingot",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}
execute if score @s deathcount matches 1 run summon item ^ ^ ^0.2 {Item:{id:"minecraft:gold_ingot",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}
execute if score @s give_emerald matches 1 run summon item ^ ^ ^0.2 {Item:{id:"minecraft:emerald",Count:1,tag:{game:1b}},Tags:["bedwars","no_loop"]}

# 分數(時間)控制
scoreboard players add @s times 1
scoreboard players add @s deathcount 1
execute if score @s num matches 1.. run scoreboard players add @s times 1
execute if score @s num matches 1.. run scoreboard players add @s deathcount 1
execute if score @s num matches 2.. run scoreboard players add @s times 1
execute if score @s num matches 2.. run scoreboard players add @s deathcount 1

# 重置
execute if score @s times matches 40.. run scoreboard players reset @s times
execute if score @s deathcount matches 240.. run scoreboard players reset @s deathcount
execute if score @s give_emerald matches 500.. run scoreboard players reset @s give_emerald
