## librerias a utilizar
require(data.table)
require(dplyr)

## se obtiene las variables calculadas y las etiquetas de actividades
nom_vector <- read.table("./data/UCI HAR Dataset/features.txt")
nom_vector <- as.vector(nom_vector)
act <- data.table(read.table("./data/UCI HAR Dataset/activity_labels.txt"))
setkey(act, V1)

##======================== Train =========================
##1. Merges the training and the test sets to create one data set.
##a) Crear un dataset completa de Train
## cargar etiquetas de vector y actividades

##a.1. Cargar Subject_train.txt, representa al sujeto
sujeto <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

##a.2. cargar y_train.txt, representa la actividad y nombrarlas descritivamente
actividad <- data.table(read.table("./data/UCI HAR Dataset/train/y_train.txt"))
setkey(actividad, V1)
actividad <- merge(actividad,act)

##a.3. cargar vector de 561 variables y los nombres y renombrar las variables
vector <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
names(vector) <- nom_vector$V2
vector <- as.data.table(vector)

##extraer solo mediciones sobre medias y desviacion estandar
nom_vector <- as.data.table(nom_vector)
std <-  as.list(nom_vector[nom_vector$V2 %like% "*std*"])
mean <- as.list(nom_vector[nom_vector$V2 %like% "*mean()*"])
cols <- c(as.character(mean$V2),as.character(std$V2))
vector2 <- select(vector, one_of(cols))

## conjuntar las columnas
train <- cbind(sujeto,actividad$V2)
names(train) <- c("idSuj","Actividad")

##crear tabla solo con las columans std y mean a partir de vector2
train <- cbind(train,vector2)

##============== TEST ===============
##1. Merges the training and the test sets to create one data set.
##a) Crear un dataset completa de Test

##a.1. Cargar Subject_test.txt, representa al sujeto
sujeto <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

##a.2. cargar y_test.txt, representa la actividad y nombrarlas descritivamente
actividad <- data.table(read.table("./data/UCI HAR Dataset/test/y_test.txt"))
setkey(actividad, V1)
actividad <- merge(actividad,act)

##a.3. cargar vector de 561 variables y los nombres y renombrar las variables
vector <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
names(vector) <- nom_vector$V2
vector <- as.data.table(vector)

##extraer solo mediciones sobre medias y desviacion estandar
nom_vector <- as.data.table(nom_vector)
std <-  as.list(nom_vector[nom_vector$V2 %like% "*std*"])
mean <- as.list(nom_vector[nom_vector$V2 %like% "*mean()*"])
cols <- c(as.character(mean$V2),as.character(std$V2))
vector2 <- select(vector, one_of(cols))

## conjuntar las columnas
test <- cbind(sujeto,actividad$V2)
names(test) <- c("idSuj","Actividad")

##crear tabla solo con las columans std y mean a partir de vector2
test <- cbind(test,vector2)

##==================== conjuntar ===============
## conjunta las observaciones en un solo objeto
all <- rbind(train,test)

## 5. From the data set in step 4, creates a second, independent tidy data set with
##    the average of each variable for each activity and each subject.
## Promedio de cada vairable por Actividad y por Sujeto
resumen <- aggregate(all[,3:81],list(all$idSuj,all$Actividad),mean)
