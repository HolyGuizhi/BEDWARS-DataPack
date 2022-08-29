#Guizhi

scoreboard players set error num 0
scoreboard players set playingteams num 0

# Scoreboard settings
scoreboard objectives remove GameKillCount
scoreboard objectives remove GameDeathCount
scoreboard objectives remove destroy_bluebed
scoreboard objectives remove destroy_redbed
scoreboard objectives remove destroy_greenbed
scoreboard objectives remove destroy_yellowbed
scoreboard objectives remove destroy_beds
scoreboard objectives add GameKillCount dummy
scoreboard objectives add GameDeathCount dummy
scoreboard objectives add destroy_bluebed mined:blue_bed
scoreboard objectives add destroy_redbed mined:red_bed
scoreboard objectives add destroy_greenbed mined:green_bed
scoreboard objectives add destroy_yellowbed mined:yellow_bed
scoreboard objectives add destroy_beds dummy

execute if entity @a[team=blue] run scoreboard players add playingteams num 1
execute if entity @a[team=red] run scoreboard players add playingteams num 1
execute if entity @a[team=yellow] run scoreboard players add playingteams num 1
execute if entity @a[team=green] run scoreboard players add playingteams num 1

# Team check
execute if entity @a[team=!blue,team=!red,team=!yellow,team=!green,team=!spec] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 有玩家沒有選擇隊伍 ","color":"white"}]
execute if entity @a[team=!blue,team=!red,team=!yellow,team=!green,team=!spec] run scoreboard players set error num 1
execute unless entity @a[team=!spec] run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 沒有玩家 ","color":"white"}]
execute unless entity @a[team=!spec] run scoreboard players set error num 1

# Diamond Point
execute store result score Tmp num run execute if entity @e[tag=diamond]
execute unless score Tmp num matches 1.. run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" Attention：","color":"red"},{"text":" 此場遊戲無鑽石生成點","color":"white"}]

# Emerald Point
execute store result score Tmp num run execute if entity @e[tag=emerald]
execute unless score Tmp num matches 1.. run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" Attention：","color":"red"},{"text":" 此場遊戲無綠寶石生成點 ","color":"white"}]

# Spawn Point
execute store result score Tmp num run execute if entity @e[tag=spawn]
execute unless score Tmp num >= playingteams num run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 玩家重生點數量小於遊玩的隊伍數量","color":"white"}]
execute unless score Tmp num >= playingteams num run scoreboard players set error num 1

# Bed Point
execute if entity @a[team=blue] store result score Tmp num run execute if entity @e[tag=blue_bed]
execute if entity @a[team=blue] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 藍隊沒有床 ","color":"white"}]
execute if entity @a[team=blue] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=red] store result score Tmp num run execute if entity @e[tag=red_bed]
execute if entity @a[team=red] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 紅隊沒有床 ","color":"white"}]
execute if entity @a[team=red] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=yellow] store result score Tmp num run execute if entity @e[tag=yellow_bed]
execute if entity @a[team=yellow] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 黃隊沒有床 ","color":"white"}]
execute if entity @a[team=yellow] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=green] store result score Tmp num run execute if entity @e[tag=green_bed]
execute if entity @a[team=green] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 綠隊沒有床 ","color":"white"}]
execute if entity @a[team=green] unless score Tmp num matches 1 run scoreboard players set error num 1

# Resource Point
execute if entity @a[team=blue] store result score Tmp num run execute if entity @e[team=blue,tag=resource]
execute if entity @a[team=blue] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 藍隊沒有資源生成點 ","color":"white"}]
execute if entity @a[team=blue] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=red] store result score Tmp num run execute if entity @e[team=red,tag=resource]
execute if entity @a[team=red] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 紅隊沒有資源生成點 ","color":"white"}]
execute if entity @a[team=red] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=yellow] store result score Tmp num run execute if entity @e[team=yellow,tag=resource]
execute if entity @a[team=yellow] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 黃隊沒有資源生成點 ","color":"white"}]
execute if entity @a[team=yellow] unless score Tmp num matches 1 run scoreboard players set error num 1

execute if entity @a[team=green] store result score Tmp num run execute if entity @e[team=green,tag=resource]
execute if entity @a[team=green] unless score Tmp num matches 1 run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" ERROR：","color":"red"},{"text":" 綠隊沒有資源生成點 ","color":"white"}]
execute if entity @a[team=green] unless score Tmp num matches 1 run scoreboard players set error num 1

# 開始遊戲
scoreboard players reset playingteams num
execute if score error num matches 1.. run tellraw @a [{"text":" [BED WARS]","color":"gold"},{"text":"  遊戲無法開始  請設置正確後再重新開始","color":"red","bold":true}]
execute if score error num matches 1.. run scoreboard players reset start_cooldown
execute if score error num matches 1.. as @a at @s run playsound minecraft:entity.wither.break_block ambient @s ~ ~ ~
execute if score error num matches 0 run scoreboard players set start num 0
scoreboard players reset error
