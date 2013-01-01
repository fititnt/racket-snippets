#lang racket
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