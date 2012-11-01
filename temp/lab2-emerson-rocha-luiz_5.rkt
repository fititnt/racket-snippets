;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lab2-emerson-rocha-luiz_5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;Fundamentos de Algoritmos - 2012/2 - Turma B 1
;Exercícios de Laboratório 2
;Uma empresa de ônibus possui ônibus de linha e ônibus de turismo. Esta empresa informatizou o seu sistema, de forma a controlar as informações sobre suas operações. Para cada
;ônibus de linha, o sistema deve registrar o número da linha, a placa do ônibus, o local de
;origem e o local de destino da linha. Os ônibus de turismo são controlados por um número
;de registro, a placa do veículo, se possui ou não equipamento multimídia (monitor e caixas
;de som) e o seu tipo, que pode ser comum ou executivo. Todos os ônibus podem estar em
;operação ou em manutenção. Além disso, a empresa controla o número total de ônibus em
;manutenção, a quantidade de ônibus de turismo e a quantidade de ônibus de linha.
; 1. Apresente as definições dos tipos de dados necessários para representar o cenário descrito acima.
; 2. Crie instâncias das estruturas deﬁnidas no item anterior. (Dica: nomeie suas instâncias de forma a poder reaproveitá-las nos itens seguintes.)
; 3. Faça um programa que, dado um ônibus, retorne o número de sua placa.
; 4. Apresente um programa que, dados dois ônibus de linha, indique se eles realizam o
;     mesmo trajeto.
; 5. Crie um programa que receba informações de um ônibus e faça o seguinte:
; - Se for um ônibus de linha, apresente o número da linha;
; - Se for um ônibus de turismo, apresente o seu número de registro e o seu tipo;
; 6. Faça um programa que, dadas as informações sobre um ônibus, as informações da
; empresa e uma opção, realize o seguinte:
; - Se a opção for 1, então um novo ônibus de linha foi posto em operação. Desta
;     forma, o programa deve atualizar o controle da empresa de acordo com esta modificação;
; - Se a opção for 2, então um novo ônibus de turismo foi posto em operação. Logo,
;      a quantidade correspondente deverá ser alterada no controle da empresa;
; - Se a opção for 3, o programa deve retornar o total de ônibus em operação e o total
; de ônibus em manutenção.

;
; Resposta 1
;

;;;;;;;;;;;;;;;;;;;;;;;;               Estrutura para tipo de linha            ;;;;;;;;;;;;;;;;;;;;;;;;
(define-struct onibus-linha (linha placa origem destino manutencao))
;; Um onibus-linha é
;;  (make-onibus-linha linha placa origem destino)
;; onde
;;  linha       : Numero , número da linha
;;  placa       : String , que representa a placa do onibus
;;  origem      : String , origem da do onibus de linha
;;  destino     : String , destino do onibus de linha
;;  manutencao  : Boleano, significa se esta em nanutenção (true) ou nao (false)



;;;;;;;;;;;;;;;;;;;;;;;; Estrutura para onibus de turismo (comum ou executivo) ;;;;;;;;;;;;;;;;;;;;;;;;

(define-struct onibus-turismo (registro placa multimidia tipo manutencao))
;; Um onibus-turismo é
;;  (make-onibus-turismo registro placa multimidia tipo manutencao)
;; onde
;;  registro    : Numero , que representa o registro do onibus
;;  placa       : String , que representa a placa do onibus
;;  multimidia  : Boleano, que representa se possui (true) ou não (false) equipamento multimidia
;;  tipo        : Boleano, que pode ser executivo (true) ou turismo (false) 
;;  manutencao  : Boleano, significa se esta em nanutenção (true) ou nao (false)


;;;;;;;;;;;;;;;;;;;;;;;;                       Um onibus é                    ;;;;;;;;;;;;;;;;;;;;;;;;
;;  1. um onibus-linha, OU
;;  2. um onibus-turismo


;;;;;;;;;;;;;;;;;;;;;;;;                          Empresa                     ;;;;;;;;;;;;;;;;;;;;;;;;
(define-struct empresa (qtdmanutencao qtdturismo qtdlinha)) 
;; Um empresa é
;;  (make-empresa qtdmanutencao qtdturismo qtdlinha)
;; onde
;;  qtdmanutencao    : Numero , quantidade de onibus em manutencao
;;  qtdturismo       : Numero , quantidade de onibus do tipo turismo
;;  qtdlinha         : Numero , quantidade de onibus do tipo linha

;;;;;;;;;;;;;;;;;;;;;;;;

;
; Resposta 2
;

(define ONIBUS1LINHA (make-onibus-linha 123 'WXY1234 'Centro 'CampusVale false))
(define ONIBUS2LINHA (make-onibus-linha 234 'AAA1111 'Centro 'CampusVale false))
(define ONIBUS3LINHA (make-onibus-linha 567 'BBB2222 'Agronomia 'CampusVale false))
(define ONIBUS2TUR (make-onibus-turismo 896 'XYZ1234 true false false))
(define EMPRESAXPTO (make-empresa 3 5 20))

;
; Resposta 3
;
(define (dizplaca onibus)
  (cond
    [(onibus-linha? onibus) (onibus-linha-placa onibus)]
    [(onibus-turismo? onibus) (onibus-turismo-placa onibus)]
    [else "Erro, tipo não encontrado"]
    )
  )
"Teste resposta 3"
(dizplaca ONIBUS1LINHA)
(dizplaca ONIBUS2TUR)
;
; Resposta 4
;
(define (mesmotrajeto onibus1 onibus2)
  (cond
    [(and (symbol=? (onibus-linha-origem onibus1) (onibus-linha-origem onibus2))
          (symbol=? (onibus-linha-destino onibus1) (onibus-linha-destino onibus2))
                    ) "Mesmo trajeto"]
    [else "trajeto diferente"]
    )
  )
"Teste resposta 4"
(mesmotrajeto ONIBUS1LINHA ONIBUS2LINHA)
(mesmotrajeto ONIBUS1LINHA ONIBUS3LINHA)
;
; Resposta 5
;
(define (identificacaoonubus onibus)
  (cond
    [(onibus-linha? onibus) (onibus-linha-linha onibus)]
    [(onibus-turismo? onibus) (onibus-turismo-registro onibus)]
    [else "Erro"]
    )
  )
"Teste resposta 5"
(identificacaoonubus ONIBUS1LINHA)
(identificacaoonubus ONIBUS2TUR)
;
; Resposta 6
;
(define (empresaonibus onibus)
  (cond
    [else "Fica pra proxima :)"]
    )
  )
"Teste resposta 6"
