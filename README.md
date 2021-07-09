# Pokedex-iOS-project

Como a API nos retorna imagens pixeladas, resolvi modifiicar a identidade visual da aplicação para um modelo mais retro, pixelado, como podemos ver na imagem a seguir:
Foram modficadas as fontes do projeto.
Adicionei uma extensao que permite o espaçamento de letras, pois a fonte pixelada estava com leitura prejudicada.

![image](https://user-images.githubusercontent.com/56733190/125093156-6fd09400-e0a8-11eb-9c53-81533d796d54.png)


Agora, na versao 1.05, temos uma API intermediaria, feita pelo Gabriel (https://github.com/gabrieldep), https://github.com/gabrieldep/PokemonAPI. Com essa API, iremos trazer na tela de detalhes, dados como, uma imagem em movimento, BaseStats, como, SP Atack, Defense, HP, e etc, além de claro, Nome, id, e tipo de pokemon.
A tela esta em desenvolvimento.
Nessa versão, mudei o layput principal que envolve o app, trazendo um design mais minimalista e um pouco moderno.

![image](https://user-images.githubusercontent.com/56733190/125004634-52f87a00-e030-11eb-8b51-1a9dd863a76e.png)


Para uma versão 1.05, mudei a forma de obtenção dos dados para as celulas, através de um arquivo json.
Mapeei esses arquivos, no arquivo PokeData.swift, depois, obti os mesmos através do arquivo PokeLoader.swift.



Na tela principal, utilizei apenas os atributos de nome e tipo de pokemon.
Tratei tambem um erro, onde o changerSlider estava sendo alterado simultaneamente em alguams células. Para isso, deixei as céluals preparadas para reuso.

![image](https://user-images.githubusercontent.com/56733190/124819913-36cadf00-df43-11eb-9e33-2a0083b0a3ef.png)


Para a 1.1, estou criando uma UiView que será aberta ao clicar no nome do pokemon e exibirá os status como, HP, Atack, etc; 

![image](https://user-images.githubusercontent.com/56733190/124819965-4a764580-df43-11eb-8266-2afeced58aae.png)


Projeto de estudo para população de dados em lista, com o objetivo de fazer uma tabbleview. Para versão 1.0, temos a lista de 58 pokemons, com a aopção de marcar os ja captudados.
Em desenvolvimento para 1.1, estou tratando a tela de login e fazendo uma tela de descrição, com atributos de cada pokemon. O objetivo é que ao clicar em um nome de pokemon, o app abra a tela de descrição.

![image](https://user-images.githubusercontent.com/56733190/124818811-ddae7b80-df41-11eb-8d9d-08b2e790d796.png)

