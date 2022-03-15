---
layout: post
title: As operações e os conjuntos – II
mathjax: true
author: Raimundo Nonato Launé macêdo
tags: []
---
Neste artigo abordaremos sobre quais operações o conjunto dos números naturais oferece `suporte`. Ou ainda, como foi dito no artigo anterior, para quais operações $$\Bbb{N}$$ é fechado. 

No primeiro artigo desta série, nós revimos alguns conceitos sobre os conjuntos, inclusive apresentamos sutilmente o primeiro conjunto numérico do nosso interesse, nomeadamente o conjunto dos números naturais, que é representado pela letra ene maiúscula `estilizada` $$\Bbb{N}$$.


## Um pouco mais sobre os Naturais

### Alguns subconjuntos dos Natutais

Dado que todo conjunto é subconjunto de si próprio,

$$\Bbb{N} = \{0, 1, 2, 3, ...\} \subset \Bbb{N}.$$

Conjunto dos Naturais não nulos

$$\Bbb{N}^* = \{1, 2, 3, ...\} \subset \Bbb{N}.$$

Conjunto dos Naturais pares

$$\{2k; k \in \Bbb{N}\} = \{0, 2, 4, 6, ...\} \subset \Bbb{N}.$$

Conjunto dos Naturais ímpares

$$\{2k+1; k \in \Bbb{N}\} = \{1, 3, 5, 7, ...\} \subset \Bbb{N}.$$

### Relação de ordem

Para todo $$n \in \Bbb{N}$$, teremos sempre que $$n \lt n+1$$. É o mesmo que escrever

$$0 \lt 1 \lt 2 \lt 3 \lt ...$$

>
Uma observação sobre as notações de inclusão e de ordem. Melhor que dar nomes para as notações $$<, \leq, \geq$$ e $$ > $$, é entender o seu desenho. A abertura estará sempre para o lado que se julga maior. A mesma ideia está nas notações $$\subset, \subseteq, \supseteq$$ e $$\supset$$.
>
Por exemplo, escrever que $$2 \lt 5$$ tem o mesmo interpretação de que $$5 \gt 2$$, assim como, $$x \lt 9$$ tem o mesmo significado de $$9 \gt x$$. Da mesma forma para conjuntos, escrever $$\{0, 1, 2, 3\} \subset \Bbb{N}$$, tem o mesmo significado que $$\Bbb{N} \supset \{0, 1, 2, 3\}$$. Em última análise, muda-se apenas a forma de ler ou a ordem de importâcia do objeto em cada caso.


### Os Naturais e a contagem

Desde os tempos mais remotos as pessoas se deparavam com a necessidade de contar... É assim que os criadores de ovelhas, por exemplo, precisavam constantemente verificar o tamanho do seu rebanho. O problema de ontem e de hoje cons iste em `contar` quantas ovelhas saem para o pasto e quntas retornam ao final de em dado período de tempo. Nada anormal que sejam observados acréscimos ou perdas.

O resultado obtido pela contagem na saída ao pasto e, da mesma forma, o do retorno é associado um número. Asseguramos que esse número é um número natural. 

Claro que se não havia o que contar, `nada` era registrado. Com o passar do tempo, certamente este nada passou a ser registrado como `zero`. Vale registrar que alguns autores não consideram o zero como um número natural, outros sim. Neste estudo iremos considerar zero um número natural.


### Operações com os Naturais

#### Adição, subtração e multiplicação

Suponha que um proprietário tenha contado seu rebanho de ovelhas antes do pastor levá-lo ao pasto e que registrou 302 cabeças. Quando do retorno do pasto (que pode levar dias), fez a contagem e `deduziu` que haviam 15 cabeças a mais como resultado do nascimento novos animaizinhos e agora já haviam 317 cabeças.

Remotamente, não se sabe precisar como seria feita esta dedução. Por um cálculo simples faríamos

$$302 + 15 = 317$$

$$317 - 302 = 15.$$

Com o passar do tempo, com a evolução do vocabulário, poderíamos ter a seguinte situação: O proprietário saiu com 120 cabeças para negociar no mercado de ovelhas e, entre trocas, vendas e aquisições, viu que seu rebanho havia duplicado ao retornar. O cálculo poderia ser registrado de forma simples assim

$$2 \times 120 = 240.$$

Bons tempos!

Agora vamos imaginhar uma situação meio exótica em que um calculista das épocas remotas auxiliava os negócios mais complicados no mecado de ovelhas.

A situação: Um certo proprietário havia levado ao mercado 130 cabeças de ovelhas, vendeu tudo a um mercador e recebeu o dinheiro de um total de 200 cabeças, sendo que e o restante das ovelhas deveria ser entregue no dia de feira da semana seguinte. Se o calculista tivesse registrado

$$200 - 130 = 70$$

Teria que registrar em algum lugar que havia uma dívida de 70 ovelhas. 

Mas se tivesse registrado

$$130 - 200 = ??,$$

qual seria a resposta?

A constatação é a que se o tal calculista só conhecesse os números naturais, talvez nem escrevesse este absurdo! De fato não há número natural para expressar este resultado.

## Tome nota

- O conjunto $$\Bbb{N}$$ é fechado em relação a operação de adição, pois para quaisquer que sejam os números naturais $$m,n \in \Bbb{N}$$, temos $$m + n \in \Bbb{N}$$.

- O conjunto $$\Bbb{N}$$ é fechado em relação a operação de multiplicação, pois para quaisquer que sejam os números naturais $$m,n \in \Bbb{N}$$, temos $$m \times n \in \Bbb{N}$$.

- O conjunto $$\Bbb{N}$$ NÃO é fechado em relação a operação de subtração, pois $$5$$ e $$6$$ são naturais, porém $$5 - 6 \notin \Bbb{N}$$.

Mas nós não poderemos realizar esta operação $$130 - 300?$$

Trataremos desta e de outras situações nos próximos artigos!
