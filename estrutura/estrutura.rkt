;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname estrutura) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Arquivo contendo visão geral sobre estruturas em scheme (Racket)


;;;;; Definicao de uma estrutura

(define-struct onibus (registro placa tipo manutencao))
;; Um onibus-turismo é
;;  (make-onibus registro placa tipo manutencao)
;; onde
;;  registro    : Numero , que representa o registro do onibus
;;  placa       : String , que representa a placa do onibus
;;  tipo        : Boleano, que pode ser executivo (true) ou turismo (false) 
;;  manutencao  : Boleano, significa se esta em nanutenção (true) ou nao (false)

;;;; Exemplo de uso
(define meu-onibus ; Define a variavel meu-onibus
  (make-onibus 765 "XPT 1234" true false) ; estrutura do tipo onibus, com estes valores
  )

;; Acesso a uma estrutura completa
meu-onibus ; Retorna (make-onibus 765 "XPT 1234" true false)
;; Acesso a um item de uma estrutura, atraves do respectivo seletor da estrutura
(onibus-placa meu-onibus) ; Retorna "XPT 1234"
(onibus-manutencao meu-onibus) ; Retorna false