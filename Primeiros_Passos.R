#instalando e carregando os pacotes necessários para o estudo
install.packages(c("tidyverse", "nycflights13", "gapminder", "Lahman"))

#forçando a instalação do pacote stingi para carregamento correto do pkg tidyverse
install.packages("stringi", type = "source")
install.packages("stringi")

library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)

#verificando o dataset exemplo mpg do pckg ggplot2 para analisar sua estrutura
tibble(mpg)

#criando um primeiro gráfico a partir do dataset, analisando as informações de displ (tamanho do motor do carro em litros)
#e hwy (eficiência do combustível em galões por litro (gpl))
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class),
             position = "jitter") +
  geom_smooth(se = FALSE) +
  labs(title = "Eficiência dos tipos de carro x tamanho do motor",
       x = "Tamanho do Motor (L)",
       y = "Consumo de Combustível (GPL)",
       caption = "(dados de amostra obtidos do pckg ggplot2)")

#verificando o dataset exemplo diamonds
tibble(diamonds)

#criando um gráfico de barras a partir do dataset
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity)) +
  coord_polar()
       