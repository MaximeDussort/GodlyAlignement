# Méthode plus efficace sans créer d'entités
# Utilise une combinaison de valeurs existantes
execute store result score %temp1 random run data get entity @r UUID[0]
execute store result score %temp2 random run time query gametime
scoreboard players operation %temp1 random += %temp2 random
scoreboard players operation %temp1 random *= #salt random
scoreboard players operation %result random = %temp1 random
scoreboard players operation %result random %= %effect_max random