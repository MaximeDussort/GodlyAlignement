# Compteur d'exécution pour 1 seconde (20 ticks)
scoreboard players add %timer timer 1
execute if score %timer timer matches 20.. run function godlyalignement:ordre_chaos/random_positive_effect
execute if score %timer timer matches 20.. run scoreboard players set %timer timer 0