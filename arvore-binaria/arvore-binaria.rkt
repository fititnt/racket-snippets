;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname arvore-binaria) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; @author Emerson Rocha Luiz <emerson@alligo.com.br>

;; -----------------------------------------------------------------------------
;; Definições e constantes antes dos metodos

;; O tipo ListaDeNumeros é uma lista aonde todos os valores são números

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
;; Chaos é uma constante, com apenas uma lista

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
;; Hermes é uma constante, com mãe, pai, e avós paternos

;; -----------------------------------------------------------------------------
;; Métodos

;; lista-anos: Pessoa -> ListaDeNumeros
;; Função que consome um nó de uma árvore de ascendentes e produz uma lista de 
;; todas os anos de nascimento dos nós
(define (lista-anos pessoa) "@todo")

;; conta-pessoas: Pessoa -> Número
; Função recebe um nó de uma árvore de ascendentes e devolve o número de
; ancestrais do nó correspondente
(define (conta-pessoas pessoa)
  (cond
    [(empty? pessoa) 0]
    ; Necesário reduzir o nó atual e chamar rotina auxiliar
    [else (+ -1 
             (conta-pessoas-auxiliar pessoa)
             )]))

;; conta-pessoas-auxiliar Pessoa -> Número
; Subrotina que é o coração de conta-pessoas. Como o proprio nó não pode
; ser considerado, é necessário separar em duas funções
(define (conta-pessoas-auxiliar pessoa)
  (cond
    [(empty? pessoa) 0]
    [else (+ 1 
             (conta-pessoas-auxiliar (pessoa-mãe pessoa))
             (conta-pessoas-auxiliar (pessoa-pai pessoa))
             )]))
;; Testes
(check-expect (conta-pessoas Chaos) 0)
(check-expect (conta-pessoas Hermes) 4)
