#Guizhi

# Schedule
execute as @a at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~
execute if score start num matches 0 run title @a title {"text":"3","bold":true,"color":"green"}
execute if score start num matches 1 run title @a title {"text":"2","bold":true,"color":"yellow"}
execute if score start num matches 1 at @e[tag=chest] run function bedwars:unplay/chest/clear
execute if score start num matches 1 at @e[tag=bed] run function bedwars:play/init/bedrock
execute if score start num matches 2 run title @a title {"text":"1","bold":true,"color":"red"}
execute if score start num matches 2 run function bedwars:play/init/0
execute if score start num matches 3.. run function bedwars:play/init/1
execute if score start num matches 3.. run title @a title {"text":"- START -","color":"gold"}

# Final
execute if score start num matches 0..2 run schedule function bedwars:before_start 1s
execute if score start num matches 3.. run scoreboard players reset start
execute if score start num matches 0..2 run scoreboard players add start num 1
