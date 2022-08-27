#Guizhi

# 手上拿火焰彈 => 手上拿蘿蔔釣竿
execute store result score @s fireball_count run clear @s fire_charge{game:1b} 0
item replace entity @s weapon.mainhand with carrot_on_a_stick{fireball:1b,game:1b,display:{Name:'{"text":"火焰彈(右鍵)","italic":false}'}} 1
clear @s fire_charge{game:1b}
