# Avancer le temps de façon encore plus ralentie (facteur de ralentissement: 3)
# On soustrait 1 tick tous les 3 ticks de jeu
scoreboard players add %night_counter timer 1
execute if score %night_counter timer matches 3.. run time add 1
execute if score %night_counter timer matches 3.. run scoreboard players set %night_counter timer 0