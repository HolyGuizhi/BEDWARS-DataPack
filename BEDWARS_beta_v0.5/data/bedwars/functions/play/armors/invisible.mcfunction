#Guizhi

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

execute as @s[scores={Armor=0..3}] run attribute @s generic.armor base set 7.0
execute as @s[scores={Armor=4..7}] run attribute @s generic.armor base set 9.0
execute as @s[scores={Armor=8..11}] run attribute @s generic.armor base set 11.0
execute as @s[scores={Armor=12..15}] run attribute @s generic.armor base set 13.0
