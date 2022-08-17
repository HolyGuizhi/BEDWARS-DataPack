#Guizhi

execute as @s[team=blue] unless score @e[tag=resource,limit=1,team=blue] num matches 2 run give @s diamond{game:1b} 12
execute as @s[team=blue] unless score @e[tag=resource,limit=1,team=blue] num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級鍛造強化II哦！","color":"red"}]
execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 3.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過鍛造強化III哦！","color":"red"}]
execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 2 run tellraw @a[team=blue] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得鍛造強化II！","color":"aqua"}]
execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 2 as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=blue] if score @e[tag=resource,limit=1,team=blue] num matches 2 run scoreboard players set @e[tag=resource,limit=1,team=blue] num 3

execute as @s[team=red] unless score @e[tag=resource,limit=1,team=red] num matches 2 run give @s diamond{game:1b} 12
execute as @s[team=red] unless score @e[tag=resource,limit=1,team=red] num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級鍛造強化II哦！","color":"red"}]
execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 3.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過鍛造強化III哦！","color":"red"}]
execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 2 run tellraw @a[team=red] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了鍛造化II！","color":"aqua"}]
execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 2 as @a[team=red] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=red] if score @e[tag=resource,limit=1,team=red] num matches 2 run scoreboard players set @e[tag=resource,limit=1,team=red] num 3

execute as @s[team=yellow] unless score @e[tag=resource,limit=1,team=yellow] num matches 2 run give @s diamond{game:1b} 12
execute as @s[team=yellow] unless score @e[tag=resource,limit=1,team=yellow] num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級鍛造強化II哦！","color":"red"}]
execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 3.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過鍛造強化III哦！","color":"red"}]
execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 2 run tellraw @a[team=yellow] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲鍛造備強化II！","color":"aqua"}]
execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 2 as @a[team=yellow] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=yellow] if score @e[tag=resource,limit=1,team=yellow] num matches 2 run scoreboard players set @e[tag=resource,limit=1,team=yellow] num 3

execute as @s[team=green] unless score @e[tag=resource,limit=1,team=green] num matches 2 run give @s diamond{game:1b} 12
execute as @s[team=green] unless score @e[tag=resource,limit=1,team=green] num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級鍛造強化II哦！","color":"red"}]
execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 3.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過鍛造強化III哦！","color":"red"}]
execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 2 run tellraw @a[team=green] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得鍛造強化II！","color":"aqua"}]
execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 2 as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=green] if score @e[tag=resource,limit=1,team=green] num matches 2 run scoreboard players set @e[tag=resource,limit=1,team=green] num 3
