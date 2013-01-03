#lang racket/base
;; Arquivo contendo visão geral sobre condicionais em scheme (Racket)

(define var-verdadeira true)
(define var-falsa true)

(cond ; Operador de condicao entre parenteses
  [true "resultado true"] ; Cada uma das opções entre colchetes.
  [else "resultado else"] ;  [*expressao que retorna verdadeiro/falso* *valor retornado*]
  ); retorna "resultado true"