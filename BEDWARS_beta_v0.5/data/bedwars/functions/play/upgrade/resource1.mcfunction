#Guizhi

execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 1.. run give @s diamond{game:1b} 4
execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過了哦！","color":"red"}]
execute as @s[team=blue] unless score @e[tag=resource,limit=1,team=blue] num matches 1.. run tellraw @a[team=blue] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了鍛造強化I！","color":"aqua"}]
execute as @s[team=blue] unless score @e[tag=resource,limit=1,team=blue] num matches 1.. as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=blue] unless score @e[tag=resource,limit=1,team=blue] num matches 1.. run scoreboard players set @e[tag=resource,limit=1,team=blue] num 1

execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 1.. run give @s diamond{game:1b} 4
execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過了哦！","color":"red"}]
execute as @s[team=red] unless score @e[tag=resource,limit=1,team=red] num matches 1.. run tellraw @a[team=red] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了鍛造強化I！","color":"aqua"}]
execute as @s[team=red] unless score @e[tag=resource,limit=1,team=red] num matches 1.. as @a[team=red] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=red] unless score @e[tag=resource,limit=1,team=red] num matches 1.. run scoreboard players set @e[tag=resource,limit=1,team=red] num 1

execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 1.. run give @s diamond{game:1b} 4
execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過了哦！","color":"red"}]
execute as @s[team=yellow] unless score @e[tag=resource,limit=1,team=yellow] num matches 1.. run tellraw @a[team=yellow] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了鍛造強化I！","color":"aqua"}]
execute as @s[team=yellow] unless score @e[tag=resource,limit=1,team=yellow] num matches 1.. as @a[team=yellow] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=yellow] unless score @e[tag=resource,limit=1,team=yellow] num matches 1.. run scoreboard players set @e[tag=resource,limit=1,team=yellow] num 1

execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 1.. run give @s diamond{game:1b} 4
execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過了哦！","color":"red"}]
execute as @s[team=green] unless score @e[tag=resource,limit=1,team=green] num matches 1.. run tellraw @a[team=green] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了鍛造強化I！","color":"aqua"}]
execute as @s[team=green] unless score @e[tag=resource,limit=1,team=green] num matches 1.. as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=green] unless score @e[tag=resource,limit=1,team=green] num matches 1.. run scoreboard players set @e[tag=resource,limit=1,team=green] num 1
