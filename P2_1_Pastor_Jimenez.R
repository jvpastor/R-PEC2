library(readr)
data <- read_csv("titanic.csv")


hist(data$Age[data$Sex == "male"], col=rgb(1, 0, 0, alpha=0.25))
hist(data$Age[data$Sex == "female"], col=rgb(0, 0, 1, alpha=0.25), add=T)
# 1. Histograma de la variable Age

ggplot(data, aes(x=Age, fill=Sex)) + geom_histogram(alpha=0.5, position='identity')
# 2. Visualizaci�n de la variable Name, se puede extraer el t�tulo que es dado a cada tripulante

title <- sapply(strsplit(data$Name, split='[,.]'), "[[", 2)

replace_title <- function(title) {
  title <- trimws(title)
  if (title %in% c("Mme", "Ms")) {
    return("Mrs")
  } else if (title %in% c("Mlle")) {
    return("Miss")
  } else if (title %in% c("Capt", "Dr", "Rev", "Major", "Col")) {
    return("Prof")
  } else if (!title %in% c("Mr", "Mrs", "Miss", "Master")) {
    return("Otros")
  } else {
    return(title)  
  }
}

data$Title <- sapply(title, replace_title, USE.NAMES=F)
# 3. Extracci�n de los datos de la variable name y homogeneizaci�n de los t�tulos

boxplot(Age ~ Title, data=data)
# 4. Mediante boxplot, se puede ver que los Mr y Mrs son atribu�bles a unas edades mayores que a Master y Miss

barplot(tapply(data$Survived, data$Title, mean))
# 5. Gr�fico de barras que relaciona la supervivencia con el t�tulo.
# Se puede apreciar que el valor Otros de la variable Title est� m�s repartida entre supervivientes y no supervivientes,
# debido a que en ella se comprenden tanto hombres como mujeres y antes, en los diagramas de cajas se vio que la edad de los pasajeros 
# con el valor Otros en Title tienen una edad superior al resto.

table(title[data$Title == "Otros"])
# 6. Se ha hecho una nueva asignaci�n de valores para la variable Title

