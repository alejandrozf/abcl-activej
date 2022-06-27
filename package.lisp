;;;; package.lisp

(defpackage #:abcl-activej
  (:use #:cl)
  (:nicknames :activej)
  (:export :make-event-loop :post-to-event-loop :start-event-loop))
