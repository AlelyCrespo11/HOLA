#Dataframes
##Vector c()
##matriz matrix()
data<- data.frame(Nombre = c("Arthur", "Amparo", "Valeria"),
                  Notas = c(11, 10, 11),                  
                  Aprobado = c(TRUE, FALSE, TRUE))

View(data)

data<- read.csv("C:/Users/Usuario/Downloads/EACComponenteambientalAire_2819411635296899755.csv")
View(data)

class(data)
head(data, 10)


#Operadores lógicos
5>3
3<5
3>=4
3<=4
4>= c(1,2,3,4)

5%in% c(1,2,3,4,5)

(5>3)& (3>5)
xor((5>3), (3>5))
!(5>3)

df
df[df$]

df <- read.csv("C:/Users/Usuario/Downloads/earthquakes.csv")
nrow(df[df$Magnitude>8,])

vector_num <- seq(9,81,9)
length(vector_num)


m <- matrix(vector_num, ncol = 9, byrow = TRUE)
matrix(m)
            
install.packages("raster")
library(raster)
plot(raster(m))





vector_de_elementos<-sample(1:100,10)
m<- function(vector_de_elementos){
  invert<-length(vector_de_elementos)
  for(j in 1:(invert-1)){
    for(i in 1:(invert-j)){
      if(vector_de_elementos[i]>vector_de_elementos[i+1]){
        itit<-vector_de_elementos[i]
        vector_de_elementos[i]<-vector_de_elementos[i+1]
        vector_de_elementos[i+1]<-itit
      }
    }
  }
  return(vector_de_elementos)
}
invertido<-m(vector_de_elementos)
vector_de_elementos
invertido
