;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lista) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Arquivo contendo visão geral sobre listas em scheme (Racket)

;; Lista tipica: 0, 1, 2, 3
(cons 0 
      (cons 1 
            (cons 2 
                  (cons 3 empty)))) ;(cons 0 (cons 1 (cons 2 (cons 3 empty))))

;; Lista abreviada: 0, 1, 2, 3
(list 0 1 2 3) ;(cons 0 (cons 1 (cons 2 (cons 3 empty))))

;; Obter primmeiro valor de uma lista
(first
      (list 'primeiro 'segundo 'terceiro)) ;'primeiro

;; Obter o resto dos valores de uma lista além do primeiro item
(rest
      (list 'primeiro 'segundo 'terceiro)) ;'(cons 'segundo (cons 'terceiro empty))