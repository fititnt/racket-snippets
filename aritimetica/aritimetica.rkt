;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname aritimetica) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Arquivo contendo visão geral sobre aritimetica em scheme (Racket)

;; Logica geral: colocar expressão entre parenteses, primeiro o operador, depois as variavies

"Soma: 5 + 5"
(+ 5 6) ; 11

"Soma: 5 + (-6)"
(+ 5 -6) ; -1

"Multiplicação: 8 x 9"
(*  8 9) ; 72

"Divisão: 3/7"
(/ 3 7) ; 0.428571