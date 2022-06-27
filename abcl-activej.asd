;;;; abcl-activej.asd

(asdf:defsystem #:abcl-activej
  :description "Wrapper around ActiveJ framwework using ABCL"
  :author "Alejandro Zamora <ale2014.zamora@gmail.com>"
  :license  "MIR"
  :version "0.0.1"
  :serial t
  :components ((:mvn "io.activej/activej-eventloop")
               (:mvn "io.activej/activej-launchers-http")
               (:file "package")
               (:file "abcl-activej")))
