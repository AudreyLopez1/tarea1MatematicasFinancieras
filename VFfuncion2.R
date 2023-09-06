# Se crea (se programa) la función:
VFfuncion2=function(nIter, umbral){
  
  #Creamos los objetos con los datos de entrada del problema:
  
  VA=1 #Valor actual de un peso
  i=1  #Tasa de interes anualizada de 100% (i=1)
  paro=100000 #Número de iteraciones (cálculos) que deseamos realizar
  VF0=1 #El valor inicial del VF en la iteración
  umbral=0.0000001 # Asigno un valor de umbral
  DeltaVF=Inf # Asigno un valor inicial del incremento del VF en cad iteración
  n=0 #valor inicial a n en las iteraciones
  nlter=50000 #Asigno el valor de nlter
 
   #Operador while
  while(DeltaVF >umbral & n< nIter){
    # Actualizo el valor de n, según el número de iteración realizado:
    n=n+1
    #Calculo el valor futuro:
    VF=VA*(1+(1/n))^n
    #Actualizamos el incremento del valor futuro de esta iteración con el de la iteración anterior(VF0):
    DeltaVF=VF-VF0
    #Actualizo el valor futuro de esta iteracion como el valor futuro "de la iteracion anterior" para futuras iteraciones:
    VF0=VF
  }
  #Creamos el objeto tipo lista de salida:
  respuesta=list(
    VF=VF,
    DeltaVF=DeltaVF,
    N=n
  )
  #Se imprime el mensaje de salida:
 
  if (DeltaVF <= umbral) {
   print( 
     paste0("Después de ", n, " iteraciones, ",
                     "se llegó a un VF de ", VF, " con un umbral de ", umbral))
  } else {
    print( 
      paste0("Se detuvo después de ", nIter, " iteraciones, ",
                     "ya que se alcanzó el número máximo de iteraciones permitidas."))
  }

  #se regresa el objeto de salida al enviroment para que se encuentre disponible ahí:
  return(respuesta)

}
VFfuncion2(0.00003)

