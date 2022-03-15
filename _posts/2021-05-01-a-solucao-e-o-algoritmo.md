---
layout: post
title: A solução e o algoritmo
mathjax: true
author: "Raimundo Nonato Launé macêdo"
---

Em geral, para se resolver um determinado problema, existem diversas formas ou abordagens. Pode acontecer que uma abordagem não se diferencie de outra já existente senão pela quantidade de passos dados para chegar à tal solução.


**O que é um algoritmo?**
Em pesquisa rápida encontramos:

>MATEMÁTICA - sequência finita de regras, raciocínios ou operações que, aplicada a um número finito de dados, permite solucionar classes semelhantes de problemas. 
>
INFORMÁTICA - conjunto das regras e procedimentos lógicos perfeitamente definidos que levam à solução de um problema em um número finito de etapas.

As duas definições envolvem o binômio problema-solução. Além disso, as duas definições usam a palavra regra e operações/procedimentos bem definidos e em quantidade finita. Ótimo!

**Nada como um bom exemplo!**

Como sou matemático, vou puxar para "minha sardinha". Imaginando que todo mundo que se interessou por este artigo passou pelos cursos colegiais e resolveu uma equação do segundo grau, devemos lembrar que a solução dessa classe de problemas não se encontra apenas dando uma "olhadela" descompromissada na igualdade.

**Seja P:**
O problema de encontrar os dois números reais $$x'$$ e $$x''$$ tais que satisfaçam a igualdade

$$ ax^2 + bx + c = 0. $$

Se você bem se lembra, para resolver este tipo de problema, podemos utilizar um método (que nem é de Bhaskara) que consiste apenas em manipular os coeficientes de $$x^2$$, $$x^1$$ e $$x^0$$, nomeadamente, $$a$$, $$b$$ e $$c$$, respectivamente.

Então a primeira coisa a fazer é obter o valor de $$a$$, de $$b$$ e de $$c$$. (tomemos nota!)

Novamente, devemos lembrar que, segundo o método apresentado, as duas soluções devem satisfazer a seguinte afirmação:

Se $$x$$ é solução de **P** então vale a seguinte relação entre $$x$$ e os coeficientes $$a$$, $$b$$ e $$c$$:

$$
\begin{align}
  \tag{eq:1}
  x = \frac{-b \pm \sqrt{b^2-4.a.c}}{2.a}.
\end{align}
$$

O lado direito desta igualdade nos abre dois alertas:

Como não podemos ter um denominador nulo, o valor de $$a$$ não pode ser zero. Antes disso, esta expressão só pode ser escrita porque estamos tratando de uma equação do segundo grau e se $$a = 0$$, nem teríamos uma. (tomemos nota!)

O radicando não pode ser um número negativo pois estamos tratando de raízes `reais` e não das `complexas`. (tomemos nota!)

O numerador apresenta uma `soma` e uma `diferença`. De fato, iremos encontrar uma solução $$x'$$ para a soma e outra $$x''$$ para a subtração ou vice e versa. (tomemos nota!)

Ora! o que estamos fazendo não é nada mais do que nos organizando para resolver o problema **P**, uma vez que já conhecemos um modo de chegarmos até a sua solução.

Que tal arrumarmos as nossas anotações? Vamos adotar uma ordem `lógica` e `bem definida` para escrevermos as nossas observações:

1. Vamos começar;
2. Precisamos conhecer os coeficientes da equação ($$a$$, $$b$$ e $$c$$);
3. Não devemos aceitar $$a = 0$$, pois, se assim for, nem teríamos uma aquação do segundo grau e então devemos voltar para o passo anterior;
4. Precisamos saber o sinal daquele radicando: $$b^2-4.a.c$$. Ele é conhecido como discriminante da equação e lhe é atribuído a letra grega maiúscula delta ($$\Delta$$). Assim, se $$\Delta \lt 0$$, devemos voltar ao passo [2.], pois a equação não possui raízes reais;
5. Se $$\Delta = 0$$, a expressão (eq:1) tornar-se-á apenas $$x = \frac{-b}{2.a}$$. Calculamos e apresentamos o resultado com a assertiva de que as raízes reais são iguais. Como nada mais há que fazer, vamos direto para o final do procedimento;

6. Se $$\Delta \gt 0$$, devemos calcular um valor para $$x$$ com respeito à soma e outro com respeito à diferença em (eq:1), exibimos os resultados; e
7. Terminamos.

O que acabamos de escrever? Um algoritmo!

Eperamos que você tenha gostado do assunto.
