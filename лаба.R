j <- list(
  wheels = 4,
  signal = "бип - бип",
  colour = "черный"
)

class(j) <- "Car"

print.Car <- function(cr){
  cat("колес", j$wheels, "\n")
  cat("сигнал", j$signal, "\n")
  cat("цвет", j$colour, "\n")
  cat("название", cr$name, "\n")
  cat("топливо", cr$fuel)
}

k <- list(
  name = "lada",
  fuel = "бензин"
)
class(k) <- c("NewCar1", "Car")

l <- list(
  name = "mazda",
  fuel = "дизель"
)
class(l) <- c("NewCar2", "Car")

m <- list(
  name = "tesla",
  fuel = "электричество"
)
class(m) <- c("NewCar3", "Car")

human <- function(){
  v1 <- readline("Информпацию о какой машине вы хотите узнать (lada, mazda, tesla): ")
  if (v1 == "lada") print.Car(k)
  if (v1 == "mazda") print.Car(l)
  if (v1 == "tesla") print.Car(m)
}

human()
