# Esta es una prueba para la sesión 4 del día 10/10/20 y contiene el Script desarrollado en la sesión


# Sesión no. 3 10/10/2020

rm(list=ls())

# Función Identidad 

identidad <- function(x) {
  x    # Resultado de mi función, es lo que regresa la función, o es lo que procesa
  
}

identidad(5)  # Probando la función 
identidad("Hola") #Texto
identidad(c(1,2,3)) #Vector

# Función promedio

promedio <- function(calificaciones) {
  sum(calificaciones)/length(calificaciones)
}

#Poner en práctica mi función, EJECUTAR
promedio(c(10,10,10,10,10))
promedio(c(4,6,4,5.6657,4.6545, 10.99))

promedio(c("hola", "gsdg", "asdfa")) # Argumentos tipo texto


# Ejemplo 2

rm(list=ls())


remainder <- function(num,divisor=2) {
  num %% divisor
}

remainder(7,2)
remainder(5)
remainder(2)
remainder(c(5,6,7,5,6,7))
remainder(7,2,6)

remainder(num = 7, divisor = 2) #Otra opción de ingresar argumentos, FORZANDO 

args(remainder) 

# Ejemplo 3

?paste

paste("Programming", "is", "fun!")


telegram(" Good "," morning ") debe evaluarse como: "START Good morning STOP"

telegram <- function(...){
  #escribe tu código aquí
}

#Ejemplo Dilan
telegram <- function(x,y) {
  paste("start", x, y , "stop")
}


telegram("good", "morning")
telegram(c("good", "dog", "asdfads"), c("a"))


add_alpha_and_beta <- function (...) {
  
  args <- list (...) # Los argumentos son una lista OBLIGATORIO: DESEMPAQUETAMIENTO
  cosa <- args [["cosa"]] #Comienza la lista de args
  uno <- args [["uno"]]
  dos <- args [["dos"]]
  
  cosa + uno + dos
}

add_alpha_and_beta(cosa = 7,uno = 5, dos= 0) # Se forza la función, colocando los argumentos

add_alpha_and_beta(alpha = 12341237,beta = 453455)


mad_libs <- function(...){
  # Haz el desempaquetamiento aquí
  
  args <- list(...)
  place <- args[["place"]]
  adjective <- args[["adjective"]]
  noun <- args[["noun"]]
  
  # No modificar el código abajo
  # Recuerda crear las variables necesarias
  return(paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus."))
  
}
mad_libs("mad","as","it can be") # por ejemplo

mad_libs(place ="mad", adjective = "as", noun = "it  be") # por ejemplo # FORZO LA FUNCIÓN


# Operadaor binario 

"%mult_add_one%" <- function (izquierda, derecha) {
  #¡Observe las dobles comillas! 
  izquierda * derecha + 1
}

4 %mult_add_one% 5 

# Ejercicio rápido
operador debe llamarse %p%
  Aplicarlo así -->  "Buen" %p% "trabajo!"
Resultado ---> "Buen trabajo!"


# Ejercicio de Isra

"%p%"  <- function (x,y) 
{
  paste(x,y)
}

"Buen" %p% "trabajo!"
"Bueno" %p% "trabajoasas!"

?append

?complete.cases

matriz2 <- data.frame(x = c(1,2,NA,2,NA),
                      y = c(1,2,3,2,3),
                      z = c(4,NA,3,2,3),
                      f = c(2,2,2,2,3))
#lectura de archivos
setwd("c:/DATA/A2-Estadistica-Programacion-con-R-2020/Data/specdata/") # cambiar la ruta a tus archivos de trabajo
file1 <- read.csv("../specdata/001.csv")

dim(matriz2)  #dimensión del df

cc.m <- complete.cases(matriz2)
cc.m

#Conocer el número de filas que no contienen NAs 
sum(cc.m)

# RETO 2
#Sugerencias: Este ejercicio es un poco complicado, así que daré algunos ejemplos de 
# cómo evaluate() debe actuar:

#Termina la definición de la función a continuación para que si una función se pasa al argumento
#"func" y algunos datos (como un vector) se pasan al argumento dat la función evaluate() 
#devolverá el resultado de que se haya pasado como argumento para func.



evaluate(sum, c(2, 4, 6)) debe evaluar a 12
evaluate(median, c(7, 40, 9)) debe evaluar a 9
evaluate(floor, 11.1) debe evaluar a 11

#Recuerda hacerlo en un script!

evaluate <- función (func, dat) {
  # ¡Escribe tu código aquí!
  # Recuerde: ¡se devolverá la última expresión evaluada!
}

# RETO 3
# Descomprimir el archivo zip : DataSet Contaminantes en Aire y seleccionar 2 de los 
#archivos, de preferencia el primero 000.csv y 001.csv
# Utilizar la funcion complete.cases() con estos dos archivos y almacenar el resultado 
#en un dataframe nuevo de 2x2 (nxn) donde la columna 1 tiene el número o nombre de archivo 
#y la columna 2 la cantidad de casos completos (sin NA) de cada archivo.