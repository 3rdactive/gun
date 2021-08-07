##
 # main.mcfunction
 # gn
 #
 # Created by 3rdactive.
##
execute as @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}}] at @s store result score @s snowballuuid run data get entity @s Owner[2]
execute at @a store result score @p mykindauuid run data get entity @p UUID[0]
execute at @a as @e[distance=..25] at @s store result score @s mykindauuid run data get entity @s UUID[2]

execute as @e[type=snowball,nbt={Item:{tag:{CustomModelData:1}}}] at @s at @e[distance=..4] unless score @e[distance=..0.1,limit=1] mykindauuid = @e[sort=nearest,limit=1,type=snowball] snowballuuid run effect give @e[distance=..0.5] instant_damage 1 10 true