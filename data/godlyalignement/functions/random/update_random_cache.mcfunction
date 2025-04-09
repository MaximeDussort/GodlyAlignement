# Nouvelle fonction system/update_random_cache.mcfunction

# Générer 5 nombres aléatoires à l'avance et les stocker
execute store result score %random_cache1 random run data get entity @r UUID[0]
execute store result score %random_cache2 random run data get entity @r UUID[1]
execute store result score %random_cache3 random run data get entity @r Pos[0] 100
execute store result score %random_cache4 random run data get entity @r Pos[2] 100
execute store result score %random_cache5 random run data get entity @r Rotation[0] 10

# Puis d'autres fonctions peuvent utiliser ces valeurs déjà calculées