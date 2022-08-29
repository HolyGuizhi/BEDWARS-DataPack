#Guizhi

# 資料來源: https://hypixel.net/threads/speed-of-upgrade-tiering-of-emeralds-and-diamonds.3128677/
# 開始後  +5min:鑽II  +6min:綠II  +6min:鑽III  +6min:綠III  +10min:驟死賽
# 鑽石 TierI:45s  TierII:30s  TierIII:15s
# 綠寶石 TierI:60s  TierII:45s  TierIII:30s

execute if score Generator_Tier num matches 0 as @e[tag=diamond_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"II","color":"gold"}]'
execute if score Generator_Tier num matches 0 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 鑽石生成點等級提升為","color":"white"},{"text":"II","color":"gold"},{"text":"！","color":"white"}]
execute if score Generator_Tier num matches 0 run scoreboard players set diamond_generate num 601
execute if score Generator_Tier num matches 0 run schedule function bedwars:play/resources/generator_tiers 360s

execute if score Generator_Tier num matches 1 as @e[tag=emerald_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"II","color":"gold"}]'
execute if score Generator_Tier num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 綠寶石生成點等級提升為","color":"white"},{"text":"II","color":"gold"},{"text":"！","color":"white"}]
execute if score Generator_Tier num matches 1 run scoreboard players set emerald_generate num 901
execute if score Generator_Tier num matches 1 run schedule function bedwars:play/resources/generator_tiers 360s

execute if score Generator_Tier num matches 2 as @e[tag=diamond_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"III","color":"gold"}]'
execute if score Generator_Tier num matches 2 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 鑽石生成點等級提升為","color":"white"},{"text":"III","color":"gold"},{"text":"！","color":"white"}]
execute if score Generator_Tier num matches 2 run scoreboard players set diamond_generate num 301
execute if score Generator_Tier num matches 2 run schedule function bedwars:play/resources/generator_tiers 360s

execute if score Generator_Tier num matches 3 as @e[tag=emerald_tier] run data modify entity @s CustomName set value '[{"text":"等級 "},{"text":"III","color":"gold"}]'
execute if score Generator_Tier num matches 3 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 綠寶石生成點等級提升為","color":"white"},{"text":"III","color":"gold"},{"text":"！","color":"white"}]
execute if score Generator_Tier num matches 3 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 注意！","color":"white"},{"text":" 10分鐘","color":"gold"},{"text":"後隊伍的床將會強制摧毀 進入","color":"white"},{"text":"驟死賽","color":"red"},{"text":"！","color":"white"}]
execute if score Generator_Tier num matches 3 run scoreboard players set emerald_generate num 601
execute if score Generator_Tier num matches 3 run schedule function bedwars:play/resources/attention 540s
execute if score Generator_Tier num matches 3 run schedule function bedwars:play/resources/generator_tiers 600s

execute if score Generator_Tier num matches 4 at @e[tag=blue_bed] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace blue_bed
execute if score Generator_Tier num matches 4 at @e[tag=red_bed] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace red_bed
execute if score Generator_Tier num matches 4 at @e[tag=green_bed] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace green_bed
execute if score Generator_Tier num matches 4 at @e[tag=yellow_bed] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace yellow_bed
execute if score Generator_Tier num matches 4 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 進入","color":"white"},{"text":"驟死賽","color":"red"},{"text":"！","color":"white"}]

# 提升等級
scoreboard players add Generator_Tier num 1
