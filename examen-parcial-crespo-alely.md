EXAMEN PARCIAL DE PROGRAMACIÓN
================
Alely Gabriela, Crespo Ccerhuayo
10/12/2021

# PARTE 1

## Ejercicio 1

### Crear una función que permita calcular el ángulo entre las rectas L1 y L2 teniendo sus pendientes como parámetros. La función debe considerar si rectas no se cruzan.

``` r
ALFA <- function(m1 = "pendiente de L1", m2 = "pendiente de L2"){
  formula <- atan((m2 - m1)/(1 + m1*m2))
  return(formula)
}
ALFA(1,1/2)
```

    ## [1] -0.3217506

## Ejercicio 2

### Crear una función que grafique un polígono ingresando un dataframe con sus coordenadas este y norte como parámetros. La función debe aceptar dataframes con un máximo de 50 registros, realizar la prueba con las siguientes coordenadas.

``` r
cd <-c("A","B","C","D","E","F")
ESTE<-c(272841.7,272893.6,272892.5,272913.8,272911.2,272837.5)
NORTE<-c(8666459.9,8666456.9,8666446.1,8666441.5,8666399.9,8666407.9)
d_f<-data.frame(cd,ESTE,NORTE)

poligono<-function(df){
  ESTE<-c(df[,"ESTE"],df[1,2])
  NORTE<-c(df[,"NORTE"],df[1,3])
  return(plot(ESTE,NORTE,type="l"))
}
poligono(d_f)
```

![](examen-parcial-crespo-alely_files/figure-gfm/unnamed-chunk-2-1.png)<!-- -->

# PARTE 2

## Ejercicio 1

#### Realizar un an analisis e interpretación de los datos de los precios de las casas. Se puede realizar gráficos y calcular estadísticos.

#### (Adicional) Realizar un modelo de regresión para predecir cuál es la combinación de variables para predecir el precio.

## Ejercicio 2

### Leer el dataset de frutas dataset-fruits.csv realizar lo siguiente

``` r
df <- read.csv("C:/Users/Usuario/Downloads/dataset-fruits.csv")
```

#### a) Eliminar la columna id

``` r
df <- read.csv("C:/Users/Usuario/Downloads/dataset-fruits.csv")
df$ï.._id = NULL 
head(df)
```

    ##   paisorigen_id pais_origen producto paisdestino_id pais_destino aÃ.o
    ## 1           210     Ecuador   Banana             32    Argentina 2013
    ## 2           202     Bolivia   Banana             32    Argentina 2013
    ## 3           221    Paraguay   Banana             32    Argentina 2013
    ## 4           203      Brasil   Banana             32    Argentina 2013
    ## 5            NA       Otros   Banana             32    Argentina 2013
    ## 6           210     Ecuador   Banana             32    Argentina 2014
    ##   moneda_cod  moneda   totales
    ## 1        USD Dolares 151963.47
    ## 2        USD Dolares  30271.17
    ## 3        USD Dolares   4802.20
    ## 4        USD Dolares   4765.58
    ## 5        USD Dolares      0.00
    ## 6        USD Dolares 162352.90

#### b) Mostrar un resumen del dataset y explicar a grandes rasgos

``` r
summary(df)
```

    ##  paisorigen_id   pais_origen          producto         paisdestino_id
    ##  Min.   :202.0   Length:110         Length:110         Min.   :32    
    ##  1st Qu.:203.0   Class :character   Class :character   1st Qu.:32    
    ##  Median :210.0   Mode  :character   Mode  :character   Median :32    
    ##  Mean   :239.3                                         Mean   :32    
    ##  3rd Qu.:221.0                                         3rd Qu.:32    
    ##  Max.   :504.0                                         Max.   :32    
    ##  NA's   :25                                                          
    ##  pais_destino            aÃ.o       moneda_cod           moneda         
    ##  Length:110         Min.   :2013   Length:110         Length:110        
    ##  Class :character   1st Qu.:2014   Class :character   Class :character  
    ##  Mode  :character   Median :2015   Mode  :character   Mode  :character  
    ##                     Mean   :2015                                        
    ##                     3rd Qu.:2016                                        
    ##                     Max.   :2017                                        
    ##                                                                         
    ##     totales         
    ##  Min.   :     0.00  
    ##  1st Qu.:    18.12  
    ##  Median :  1327.97  
    ##  Mean   : 12898.82  
    ##  3rd Qu.:  7338.58  
    ##  Max.   :188401.45  
    ##  NA's   :4

#### c) Determinar cuáles son los productos más importantes por cada país

#### d) Realizar un gráfico que represente la cantidad de dolares que transacciona cada país

#### e) Realizar un gráfico que muestre las ganancias de las exportaciones de Chile por producto

## Ejercicio 4
