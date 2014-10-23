#lang racket
;; @author Emerson Rocha Luiz <emerson@alligo.com.br>


;; -----------------------------------------------------------------------------
(define-struct pessoa (nome nascimento mãe pai))
;; Um elemento pessoa de Pessoa é uma estrutura
;; (make-pessoa um-nome um-nascimento uma-mãe um-pai) onde
;; um-nome: String, nome da pessoa
;; um-nascimento: Número, ano de nascimento
;; uma-mãe: Pessoa, uma pessoa que representa a mãe
;; um-pai: Pessoa, uma pessoa que representa o pai

;;           *
;;         Chaos
(define Chaos (make-pessoa "Chaos" 1113 empty empty))

;;          *             *
;;        Rhea__________Cronus
;;     *           |
;;   Maia________Zeus
;;           |
;;         Hermes
(define Hermes (make-pessoa "Hermes" 1986
                            (make-pessoa "Maia" 1950 empty empty)
                            (make-pessoa "Zeus" 1930
                                         (make-pessoa "Cronus" 1899 empty empty)
                                         (make-pessoa "Rhea" 1899 empty empty))))
