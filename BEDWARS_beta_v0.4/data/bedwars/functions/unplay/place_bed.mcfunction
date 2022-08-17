#Guizhi

scoreboard players reset @s Tmp
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.01 run function bedwars:setpoint/bed_loop
advancement revoke @s only bedwars:place_red_bed
advancement revoke @s only bedwars:place_blue_bed
advancement revoke @s only bedwars:place_yellow_bed
advancement revoke @s only bedwars:place_green_bed
