#Guizhi

setblock ~ ~-1 ~ bedrock
execute if block ~ ~ ~-1 #beds run setblock ~ ~-1 ~-1 bedrock
execute if block ~ ~ ~1 #beds run setblock ~ ~-1 ~1 bedrock
execute if block ~-1 ~ ~ #beds run setblock ~-1 ~-1 ~ bedrock
execute if block ~1 ~ ~ #beds run setblock ~1 ~-1 ~ bedrock
