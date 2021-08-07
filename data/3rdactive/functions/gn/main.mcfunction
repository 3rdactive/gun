##
 # main.mcfunction
 # gn
 #
 # Created by 3rdactive.
##
execute as @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}}] at @s store result score @s snowballuuid run data get entity @s Owner[2]
execute at @a store result score @p mykindauuid run data get entity @p UUID[0]
execute at @a as @e[distance=..25] at @s store result score @s mykindauuid run data get entity @s UUID[2]

execute as @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}}] at @s at @e[distance=..4] unless score @e[distance=..0.1,limit=1] mykindauuid = @e[sort=nearest,limit=1,type=snowball] snowballuuid run effect give @e[distance=..0.5] instant_damage 1 0 true

#execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s run summon tnt ~ ~ ~ {Fuse:80}
#execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s run data merge entity @s {Item:{id:"minecraft:magma_cream"}}

execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] run scoreboard players add @s grandadeTimer 1
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s unless block ~ ~ ~ air unless block ~ ~ ~ grass unless block ~ ~ ~ tall_grass run scoreboard players set @s grandadeTimer 80
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}}] at @s unless block ~ ~-1 ~ air unless block ~ ~ ~ grass unless block ~ ~ ~ tall_grass run scoreboard players set @s grandadeTimer 80
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}},scores={grandadeTimer=80}] at @s run summon tnt ~ ~ ~
execute as @e[type=snowball,nbt={Item:{id:"minecraft:snowball",tag:{CustomModelData:2}}},scores={grandadeTimer=80}] run kill @s
