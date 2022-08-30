#Guizhi

kill @e[type=item]

# Scoreboards
scoreboard players reset @e
scoreboard players set @a leftgame 0
scoreboard players set @a Armor 0
scoreboard players set @a GameDeathCount 0
scoreboard players set @a GameKillCount 0
scoreboard players set @a destroy_beds 0
scoreboard objectives remove display
scoreboard objectives add display dummy {"text":" BED WARS ","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar display

# Display
team join display_blue_display BLUE:
team join display_red_display RED:
team join display_yellow_display YELLOW:
team join display_green_display GREEN:
team modify display_blue_display suffix {"text":" ✓","color":"green","bold":true}
team modify display_red_display suffix {"text":" ✓","color":"green","bold":true}
team modify display_yellow_display suffix {"text":" ✓","color":"green","bold":true}
team modify display_green_display suffix {"text":" ✓","color":"green","bold":true}
scoreboard players set . display 7
scoreboard players set BLUE: display 6
scoreboard players set RED: display 5
scoreboard players set YELLOW: display 4
scoreboard players set GREEN: display 3
scoreboard players set .. display 2
scoreboard players set Made_by_Guizhi display 1
team join display_gold Made_by_Guizhi
team join display_gray .
team join display_gray ..
execute as @e[tag=resource] run data modify entity @s CustomNameVisible set value 0
execute as @e[tag=spawn] run data modify entity @s CustomNameVisible set value 0

# Endchest
item replace entity @a[team=!spec] enderchest.0 with air
item replace entity @a[team=!spec] enderchest.1 with air
item replace entity @a[team=!spec] enderchest.2 with air
item replace entity @a[team=!spec] enderchest.3 with air
item replace entity @a[team=!spec] enderchest.4 with air
item replace entity @a[team=!spec] enderchest.5 with air
item replace entity @a[team=!spec] enderchest.6 with air
item replace entity @a[team=!spec] enderchest.7 with air
item replace entity @a[team=!spec] enderchest.8 with air
item replace entity @a[team=!spec] enderchest.9 with air
item replace entity @a[team=!spec] enderchest.10 with air
item replace entity @a[team=!spec] enderchest.11 with air
item replace entity @a[team=!spec] enderchest.12 with air
item replace entity @a[team=!spec] enderchest.13 with air
item replace entity @a[team=!spec] enderchest.14 with air
item replace entity @a[team=!spec] enderchest.15 with air
item replace entity @a[team=!spec] enderchest.16 with air
item replace entity @a[team=!spec] enderchest.17 with air
item replace entity @a[team=!spec] enderchest.18 with air
item replace entity @a[team=!spec] enderchest.19 with air
item replace entity @a[team=!spec] enderchest.20 with air
item replace entity @a[team=!spec] enderchest.21 with air
item replace entity @a[team=!spec] enderchest.22 with air
item replace entity @a[team=!spec] enderchest.23 with air
item replace entity @a[team=!spec] enderchest.24 with air
item replace entity @a[team=!spec] enderchest.25 with air
item replace entity @a[team=!spec] enderchest.26 with air

# Players
execute at @e[team=blue,tag=spawn,limit=1] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[team=red,tag=spawn,limit=1] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[team=yellow,tag=spawn,limit=1] run spawnpoint @a[team=yellow] ~ ~ ~
execute at @e[team=green,tag=spawn,limit=1] run spawnpoint @a[team=green] ~ ~ ~
execute as @e[tag=diamond_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"I","color":"aqua"}]'
execute as @e[tag=emerald_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"I","color":"green"}]'
execute at @e[tag=anti-stuck] run fill ~-1 ~-0.5 ~-1 ~1 ~1 ~1 air replace #bedwars:clear_able

# Gamerules
gamerule doImmediateRespawn true
gamerule sendCommandFeedback false
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule keepInventory true
gamerule spawnRadius 0
gamerule naturalRegeneration true
gamerule mobGriefing false
gamerule announceAdvancements false
gamerule doLimitedCrafting true
gamerule showDeathMessages true
difficulty normal
