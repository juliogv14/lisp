;David Flores Barbero
;Julio Garcia Vandunciel 
;aplicar.lsp

(defun varp (variable)

	(and (listp variable)
			(= (list-length variable) 2)
			(equalp (first variable) '?))
)
	
