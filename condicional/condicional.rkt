;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname condicional) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Arquivo contendo visão geral sobre condicionais em scheme (Racket)

(define var-verdadeira true)
(define var-falsa true)

(cond ; Operador de condicao entre parenteses
  [true "resultado true"] ; Cada uma das opções entre colchetes.
  [else "resultado else"] ;  [*expressao que retorna verdadeiro/falso* *valor retornado*]
  ); retorna "resultado true"