#Guizhi

execute as @s[tag=red_bed] unless block ~ ~ ~ red_bed run title @a[team=red] title {"text":"床已被摧毀","bold": true,"color":"red"}
execute as @s[tag=red_bed] unless block ~ ~ ~ red_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 紅隊的床已被摧毀 無法再次重生","color":"white"}]
execute as @s[tag=red_bed] unless block ~ ~ ~ red_bed run kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}},sort=nearest,limit=1]
execute as @s[tag=red_bed] unless block ~ ~ ~ red_bed as @a[team=red] at @s run playsound entity.wither.death ambient @s ~ ~ ~

execute as @s[tag=blue_bed] unless block ~ ~ ~ blue_bed run title @a[team=blue] title {"text":"床已被摧毀","bold": true,"color":"red"}
execute as @s[tag=blue_bed] unless block ~ ~ ~ blue_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 藍隊的床已被摧毀 無法再次重生","color":"white"}]
execute as @s[tag=blue_bed] unless block ~ ~ ~ blue_bed run kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed"}},sort=nearest,limit=1]
execute as @s[tag=blue_bed] unless block ~ ~ ~ blue_bed as @a[team=blue] at @s run playsound entity.wither.death ambient @s ~ ~ ~

execute as @s[tag=yellow_bed] unless block ~ ~ ~ yellow_bed run title @a[team=yellow] title {"text":"床已被摧毀","bold": true,"color":"red"}
execute as @s[tag=yellow_bed] unless block ~ ~ ~ yellow_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 黃隊的床已被摧毀 無法再次重生","color":"white"}]
execute as @s[tag=yellow_bed] unless block ~ ~ ~ yellow_bed run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}},sort=nearest,limit=1]
execute as @s[tag=yellow_bed] unless block ~ ~ ~ yellow_bed as @a[team=yellow] at @s run playsound entity.wither.death ambient @s ~ ~ ~

execute as @s[tag=green_bed] unless block ~ ~ ~ green_bed run title @a[team=green] title {"text":"床已被摧毀","bold": true,"color":"red"}
execute as @s[tag=green_bed] unless block ~ ~ ~ green_bed run tellraw @a [{"text":" [BED WARS] ","color":"gold"},{"text":" 綠隊的床已被摧毀 無法再次重生","color":"white"}]
execute as @s[tag=green_bed] unless block ~ ~ ~ green_bed run kill @e[type=item,nbt={Item:{id:"minecraft:green_bed"}},sort=nearest,limit=1]
execute as @s[tag=green_bed] unless block ~ ~ ~ green_bed as @a[team=green] at @s run playsound entity.wither.death ambient @s ~ ~ ~

execute if score @s[tag=blue_bed] num matches 1.. if entity @p[gamemode=survival,team=!blue,distance=..7] run function bedwars:play/upgrade/use_trap/blue
execute if score @s[tag=red_bed] num matches 1.. if entity @p[gamemode=survival,team=!red,distance=..7] run function bedwars:play/upgrade/use_trap/red
execute if score @s[tag=yellow_bed] num matches 1.. if entity @p[gamemode=survival,team=!yellow,distance=..7] run function bedwars:play/upgrade/use_trap/yellow
execute if score @s[tag=green_bed] num matches 1.. if entity @p[gamemode=survival,team=!green,distance=..7] run function bedwars:play/upgrade/use_trap/green

execute unless block ~ ~ ~ #beds as @a at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute unless block ~ ~ ~ #beds run kill @s
