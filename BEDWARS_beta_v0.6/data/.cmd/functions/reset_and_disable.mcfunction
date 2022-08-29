#Guizhi

# Entitys
kill @e[type=!player,tag=bedwars]
kill @e[type=item]

# Schedules
schedule clear bedwars:play/resources/generator_tiers
schedule clear bedwars:play/resources/attention
schedule clear bedwars:play/slow_tick/02
schedule clear bedwars:play/slow_tick/03
# schedule clear bedwars:play/slow_tick/04

# Scoreboards
scoreboard objectives remove num
scoreboard objectives remove Tmp
scoreboard objectives remove times
scoreboard objectives remove leftgame

scoreboard objectives remove deathcount
scoreboard objectives remove summon_golem
scoreboard objectives remove fireball_count
scoreboard objectives remove use_fireball
scoreboard objectives remove use_snowball
scoreboard objectives remove use_egg
scoreboard objectives remove Armor
scoreboard objectives remove clear_block

scoreboard objectives remove KillByPlyr
scoreboard objectives remove Time
scoreboard objectives remove give_iron
scoreboard objectives remove give_gold
scoreboard objectives remove give_diamond
scoreboard objectives remove give_emerald
scoreboard objectives remove drop_iron
scoreboard objectives remove drop_gold
scoreboard objectives remove drop_diamond
scoreboard objectives remove drop_emerald
scoreboard objectives remove use_bow

# Teams
team remove blue
team remove red
team remove yellow
team remove green
team remove spec
team remove display_blue_display
team remove display_red_display
team remove display_yellow_display
team remove display_green_display
team remove display_gold
team remove display_gray

advancement revoke @a everything

# 提示
tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 已移除所有此資料包之所有設置 使用","color":"white"},{"text":"/datapack disable <資料包檔案名稱>","color":"yellow"},{"text":" 可以將此資料包停用","color":"white"}]
