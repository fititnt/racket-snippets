#lang racket
;; Rascunho de codigo de suporte para renomear strings dentro de arquivos e os respectivos nomes
;;
;; @author     Emerson Rocha Luiz <emerson@webdesign.eng.br>
;; @copyright  2013 (c) Emerson Rocha Luiz
;; @license    MIT
;;

(require 2htdp/batch-io)

;; rename-file-name : string string -> boolean
;; Renomeia um arquivo ou pasta antigo para um arquivo novo.
;;
;; Exemplo (rename-file-name "test/helloworlds.txt" "test/helloworlds2.txt")
(define (rename-file-name filename-old filename-new)
  (rename-file-or-directory (string->path filename-old) (string->path filename-new)))


;; rename-file-content : string string string -> boolean
;; Pesquisa e subistitui um termo antigo em um arquivo por um termo novo
;;
;; Exemplo: (rename-file-content "test/helloworlds.txt" "helloworld" "xpto")
(define (rename-file-content filename word-old word-new) 
  (let (
        [content-original (read-file filename)]
        [content-changed (string-replace (read-file filename) word-old word-new)]
        )
    (write-to-file content-changed filename)	 
    ))

;; jrename: string string string -> void
;; 
;; Exemplo: (jrename "." "HelloWord" "OlaMundo")
(define (jrename path name-old name-new)
  (let([file-and-folders (find-files (const #t) path)])
    ;(map rename-file-content file-and-folders name-old name-new)
    (map (lambda (path-item)
        (begin
          (cond
            ;; Se arquivo, altera conteudo e renomeia path
            [((file-exists? path-item)) (and ())]
            [((folder-exists? path-item)) ]
            [else "Error" ]
            )
          ))
           file-and-folders
    ;;(map rename-file-name file-and-folders)
    )))
  