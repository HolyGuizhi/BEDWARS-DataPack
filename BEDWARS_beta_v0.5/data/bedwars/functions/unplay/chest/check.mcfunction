#Guizhi

# 借Time記分板做為loop times
scoreboard players add @s Time 1
execute if block ~ ~ ~ #bedwars:contain_item unless entity @e[tag=chest,distance=..1.2,limit=1] run summon armor_stand ~ ~ ~ {Tags:["bedwars","chest"],NoGravity:1b,Invisible:1b,Marker:1b}

# 6格以內
execute if score @s Time matches 1..60 if block ~ ~ ~ air positioned ^ ^ ^0.1 run function bedwars:unplay/chest/check
scoreboard players reset @s Time
