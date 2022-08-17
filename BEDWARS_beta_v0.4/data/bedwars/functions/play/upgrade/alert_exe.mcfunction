#Guizhi

# 提示
execute as @s[tag=blue_bed] run tellraw @a[team=blue] [{"text":" [BED WARS] ","color":"gold"},{"text":" 啟用了警報陷阱！","color":"aqua"}]
execute as @s[tag=blue_bed] as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[tag=red_bed] run tellraw @a[team=red] [{"text":" [BED WARS] ","color":"gold"},{"text":" 啟用了警報陷阱！","color":"aqua"}]
execute as @s[tag=red_bed] as @a[team=red] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[tag=yellow_bed] run tellraw @a[team=yellow] [{"text":" [BED WARS] ","color":"gold"},{"text":" 啟用了警報陷阱！","color":"aqua"}]
execute as @s[tag=yellow_bed] as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[tag=green_bed] run tellraw @a[team=green] [{"text":" [BED WARS] ","color":"gold"},{"text":" 啟用了警報陷阱！","color":"aqua"}]
execute as @s[tag=green_bed] as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~

# 升級
scoreboard players set @s[tag=blue_bed,scores={num=0}] num 1
scoreboard players set @s[tag=red_bed,scores={num=0}] num 1
scoreboard players set @s[tag=yellow_bed,scores={num=0}] num 1
scoreboard players set @s[tag=green_bed,scores={num=0}] num 1

scoreboard players set @s[tag=blue_bed,scores={num=2}] num 4
scoreboard players set @s[tag=red_bed,scores={num=2}] num 4
scoreboard players set @s[tag=yellow_bed,scores={num=2}] num 4
scoreboard players set @s[tag=green_bed,scores={num=2}] num 4

scoreboard players set @s[tag=blue_bed,scores={num=3}] num 5
scoreboard players set @s[tag=red_bed,scores={num=3}] num 5
scoreboard players set @s[tag=yellow_bed,scores={num=3}] num 5
scoreboard players set @s[tag=green_bed,scores={num=3}] num 5

scoreboard players set @s[tag=blue_bed,scores={num=6}] num 7
scoreboard players set @s[tag=red_bed,scores={num=6}] num 7
scoreboard players set @s[tag=yellow_bed,scores={num=6}] num 7
scoreboard players set @s[tag=green_bed,scores={num=6}] num 7
