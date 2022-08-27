#Guizhi

execute store result score message_flag num run gamerule sendCommandFeedback
execute if score message_flag num matches 1 run gamerule sendCommandFeedback false

execute unless score start_cooldown num matches 1 run function bedwars:play/start
