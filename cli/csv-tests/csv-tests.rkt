#lang racket/base
;; (require racket/file)
(require 2htdp/batch-io)

; "Exibe lista de argumentos usados quando executado por linha de comando"
; (current-command-line-arguments)

(read-csv-file "file2rfc4180.csv")
; '(("field_name_a" "field_name_b" "field_name_c") ("aaa" "bbb" "ccc") ("zzz" "yyy" "xxx"))


