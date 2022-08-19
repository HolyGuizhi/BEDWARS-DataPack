#Guizhi

execute as @s[tag=bluefish_marker] store success score @s num run execute if entity @e[tag=blue_fish,distance=..3]
execute as @s[tag=redfish_marker] store success score @s num run execute if entity @e[tag=red_fish,distance=..3]
execute as @s[tag=yellowfish_marker] store success score @s num run execute if entity @e[tag=yellow_fish,distance=..3]
execute as @s[tag=greenfish_marker] store success score @s num run execute if entity @e[tag=green_fish,distance=..3]

execute as @s[tag=bluefish_marker] unless score @s num matches 1 run summon silverfish ~ ~0.1 ~ {CustomName:'{"text":"藍隊蠹魚","color":"blue"}',CustomNameVisible:1b,Tags:["bedwars"]}
execute as @s[tag=redfish_marker] unless score @s num matches 1 run summon silverfish ~ ~0.1 ~ {CustomName:'{"text":"紅隊蠹魚","color":"red"}',CustomNameVisible:1b,Tags:["bedwars"]}
execute as @s[tag=yellowfish_marker] unless score @s num matches 1 run summon silverfish ~ ~0.1 ~ {CustomName:'{"text":"黃隊蠹魚","color":"yellow"}',CustomNameVisible:1b,Tags:["bedwars"]}
execute as @s[tag=greenfish_marker] unless score @s num matches 1 run summon silverfish ~ ~0.1 ~ {CustomName:'{"text":"綠隊蠹魚","color":"green"}',CustomNameVisible:1b,Tags:["bedwars"]}

execute as @s[tag=bluefish_marker] unless score @s num matches 1 run team join blue @e[type=silverfish,limit=1,sort=nearest]
execute as @s[tag=redfish_marker] unless score @s num matches 1 run team join red @e[type=silverfish,limit=1,sort=nearest]
execute as @s[tag=yellowfish_marker] unless score @s num matches 1 run team join yellow @e[type=silverfish,limit=1,sort=nearest]
execute as @s[tag=greenfish_marker] unless score @s num matches 1 run team join green @e[type=silverfish,limit=1,sort=nearest]

kill @s[type=marker]
