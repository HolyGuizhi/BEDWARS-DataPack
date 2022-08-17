#Guizhi

execute if score @s[scores={KillByPlyr=1..}] deathcount matches 1 run function bedwars:play/transfer_items
execute if score @s deathcount matches 1 run clear @s
execute if score @s deathcount matches 1 run scoreboard players reset @s fireball_count
execute if score @s deathcount matches 1.. run gamemode spectator @s
execute if score @s deathcount matches 2 run title @s title {"text":"你死亡了！","color":"red","bold":true}
execute if score @s deathcount matches 2 run playsound entity.lightning_bolt.thunder ambient @s ~ ~ ~
execute if score @s[team=blue] deathcount matches 2 unless entity @e[tag=blue_bed] run team join spec @s
execute if score @s[team=red] deathcount matches 2 unless entity @e[tag=red_bed] run team join spec @s
execute if score @s[team=yellow] deathcount matches 2 unless entity @e[tag=yellow_bed] run team join spec @s
execute if score @s[team=green] deathcount matches 2 unless entity @e[tag=green_bed] run team join spec @s

execute if score @s deathcount matches 41 run title @s title {"text":"5秒後重生...","color":"gray"}
execute if score @s deathcount matches 61 run title @s title {"text":"4秒後重生...","color":"gray"}
execute if score @s deathcount matches 81 run title @s title {"text":"3秒後重生...","color":"gray"}
execute if score @s deathcount matches 101 run title @s title {"text":"2秒後重生...","color":"gray"}
execute if score @s deathcount matches 121 run title @s title {"text":"1秒後重生...","color":"gray"}
execute if score @s deathcount matches 141.. run function bedwars:play/respawn

scoreboard players reset @s[team=spec] deathcount
execute if score @s deathcount matches 1..140 run scoreboard players add @s deathcount 1
