#instalando e carregando os pacotes necess?rios para o estudo
install.packages(c("tidyverse", "nycflights13", "gapminder", "Lahman"))

#for?ando a instala??o do pacote stingi para carregamento correto do pkg tidyverse
install.packages("stringi", type = "source")
install.packages("stringi")

library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)

#verificando o dataset exemplo mpg do pckg ggplot2 para analisar sua estrutura
tibble(mpg)

#criando um primeiro gr?fico a partir do dataset, analisando as informa??es de displ (tamanho do motor do carro em litros)
#e hwy (efici?ncia do combust?vel em gal?es por litro (gpl))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class),
             position = "jitter") +
  geom_smooth(se = FALSE) +
  labs(title = "Efici?ncia dos tipos de carro x tamanho do motor",
       x = "Tamanho do Motor (L)",
       y = "Consumo de Combust?vel (GPL)",
       caption = "(dados de amostra obtidos do pckg ggplot2)")

#verificando o dataset exemplo diamonds
tibble(diamonds)

#criando um gr?fico de barras a partir do dataset
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity)) +
  coord_polar()
       