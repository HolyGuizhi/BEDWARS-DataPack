#Guizhi

# num
# 1:警報  2:緩速致盲  3:挖掘疲勞
# 4:警報、緩速致盲  5: 警報、挖掘疲勞  6:緩速致盲、挖掘疲勞
# 7:全

# 歸還
execute as @s[team=blue] if entity @e[tag=blue_bed,scores={num=1}] run give @s diamond{game:1b} 2
execute as @s[team=blue] if entity @e[tag=blue_bed,scores={num=4..5}] run give @s diamond{game:1b} 2
execute as @s[team=blue] if entity @e[tag=blue_bed,scores={num=7}] run give @s diamond{game:1b} 2
execute as @s[team=red] if entity @e[tag=red_bed,scores={num=1}] run give @s diamond{game:1b} 2
execute as @s[team=red] if entity @e[tag=red_bed,scores={num=4..5}] run give @s diamond{game:1b} 2
execute as @s[team=red] if entity @e[tag=red_bed,scores={num=7}] run give @s diamond{game:1b} 2
execute as @s[team=yellow] if entity @e[tag=yellow_bed,scores={num=1}] run give @s diamond{game:1b} 2
execute as @s[team=yellow] if entity @e[tag=yellow_bed,scores={num=4..5}] run give @s diamond{game:1b} 2
execute as @s[team=yellow] if entity @e[tag=yellow_bed,scores={num=7}] run give @s diamond{game:1b} 2
execute as @s[team=green] if entity @e[tag=green_bed,scores={num=1}] run give @s diamond{game:1b} 2
execute as @s[team=green] if entity @e[tag=green_bed,scores={num=4..5}] run give @s diamond{game:1b} 2
execute as @s[team=green] if entity @e[tag=green_bed,scores={num=7}] run give @s diamond{game:1b} 2

# 升級
execute as @s[team=blue] as @e[tag=blue_bed,limit=1] unless score @s num matches 1 unless score @s num matches 4..5 unless score @s num matches 7 run function bedwars:play/upgrade/alert_exe
execute as @s[team=red] as @e[tag=red_bed,limit=1] unless score @s num matches 1 unless score @s num matches 4..5 unless score @s num matches 7 run function bedwars:play/upgrade/alert_exe
execute as @s[team=yellow] as @e[tag=yellow_bed,limit=1] unless score @s num matches 1 unless score @s num matches 4..5 unless score @s num matches 7 run function bedwars:play/upgrade/alert_exe
execute as @s[team=green] as @e[tag=green_bed,limit=1] unless score @s num matches 1 unless score @s num matches 4..5 unless score @s num matches 7 run function bedwars:play/upgrade/alert_exe

scoreboard players reset @s Tmp
