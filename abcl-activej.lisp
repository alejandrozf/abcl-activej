;;;; abcl-activej.lisp

(in-package #:abcl-activej)

(let* ((el-create-method (java:jmethod "io.activej.eventloop.Eventloop" "create"))
       (el-post-method (java:jmethod "io.activej.eventloop.Eventloop" "post" "java.lang.Runnable"))
       (el-run-method (java:jmethod "io.activej.eventloop.Eventloop" "run")))

  (defun make-event-loop ()
    (java:jstatic el-create-method "io.activej.eventloop.Eventloop"))

  (defun post-to-event-loop (event-loop func)
    (let ((job (java:jinterface-implementation "java.lang.Runnable"
                                               "run" func)))
      (java:jcall el-post-method event-loop job)))

  (defun start-event-loop (event-loop)
    (java:jcall el-run-method event-loop)))
