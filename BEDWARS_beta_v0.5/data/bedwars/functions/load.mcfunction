#Guizhi

# Scoreboards
scoreboard objectives add num dummy
scoreboard objectives add Tmp dummy
scoreboard objectives add times dummy
scoreboard objectives add leftgame custom:leave_game

scoreboard objectives add deathcount deathCount
scoreboard objectives add summon_golem used:wolf_spawn_egg
scoreboard objectives add fireball_count dummy
scoreboard objectives add use_fireball used:carrot_on_a_stick
scoreboard objectives add use_snowball used:snowball
scoreboard objectives add use_egg used:egg
scoreboard objectives add Armor dummy
scoreboard objectives add clear_block dummy

scoreboard objectives add KillByPlyr dummy
scoreboard objectives add Time dummy
scoreboard objectives add give_iron dummy
scoreboard objectives add give_gold dummy
scoreboard objectives add give_diamond dummy
scoreboard objectives add give_emerald dummy
scoreboard objectives add drop_iron dropped:iron_ingot
scoreboard objectives add drop_gold dropped:gold_ingot
scoreboard objectives add drop_diamond dropped:diamond
scoreboard objectives add drop_emerald dropped:emerald
scoreboard objectives add use_bow used:bow

# Scores
scoreboard players reset start_cooldown
scoreboard players reset bedloop
scoreboard players set 20 num 20
scoreboard players set 3 num 3
scoreboard players set 4 num 4
scoreboard players set -1 num -1
execute unless score attack_speed num matches 0..1 run scoreboard players set attack_speed num 0
execute unless score pick_sameitem num matches 0..1 run scoreboard players set pick_sameitem num 0

# Teams
team add blue {"text":"藍隊","color":"blue"}
team add red {"text":"紅隊","color":"red"}
team add yellow {"text":"黃隊","color":"yellow"}
team add green {"text":"綠隊","color":"green"}
team add spec {"text":"觀察","color":"gray"}
team modify blue color blue
team modify red color red
team modify yellow color yellow
team modify green color green
team modify blue friendlyFire false
team modify red friendlyFire false
team modify yellow friendlyFire false
team modify green friendlyFire false
team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify yellow seeFriendlyInvisibles false
team modify green seeFriendlyInvisibles false
team modify blue prefix {"text":"[藍]","color":"blue"}
team modify red prefix {"text":"[紅]","color":"red"}
team modify yellow prefix {"text":"[黃]","color":"yellow"}
team modify green prefix {"text":"[綠]","color":"green"}
function bedwars:display

# GameRules
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule doInsomnia false
gamerule disableRaids true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false

execute store result score Tmp Tmp run datapack list enabled
tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 資料包已成功載入！  (Made by Guizhi)","color":"white"}]
execute if score Tmp Tmp matches 3.. run tellraw @a [{"text":"\n [BED WARS] ","color":"gold"},{"text":" 敬告，偵測到有其他正在運作的資料包，","bold":true,"color":"red"}]
execute if score Tmp Tmp matches 3.. run tellraw @a [{"text":".               ","color":"gold"},{"text":" 這有可能會造成此資料包無法正常運作，","bold":true,"color":"red"}]
execute if score Tmp Tmp matches 3.. run tellraw @a [{"text":".               ","color":"gold"},{"text":" 除非您瞭解這樣不會造成影響，否則不建議這麼做。","bold":true,"color":"red"}]
execute as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~

# 版本
execute unless score version num matches 6 run function bedwars:version
