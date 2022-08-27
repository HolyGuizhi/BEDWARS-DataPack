#Guizhi

# Start
scoreboard players set playing num 1
scoreboard players reset start_cooldown

# Scores
scoreboard players set 20 num 20
scoreboard players set 3 num 3
scoreboard players set 4 num 4
scoreboard players set -1 num -1
scoreboard players set 5 num 5
scoreboard players set 10 num 10
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
execute positioned as @e[team=blue,tag=spawn,limit=1] run tp @a[team=blue] ~ ~ ~
execute positioned as @e[team=red,tag=spawn,limit=1] run tp @a[team=red] ~ ~ ~
execute positioned as @e[team=yellow,tag=spawn,limit=1] run tp @a[team=yellow] ~ ~ ~
execute positioned as @e[team=green,tag=spawn,limit=1] run tp @a[team=green] ~ ~ ~
give @a[team=!spec] wooden_sword{Unbreakable:1b,unsharp:1b,game:1b} 1

tellraw @a [{"text":" [BEDWARS] ","color":"gold"},{"text":" 遊戲開始！ 破壞其他隊伍的床 並擊敗其他隊玩家得以獲勝！","color":"white"}]
