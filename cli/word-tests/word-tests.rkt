#lang racket/base

"Prova de conceito de ler arquivo do disco, aplicar uma alteração em cada palavra e imprimir em tela o resultado"

;(require racket/file)
(require 2htdp/batch-io)
(require racket/list)
(require file/md5)
;(require file/sha1)

;; wordlist é uma lista de palavras obtida do arquivo wordlist.txt
(define wordlist (read-lines "wordlist.txt"))

;; Executa funcao md5 a todos os termos da wordlist de forma direta, sem uso de funções auxiliares
; (map md5 wordlist)

;; parse-word : string -> parse-word
;; Exemplo de funcao que converte uma palavra em outra
(define (parse-word-md5 word)
  (md5 word))


;; parse-wordlist : list string -> list
;; Converte uma lista de palavras usando o metodo method
;; Exemplo: (parse-wordlist wordlist)
(define (parse-wordlist list-of-words method)
  (cond 
    [(empty? list-of-words) empty]
    [else (cons (method (first list-of-words)) (parse-wordlist (rest list-of-words) method))]
    ;[else (md5 ((first wl)))]
    ))

;; Chama parse-wordlist com o metodo de conversao parse-word-md5 
(parse-wordlist wordlist parse-word-md5)

