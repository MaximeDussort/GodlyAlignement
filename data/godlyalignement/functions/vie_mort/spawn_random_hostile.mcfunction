# spawn_random_hostile.mcfunction

# Sélection aléatoire du type de monstre
summon area_effect_cloud ~ ~ ~ {Tags:["hostile_random"]}
execute store result score %hostile_type random run data get entity @e[type=area_effect_cloud,tag=hostile_random,limit=1] UUID[1] 1
scoreboard players set %hostile_count random 5
scoreboard players operation %hostile_type random %= %hostile_count random
scoreboard players add %hostile_type random 1
kill @e[type=area_effect_cloud,tag=hostile_random]

# Apparition du monstre sélectionné
execute if score %hostile_type random matches 1 run summon minecraft:zombie ~ ~ ~
execute if score %hostile_type random matches 2 run summon minecraft:skeleton ~ ~ ~
execute if score %hostile_type random matches 3 run summon minecraft:creeper ~ ~ ~
execute if score %hostile_type random matches 4 run summon minecraft:spider ~ ~ ~
execute if score %hostile_type random matches 5 run summon minecraft:enderman ~ ~ ~