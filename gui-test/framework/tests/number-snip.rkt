#lang racket/base
(require "test-suite-utils.rkt"
         racket/contract
         framework
         file/convertible
         rackunit)

(check-true
 (let ()
   (define x
     (convert
      (number-snip:make-fraction-snip 1/2 #f)
      'text
      #f))
   (or (equal? "1/2" x) (equal? "0.5" x))))


(check-true
 (bytes?
  (convert
   (number-snip:make-fraction-snip 1/2 #f)
   'png-bytes
   #f)))

(check-true (number-snip:is-number-snip? (number-snip:make-fraction-snip 3/2 #t)))
(check-false (number-snip:is-number-snip? 3/2))
(check-equal? 3/2 (number-snip:get-number (number-snip:make-fraction-snip 3/2 #t)))
