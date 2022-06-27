# abcl-activej
### _Alejandro Zamora Fonseca <ale2014.zamora@gmail.com>_

A simple event-loop in Common Lisp (ABCL) with the help of ActiveJ framework

At experiments stage now. I will probably add more functionality from ActiveJ if I have more time free

This can become another way to make non-blocking programming in CL(ABCL specifically).

Quickstart

Clone this repository to your Quicklisp local-projects (or other discoverable) folder

```
CL-USER> (require :abcl-contrib)
NIL
CL-USER> (require :abcl-asdf)
("ABCL-ASDF")
CL-USER> (asdf:load-system :quicklisp-abcl)
T
CL-USER> (ql:quickload :abcl-activej)
To load "abcl-activej":
  Load 1 ASDF system:
    abcl-activej
; Loading "abcl-activej"
[package abcl-activej]
(:ABCL-ACTIVEJ)
CL-USER> (in-package :abcl-activej)
#<PACKAGE ABCL-ACTIVEJ>
ACTIVEJ> (defparameter *event-loop* (make-event-loop))
*EVENT-LOOP*
ACTIVEJ> (post-to-event-loop *event-loop* (lambda () (print "Hello, event-loop!")))
NIL
ACTIVEJ> (start-event-loop *event-loop*)
"Hello, event-loop!"
NIL
ACTIVEJ>

```

## License

MIT
