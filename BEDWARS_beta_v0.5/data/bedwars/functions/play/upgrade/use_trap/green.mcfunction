#Guizhi

# num
# 1:警報  2:緩速致盲  3:挖掘疲勞
# 4:警報、緩速致盲  5: 警報、挖掘疲勞  6:緩速致盲、挖掘疲勞
# 7:全

title @a[team=green] title {"text":"警報觸發！","color":"red","bold":true}
execute as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~

execute as @s[scores={num=1}] run effect clear @a[team=!green,distance=..10,predicate=bedwars:invisible] invisibility
execute as @s[scores={num=4..5}] run effect clear @a[team=!green,distance=..10,predicate=bedwars:invisible] invisibility
execute as @s[scores={num=7}] run effect clear @a[team=!green,distance=..10,predicate=bedwars:invisible] invisibility

execute as @s[scores={num=2}] run effect give @a[team=!green,gamemode=survival,distance=..10] slowness 8 0 true
execute as @s[scores={num=4}] run effect give @a[team=!green,gamemode=survival,distance=..10] slowness 8 0 true
execute as @s[scores={num=6..7}] run effect give @a[team=!green,gamemode=survival,distance=..10] slowness 8 0 true
execute as @s[scores={num=2}] run effect give @a[team=!green,gamemode=survival,distance=..10] blindness 8 0 true
execute as @s[scores={num=4}] run effect give @a[team=!green,gamemode=survival,distance=..10] blindness 8 0 true
execute as @s[scores={num=6..7}] run effect give @a[team=!green,gamemode=survival,distance=..10] blindness 8 0 true

execute as @s[scores={num=3}] run effect give @a[team=!green,gamemode=survival,distance=..10] mining_fatigue 10 1 true
execute as @s[scores={num=5..7}] run effect give @a[team=!green,gamemode=survival,distance=..10] mining_fatigue 10 1 true

scoreboard players set @s num 0
