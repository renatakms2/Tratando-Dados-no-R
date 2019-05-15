#install.packages("ggplot2")
library(ggplot2)

# http://material.curso-r.com/ggplot/
  
dados = mtcars

# Graficos de dipersao entre duas variaveis ---------------------

ggplot(mtcars) + geom_point(aes(x = mpg, y = hp, colour = cyl, size = wt )) + 
              labs(x = "mblabla", y = "hpblabla")

# aes = estetica do grafico

ggplot(mtcars) + geom_point(aes(x = mpg, y = hp, colour = as.factor(am) )) + 
  labs(x = "mblabla", y = "hpblabla")


# cor fora da estetica para mudar a cor sem depender de variaveis
ggplot(mtcars, aes(y = mpg, x = disp)) + geom_point(color = "green")

# mudando formas dos pontos
ggplot(mtcars, aes(y = mpg, x = disp)) + 
  geom_point(colour = "red", size = 2, shape = 3, alpha = 0.5)

# Graficos de Linhas entre duas variaveis -------------------

ggplot(mtcars, aes(x = mpg, y = hp)) + geom_line()

# Grafico de barras ----------------------------------------

ggplot(mtcars, aes(am)) + geom_bar ()

# Histograma _----------------------------------

ggplot(mtcars, aes(disp)) + geom_histogram (bins = 30)

# boxplot _----------------------------------

ggplot(mtcars, aes(y= disp, x = as.factor(am))) + geom_boxplot ()


#####################################################
ggplot(mtcars) + 
  geom_point(aes(y = mpg, x = disp))
# direita
#curva de densidade com suas bandas de confiança
ggplot(mtcars) + 
  geom_smooth(aes(y = mpg, x = disp))
############
#sobrepostos
ggplot(mtcars, aes(y = mpg, x = disp)) + 
  geom_point() +
  geom_smooth(method = "lm")+
  facet_wrap(~gear) #dividindo em blocos por gear
###########
ggplot(mtcars, aes(y = mpg, x = disp)) + 
  geom_point(aes(colour = as.factor(cyl))) + #colorindo pelos fatores de cyl
  geom_smooth(method = "lm")
#####################################################

# fim da parte dos cars


dados = PlantGrowth

ggplot(dados, aes(y = weight, x = group, fill = dados$group )) + # fill poe cor nos fatores
                                          geom_boxplot() +  guides(fill = FALSE)  # guides tira a legenda
                          



