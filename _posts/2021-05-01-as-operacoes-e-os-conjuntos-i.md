---
layout: post
title: As operações e os conjuntos – I
mathjax: true
author: Raimundo Nonato Launé macêdo
tags:
- Conjuntos
- Números
---

Este é o primeiro de uma série de artigos que escreveremos com o objetivo de realizar um estudo singelo sobre os conjuntos numéricos a partir das operações conhecidas. É sigelo, pois não demonstraremos nenhum resultado aqui enunciado. Os conjuntos irão aparecer na medida em que deles necessitemos.

A ideia é problematizar as situações dentro de cada conjunto numérico apresentado. Na medida do possível, com situações simples, tentaremos exaurir os Conjuntos já conhecidos para apresentarmos um outro. De forma que o problema, até então sem solução, encontre `abrigo`, ou seja, um novo conjunto.


Para dar um pouco de formalidade aos estudos que aqui tratados vamos lembrar alguns conceitos `basilares sobre os conjuntos`.

## Conjuntos e elementos

Na matemática, um conjunto é uma entidade que agrega coisas que `cumprem` determinadas `propriedades`. Tais coisas são chamadas de `elementos`. Esta forma de estabelecer um conjunto é bastante abrangente, no sentido de que, se enunciarmos uma propriedade e que não haja algum elemento capaz de cumprir, esse conjunto não terá qualquer elemento, ou seja, é um conjunto vazio. Visite o artigo [Conjunto vazio](/conjunto-vazio/) para mais detalhes.


A que `relação` que poderá existir entre um elemento e um conjunto é chamada de relação de `pertinência`, enquanto que e a relação entre conjuntos é chamada de relação de `inclusão`.

A notação matemática hoje é bastante consistente e facilita sobremedida sua escrita bem como a nossa compreenção sobre o que está escrito. Usam-se em geral as letras maiúscula do alfabeto latino ($$A, B, C,..$$) para designarmos os conjuntos e as minúsculas ($$a, b, c, ...$$) do mesmo alfabeto para designarmos os elementos de um conjunto.

Na medida do possível, representamos um conjunto elencando seus elementos entre chaves e separando-os por vírgualas ou ponto e vígulas. Assim, podemos escrever

$$P = \{a, e, i, o, u\}$$

e diremos que $$P$$ é o conjunto das nossas vogais minúsculas.

Quando não quisermos nos alongar com a escrita e não causar nenhuma confusão de entendimento, poderemos usar as reticências para representar uma sequêcia lógica de raciocínio. Por exemplo,

$$Q = \{1, 2, 3, ..., 9, 10\}$$

e

$$\Bbb{N} = \{0, 1, 2, 3, ...\}$$

será o mesmo que escrevermos $$Q = \{1, 2, 3, 4, 5, 6, 7, 8, 9, 10\}$$ e que $$\Bbb{N}$$ é o conjunto que `começa` no zero, passa pelo em, pelo dois, pelo três e é infinito.

À propósito, o conjunto $$\Bbb{N}$$ apresentado acima é chamado de `Conjunto dos Númerios Naturais`. Daqui para frente diremos apenas os `Naturais`.

### As relações de pertinencia (elemento e conjunto)

Usamos a notação $$x \in J$$ e $$y \notin K$$, para dizermos que $$x$$ é um elemento do conjunto $$J$$ e que $$y$$ não é um elemento do conjunto $$K$$, respectivamente. Abreviadamente dizemos "$$x$$ pertence a $$J$$" e "$$y$$ não pertence a $$K$$".

#### Exemplos

Dado o conjunto $$Q$$ acima, temos que

$$ 3 \in Q,$$

$$ 16 \notin Q.$$

Quando não é possivel ou é enfadonho arrolarmos todos os elementos de um conjunto entre chaves, podemos fazê-lo determinando uma regra ou propriedade que seus elementos cumprem. Podemo ter, então

$$L = \{ x ; \text{"x cumpre determinada regra"}\},$$

e leríamos: $$L$$ é o conjunto dos $$x$$ tal que, $$x$$ cumpre determinada regra. É comum encontrarmos nos livros didáticos, em vez de ponto e vírgula (;), uma barra (/ ou \|) para designar o `tal que`.

#### Exemplo

$$D = \{n \in \Bbb{N}; n \le 12 \} = \{0, 1, 2, 3, ..., 11, 12 \}.$$

Mais à frente, veremos mais formas.

### As relações de inclusão (entre conjuntos)

Quando todos os elementos de um conjunto $$P$$ são também elementos do cojunto $$Q$$, diremos que $$P$$ é um subcjunto de $$Q$$ ou ainda que $$P$$ está contido em $$Q$$ e escreveremos $$P \subset Q$$.

Se invertermos a ordem de escrita dos dois conjuntos $$P$$ e $$Q$$ e escrevermos $$Q \supset P$$, diremos que $$Q$$ contém $$P$$. Contudo, continuaremos entendendo que $$P$$ é subconjunto de $$Q$$.

#### Exemplo

Temos que $$P = \{2k; k \in \Bbb{N}\} = \{0, 2, 4, ...\}$$ é conjunto dos números naturais pares e portanto, $$P \subset \Bbb{N}$$ ou ainda, $$\Bbb{N} \supset P$$.

Em particular, as relações entre conjunto dão encejo a uma `álgebra` muito especial. À medida que necessitarmos de mais substância, nós faremos mais menções.

### Conjunto fechado em relação a uma operação

Nos cursos superiores de Matemática, usa-se um conceito muito apropriado para relatar fatos sobre um conjunto e uma determinada operação entre seus elementos. Dado um conjunto $$M$$ e uma operação $$\oplus$$, dizemos que $$M$$ é `fechado` em relação à operação $$\oplus$$, se para todo $$x,y \in M$$, tivermos $$x \oplus y \in M$$.

No próximo artigo desta série, nós avançaremos um pouco mais.
