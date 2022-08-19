#Guizhi

# Start
scoreboard players set playing num 1

# Scores
scoreboard players set 20 num 20
scoreboard players set 3 num 3
scoreboard players set 4 num 4
scoreboard players set -1 num -1
scoreboard players set slowtick num 0
scoreboard players set @e[tag=resource] num 0

scoreboard players set red_sharp num 0
scoreboard players set blue_sharp num 0
scoreboard players set yellow_sharp num 0
scoreboard players set green_sharp num 0
scoreboard players set red_protect num 0
scoreboard players set blue_protect num 0
scoreboard players set yellow_protect num 0
scoreboard players set green_protect num 0

scoreboard players set @e[tag=red_bed] num 0
scoreboard players set @e[tag=blue_bed] num 0
scoreboard players set @e[tag=yellow_bed] num 0
scoreboard players set @e[tag=green_bed] num 0

scoreboard players set Generator_Tier num 0
scoreboard players set diamond_generate num 901
scoreboard players set emerald_generate num 1201
schedule function bedwars:play/resources/generator_tiers 300s

# Players
scoreboard players set plyr_num num 1
execute as @p[team=!spec] run function bedwars:play/init/plyrnum
tag @a remove get_num

recipe take @a[team=!spec] *
clear @a
effect clear @a
effect give @a[team=!spec] instant_health 1 99 true

gamemode survival @a[team=!spec]
execute if score attack_speed num matches 0 as @a[team=!spec] run attribute @s generic.attack_speed base set 100.0
execute if score attack_speed num matches 1 as @a[team=!spec] run attribute @s generic.attack_speed base set 4.0
execute as @a[team=!spec] run attribute @s generic.attack_damage base set 2.5
execute as @a run attribute @s generic.armor base set 0.0
tp @a[team=blue] @e[team=blue,tag=spawn,limit=1]
tp @a[team=red] @e[team=red,tag=spawn,limit=1]
tp @a[team=yellow] @e[team=yellow,tag=spawn,limit=1]
tp @a[team=green] @e[team=green,tag=spawn,limit=1]
give @a[team=!spec] wooden_sword{Unbreakable:1b,unsharp:1b,game:1b} 1
