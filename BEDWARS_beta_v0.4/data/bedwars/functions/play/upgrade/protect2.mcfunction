#Guizhi

execute as @s[team=blue] unless score blue_protect num matches 1 run give @s diamond{game:1b} 10
execute as @s[team=blue] unless score blue_protect num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級裝備強化I哦！","color":"red"}]
execute as @s[team=blue] if score blue_protect num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過裝備強化II哦！","color":"red"}]
execute as @s[team=blue] if score blue_protect num matches 1 run tellraw @a[team=blue] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了裝備強化II！","color":"aqua"}]
execute as @s[team=blue] if score blue_protect num matches 1 as @a[team=blue] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=blue] if score blue_protect num matches 1 run scoreboard players add @a[team=blue] Armor 1
execute as @s[team=blue] if score blue_protect num matches 1 run scoreboard players set blue_protect num 2

execute as @s[team=red] unless score red_protect num matches 1 run give @s diamond{game:1b} 10
execute as @s[team=red] unless score red_protect num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級裝備強化I哦！","color":"red"}]
execute as @s[team=red] if score red_protect num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過裝備強化II哦！","color":"red"}]
execute as @s[team=red] if score red_protect num matches 1 run tellraw @a[team=red] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了裝備強化II！","color":"aqua"}]
execute as @s[team=red] if score red_protect num matches 1 as @a[team=red] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=red] if score red_protect num matches 1 run scoreboard players add @a[team=red] Armor 1
execute as @s[team=red] if score red_protect num matches 1 run scoreboard players set red_protect num 2

execute as @s[team=yellow] unless score yellow_protect num matches 1 run give @s diamond{game:1b} 10
execute as @s[team=yellow] unless score yellow_protect num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級裝備強化I哦！","color":"red"}]
execute as @s[team=yellow] if score yellow_protect num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過裝備強化II哦！","color":"red"}]
execute as @s[team=yellow] if score yellow_protect num matches 1 run tellraw @a[team=yellow] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了裝備強化II！","color":"aqua"}]
execute as @s[team=yellow] if score yellow_protect num matches 1 as @a[team=yellow] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=yellow] if score yellow_protect num matches 1 run scoreboard players add @a[team=yellow] Armor 1
execute as @s[team=yellow] if score yellow_protect num matches 1 run scoreboard players set yellow_protect num 2

execute as @s[team=green] unless score green_protect num matches 1 run give @s diamond{game:1b} 10
execute as @s[team=green] unless score green_protect num matches 1.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 請先升級裝備強化I哦！","color":"red"}]
execute as @s[team=green] if score green_protect num matches 2.. run tellraw @s [{"text":" [BED WARS] ","color":"gold"},{"text":" 已經升級過裝備強化II哦！","color":"red"}]
execute as @s[team=green] if score green_protect num matches 1 run tellraw @a[team=green] [{"text":" [BED WARS] ","color":"gold"},{"text":" 隊伍獲得了裝備強化II！","color":"aqua"}]
execute as @s[team=green] if score green_protect num matches 1 as @a[team=green] at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
execute as @s[team=green] if score green_protect num matches 1 run scoreboard players add @a[team=green] Armor 1
execute as @s[team=green] if score green_protect num matches 1 run scoreboard players set green_protect num 2
