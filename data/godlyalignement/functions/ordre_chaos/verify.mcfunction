# Vérifie si la jauge est en dessous de -75
execute if score #global Ordre_Chaos matches ..-76 run function godlyalignement:ordre_chaos/below_minus_75

# Vérifie si la jauge est au-dessus de 75
execute if score #global Ordre_Chaos matches 76.. run function godlyalignement:ordre_chaos/above_75

# Vérifie si la jauge est entre -75 et 75
execute if score #global Ordre_Chaos matches -75..75 run function godlyalignement:ordre_chaos/between