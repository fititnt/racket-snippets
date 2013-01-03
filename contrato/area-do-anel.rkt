#lang racket/base

(define (área-do-disco raio)
  (* 3.14 (expt raio 2)))

;; área-do-anel : número número -> número
;;  Calcular a área de um anel , dados o raio externo e o raio interno , nesta ordem

;; Exemplo : (área-do-anel 5 3) deve produzir 50.24
(define (área-do-anel externo interno )
   (- (área-do-disco externo) (área-do-disco interno)))

;; Testes :
(área-do-anel 5 3)
;; valor esperado ;; 50.24
