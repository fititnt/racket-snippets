#lang racket/base
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