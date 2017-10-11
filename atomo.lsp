;David Flores Barbero
;Julio Garcia Vandunciel 
;atomo

(defun atomo(var)
  (cond ((atom var)T)
  ((eq(first var)'?)T)
  (T NIL)))

