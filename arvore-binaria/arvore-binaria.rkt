;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname arvore-binaria) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; @author Emerson Rocha Luiz <emerson@alligo.com.br>

;; -----------------------------------------------------------------------------
;; Definições e constantes antes dos metodos

;; O tipo ListaDeNumeros é uma lista aonde todos os valores são números. Se
;   vazia, seu único valor será empty
;; O tipo ListaDeStrings é uma lista aonde todos os valores são strings. Se
;   vazia, seu único valor será empty

(define-struct nó (id info esq dir))
; Uma AB (árvore binária) é:
; 1. empty
; 2. (make-nó id i e d), onde
; id : Número (representa o id do nó)
; i : Símbolo (representa a informação armazenada no nó)
; e : AB (representa a subárvore esquerda do nó)
; d : AB (representa a subárvore direita do nó)
; Uma ABP (árvore binária de pesquisa) é:
; 1. empty
; 2. (make-nó id info esq dir) se:
; id : Número (representa o id do nó)
; i : Símbolo (representa a informação armazenada no nó)
; esq : ABP (subárvore da esquerda)
; dir : ABP (subárvore da direita)
; Todos os ’id’s dos nós em esq são menores que ’id’ do nó atual
; Todos od ’id’s dos nós em dir são maiores que ’id’ do nó atual

;; Definido duas constantes, nós-a e nós-vazio, para testes logo adiante
(define nós-a (make-nó 2 'b (make-nó 1 'a empty empty) (make-nó 3 'c empty empty)))
(define nós-vazio empty)

(define-struct pessoa (id nascimento mãe pai))
;; Um elemento pessoa de Pessoa é uma estrutura
;; (make-pessoa um-id um-nascimento uma-mãe um-pai) onde
;; um-id: String, identificador, tipicamente o nome da pessoa
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
(define (lista-anos uma-pessoa) 
  (cond
    [(empty? uma-pessoa) empty]
    [else (append (cons (pessoa-nascimento uma-pessoa) empty)
                  (lista-anos (pessoa-mãe uma-pessoa))
                  (lista-anos (pessoa-pai uma-pessoa)))]))
;; Testes
(check-expect (lista-anos Chaos) (list 1113))
(check-expect (lista-anos Hermes) (list 1986 1950 1930 1899 1899))


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

;; idade-media: Pessoa Numero -> Numero
;; Dada uma pessoa e um ano, calcula a idade média dele e de seus genitores
;; na respectiva data
(define (idade-media uma-pessoa um-ano) "@todo terminar")

; valor-na-AB? : AB Número -> Boolean
; Dada uma arvore binária, determina se um dado valor numérico está presente
; e retorna booleano
(define (valor-na-AB? um-no valor)
  (cond
    [(empty? um-no) false]
    [ else (or 
            (= (nó-id um-no) valor) 
            (valor-na-AB? (nó-esq um-no) valor) 
            (valor-na-AB? (nó-dir um-no) valor)) 
           ]
    ))
; Testes
(check-expect (valor-na-AB? nós-a 1) true)
(check-expect (valor-na-AB? nós-a 2) true)
(check-expect (valor-na-AB? nós-a 3) true)
(check-expect (valor-na-AB? nós-vazio 1) false)

;; lista-id-AB: Pessoa -> ListaDeStrings
;; Retorna uma lista com todos os ids de uma estrutura Pessoa
(define (lista-id-AB uma-pessoa)
  (cond
    [(empty? uma-pessoa) empty]
    [else (append (cons (pessoa-id uma-pessoa) empty)
                  (lista-id-AB (pessoa-mãe uma-pessoa))
                  (lista-id-AB (pessoa-pai uma-pessoa)))]))

(check-expect (lista-id-AB Chaos) (list "Chaos"))
(check-expect (lista-id-AB Hermes) (list "Hermes" "Maia" "Zeus" "Cronus" "Rhea"))

