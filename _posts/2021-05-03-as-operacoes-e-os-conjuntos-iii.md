---
layout: post
title: As operações e os conjuntos – III
mathjax: true
author: Raimundo Nonato Launé macêdo
tags: []
---

No artigo anterior, nós tratamos sobre o conjunto dos números naturais, fizemos algumas operações de contagem e dissemos que $$\mathbb{N}$$ é fechado em relação à adição e também em relação à multiplicação. No entanto, não pudemos afirmar a mesma coisa em relação à subtração.


Claro que um problema do tipo $$130 - 300$$ terá uma solução e, neste caso, é $$-70$$. Mas se $$-70$$ não está em $$\Bbb{N}$$, qual conjunto conterá tais números?

Em `complemento` aos Naturais, apresentamos o Conjunto do Números Inteiros Relativos ao Zero, ou simplesmente os Inteiros, que é representado pela letra maiúscula, também estilizada zê: $$\Bbb{Z}$$. Que pode ser assim apresentado:

$$ \Bbb{Z} = \{..., -3, -2, -1, 0, +1, +2, +3, ...\}. $$

Vê-se que o zero não possui sinal por ser neutro. Usualmente não se colocam os sinais de mais nos números positivos, assim

$$ \Bbb{Z} = \{..., -3, -2, -1, 0, 1, 2, 3, ...\}. $$

Vemos então que a solução do problema anterior tem agora `cobertura`: $$-70 \in \Bbb{Z}$$. Mais do que isso:

$$  \{0, 1, 2, 3, ...\} \subset \{..., -3, -2, -1, 0, 1, 2, 3, ...\},$$

ou seja, os Naturais constituem um subconjunto dos Inteiros. Em símbolos, $$\Bbb{N} \subset \Bbb{Z}$$. 

Logo $$\Bbb{Z}$$ cobre, até agora, a solução de todos os nossos problemas.

## Um pouco mais sobre os Inteiros

### Alguns subconjuntos

Dado que todo conjunto é subconjunto de si próprio, temos que

$$\Bbb{Z} = \{..., -3, -2, -1, 0, 1, 2, 3, ...\} \subset \Bbb{Z}.$$

Conjunto dos Inteiros não nulos

$$\Bbb{Z}^* = \{..., -3, -2, -1, 1, 2, 3, ...\} \subset \Bbb{Z}.$$

Conjunto dos Inteiros não negativos

$$\Bbb{Z}_+ = \{0, 1, 2, 3, ...\} = \Bbb{N} \subset \Bbb{Z}.$$

Conjunto dos Inteiros positivos

$$\Bbb{Z}_+^* = \{1, 2, 3, 4, ...\} = \Bbb{N}^* \subset \Bbb{Z}.$$

Conjunto dos Inteiros não positivos

$$\Bbb{Z}_- = \{..., -3, -2, -1, 0\} \subset \Bbb{Z}.$$

Conjunto dos Inteiros negativos

$$\Bbb{Z}_-^* = \{..., -4, -3, -2, -1\} \subset \Bbb{Z}.$$

Conjunto dos Inteiros pares

$$\{2k; k \in \Bbb{Z}\} = \{..., -6, -4, -2, 0, 2, 4, 6, ...\} \subset \Bbb{Z}.$$

Conjunto dos Naturais ímpares

$$\{2k+1; k \in \Bbb{Z}\} = \{..., -5, -3, -1, 1, 3, 5, 7, ...\} \subset \Bbb{Z}.$$

### Relação de ordem

Para todo $$z \in \Bbb{Z}$$, teremos sempre que $$z \lt z+1$$ (equivalentemente $$z-1 \lt z$$). É o mesmo que escrever

$$... \lt -3 \lt -2 \lt -1 \lt 0 \lt 1 \lt 2 \lt 3 \lt ...$$.

### Operações com os Inteiros

Vimos que os Naturais também são Inteiros, logo já temos que $$\Bbb{Z}$$ é fechado em relação à adição e à multiplicação. Ótimo!

Nos próximos problemas, para efeitos didáticos, associaremos quando for possível aos números inteiros positivos o termo `crédito`, da mesma forma aos negativos o termo `débito`.

**Situação 1:** Antônio precisa adquirir um bem no valor de R$ 165,00. Como no momento presente não estava com esse dinheiro à disposição, resolveu tomar emprestado com sua cunhada Marta esta quantia. Recebido o empréstimo, Antônio fez a compra. No final da semana Antônio recebeu um adiantamento e pagou a Marta a quantia de R$ 100,00.

**Indagação** Antônio liquidou (mesmo que zerar) seu empréstimo com Marta?

Claro que não! Como devemos expor o problema matematicamente?

$$-165 + 100 = -65$$

Interpretação: Deve 165 e credito de 100. Ficou devendo 65.

Podeŕamos também escrever

$$+100 - 165 = -65$$

ou

$$100 - 165 = -65$$

Interpretação: Tem um crédito de 100, porém deve 165. Ficou devendo 65.

Em todos os casos, o resultado é -65. Ou seja, após a efetização de todas as transações, ainda possui um débito de R$ 65,00.

Toda vez que o total de créditos é menor que o total de débitos, ainda restará débito!

#### Faça você mesmo!

$$
\begin{align}
  \tag{Ex:1}
  40 - 60 +50 - 70 +60 -80 = -60.
\end{align}
$$

O que temos aqui: Somando todos os créditos, temos (+150) e somando-se todos os débitos, obtemos (-210), logo é normal que operando as transações, reste um débito de 60.

Como interpretaríamos a expressão (Ex:1)?

Imagine que você opera com um credor, sua conta esta zerada e faz as seguintes transações: 
- Certo dia credita R$ 40,00; 
- Depois toma emprestado R$ 60,00; 
- Em outro dia faz um depósito de R$ 50,00; 
- Volta e faz um débito de R$ 70,00;
- Volta a fazer um depósito de R$ 60,00;
- Em outro dia faz um débito de R$ 80,00.

Simples de entender o fato da conta estar no vermelho e com débito de R$ 60,00.

No próximo artigo continuaremos tratando um pouco mais sobre os Inteiros. Até lá!
