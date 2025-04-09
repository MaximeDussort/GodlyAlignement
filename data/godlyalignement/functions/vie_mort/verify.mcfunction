# Vie vs Mort
# Vérifie si la jauge est en dessous de -75
execute if score #global Vie_Mort matches ..-76 run function godlyalignement:vie_mort/below_minus_75

# Vérifie si la jauge est au-dessus de 75
execute if score #global Vie_Mort matches 76.. run function godlyalignement:vie_mort/above_75

# Vérifie si la jauge est entre -75 et 75
execute if score #global Vie_Mort matches -75..75 run function godlyalignement:vie_mort/between