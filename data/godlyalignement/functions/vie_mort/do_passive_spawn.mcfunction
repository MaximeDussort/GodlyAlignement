# Selon le nombre aléatoire, faire apparaître un animal différent
execute if score %passive_type random matches 1 run summon minecraft:sheep ~ ~ ~
execute if score %passive_type random matches 2 run summon minecraft:cow ~ ~ ~
execute if score %passive_type random matches 3 run summon minecraft:pig ~ ~ ~
execute if score %passive_type random matches 4 run summon minecraft:chicken ~ ~ ~
execute if score %passive_type random matches 5 run summon minecraft:rabbit ~ ~ ~