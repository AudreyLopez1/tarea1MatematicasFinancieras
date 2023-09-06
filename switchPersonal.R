
#Operador switch

color="azul+amarillo"

switch(
  color,
  "azul+amarillo"={respuesta="verde"},
  "rojo+amarillo"={respuesta="naranja"},
  "rojo+azul"={respuesta="morado"},
  "negro+blanco"={respuesta="gris"},
  {respuesta="Otro color"}
  
)
respuesta
