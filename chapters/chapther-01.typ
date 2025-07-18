#import "../styles.typ": *

= Introdução

#set heading(numbering: none)
== Problemas (pág. 24)

#par(first-line-indent: 0pt)[Em cada um dos Problemas 1 a 4, desenhe um campo de direções para a equação diferencial dada. Baseado no campo de direções, determine o comportamento de $y$ quando $t arrow infinity$. Se esse comportamento depender do valor inicial de $y$ quando $t = 0$, descreva essa dependência.]

+ $y^prime = 3 - 2y$

  #solution([
    Primeiramente, determinemos a solução de equilíbrio: $y^prime = 0$:
    $
      y^prime = 0 arrow.double 3 - 2y = 0 arrow.double y= frac(3, 2)
    $
    Note que na região em que $y < frac(3, 2)$, temos $y^prime > 0$ e na região em que $y > frac(3, 2)$, temos $y^prime < 0$. Assim, as soluções que inciam abaixo da solução de equilíbrio são crescentes enquanto as soluçãos que iniciam acma da solução de equilíbrio são decrescentes. Entretanto, quanto mais próximas da solução de equilíbrio, menos acentuada será a inclinação, dada por $y^prime$. Nesse sentido, as soluções tendem para a *solução de equilíbrio*, conforme indicado no campo de direções abaixo :

    #figure(
      caption: [Campo de direções de $y^prime = 3 - 2y$],
      lq.diagram(
        width: 6cm, height: 5cm, 
        xlabel: $t$, ylabel: $y$, 
        lq.line((0%, 3/2), (100%, 3/2), stroke: (thickness: 1pt, paint: primary-color), label: $y = 3/2$),
        lq.quiver(
          lq.arange(0, 5, step: 0.5),
          lq.arange(0, 3.5, step: 0.5),
          (x, y) => (1, (3- 2*y)),
          color: primary-color, stroke: (thickness: 1.2pt)
        )
      )
    )
  ])

+ $y^prime = 2y - 3$

  #solution([
    Primeiramente, determinemos a solução de equilíbrio: $y^prime = 0$:
    $
      y^prime = 0 arrow.double 2y -3 = 0 arrow.double y= frac(3, 2)
    $
    Neste caso, as soluções afastam-se da solução de equilíbrio como mostrado no campo de direções a seguir:

    #figure(
      caption: [Campo de direções de $y^prime = 2y - 3$],
      lq.diagram(
        width: 6cm, height: 5cm, 
        xlabel: $t$, ylabel: $y$, 
        lq.line((0%, 3/2), (100%, 3/2), stroke: (thickness: 1pt, paint: primary-color), label: $y = 3/2$),
        lq.quiver(
          lq.arange(0, 5, step: 0.5),
          lq.arange(0, 3.5, step: 0.5),
          (x, y) => (1, (2*y - 3)),
          color: primary-color, stroke: (thickness: 1.2pt)
        )
      )
    )
  ])

+ $y^prime = -1 - 2y$

  #solution([
    Determinemos a solução de equilíbrio:
    $
      y^prime = 0 arrow.double -1 - 2y = 0 arrow.double y = -frac(1, 2)
    $
    Como indica o campo de direções abaixo, as soluções tendem para a *solução de equilíbrio*.

    #figure(
      caption: [Campo de direções da equação $y^prime = -1 - 2y$],
      lq.diagram(
        width: 6cm, height: 5cm, xlabel: $t$, ylabel: $y$,
        lq.line((0%, -1/2), (100%, -1/2), stroke: (thickness: 1pt, paint: primary-color), label: $y = -1/2$),
        lq.quiver(
          lq.arange(0, 5, step: 0.5),
          lq.arange(-2, 1.5, step: 0.5),
          (x, y) => (1, -1-2*y),
          color: primary-color, stroke: (thickness: 1.2pt)
        )
      )
    )
  ])

+ $y^prime = 1 + 2y$ 

#solution([
  Determinemos a solução de equilíbrio:
  $
    y^prime = 0 arrow.double 1 + 2y = 0 arrow.double y = -frac(1, 2)
  $
  Como indica o campo de direções abaixo, as soluções afastam-se da *solução de equilíbrio*.

  #figure(
    caption: [Campo de direções da equação $y^prime = 1 + 2y$],
    lq.diagram(
      width: 6cm, height: 5cm, xlabel: $t$, ylabel: $y$,
      lq.line((0%, -1/2), (100%, -1/2), stroke: (thickness: 1pt, paint: primary-color), label: $y = -1/2$),
      lq.quiver(
        lq.arange(0, 5, step: 0.5),
        lq.arange(-2, 1.5, step: 0.5),
        (x, y) => (1, 1 + 2*y),
        color: primary-color, stroke: (thickness: 1.2pt)
      )
    )
  )
])

#par(first-line-indent: 0pt)[Em cada um dos Problemas 5 e 6, escreva uma equação diferencial na forma $(d y)/(d t) = a y + b$ cujas soluções têm o comportamento pedido quando $t arrow infinity$.]

#set enum(start: 5)
+ Todas as soluções se aproximam de $y = 2/3$.

  #solution([
    Seja $y^*$ a solução de equilíbrio. Da resolução dos Problemas 1 a 4, podemos observar que:
      - Para os casos em que as soluções aproximam-se da solução de equilíbrio, $y^prime > 0$ para $y < y^*$ e $y^prime < 0$ para $y > y^*$;
      - Para os casos em que as soluções afastam-se da solução de equilíbrio, $y^prime < 0$ para $y < y^*$ e $y^prime > 0$ para $y > y^*$.
    
    No problema em questão, temos duas equações candidatas na forma $(d y)/(d t) = a y + b$ e cuja solução de equilíbrio é $y^* = 2/3$:
    $
      y^prime = 3y - 2 " (1)"\
      y^prime = 2 - 3y " (2)"
    $

    Sem perda de generalidade, consideremos o valor $y = 0 < 2/3$. A equação candidata $(1)$ fornece $y^prime = -2 < 0$ enquanto a equação candidata $(2)$ resulta em $y^prime = 2 > 0$. 

    Podemos concluir que para a equação cadndidata $(1)$, as soluções afastam-se da solução de equilíbrio e para a equação candidata $(2)$, as soluções aproximan-se da solução de equilíbrio. Assim, nossa resposta é:
    $
      y^prime = 2 - 3y.
    $

  ])

+ Todas as soluções se afastam de $y = 2$.

  #solution([
    Seguindo o raciocínio desenvolvido no problema anterior, uma equação diferencial com solução de equilíbrio igual a $2$ e da qual as demais soluções afastam-se é:
    $
      y^prime = 2y - 1
    $
  ])