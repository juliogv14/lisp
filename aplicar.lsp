;David Flores Barbero
;Julio Garcia Vandunciel 
;aplicar.lsp

(defun aplicar (reglaSustitucion lista)
(prog (sustituido sustituto)

	;Si la regla de sustitucion es 'NADA se devuelve la lista
	(when (equalp reglaSustitucion 'NADA)
		(return lista)
	)

	;Separar sustituto de sustituido
	(setf sustituto (first reglaSustitucion))
	(setf sustituido (first (last reglaSustitucion)))

	;subst para cambiar los elementos que coincidan con sustituido por sustituto
	(return (subst sustituto sustituido lista :test #'equal))
	
)
)