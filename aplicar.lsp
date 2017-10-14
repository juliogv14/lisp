;David Flores Barbero
;Julio Garcia Vandunciel 
;aplicar.lsp

(defun aplicar (reglaSustitucion lista)
(prog (sustituido sustituto)

	(when (equalp reglaSustitucion 'NADA)
		(return lista)
	)

	;Separar sustituto y sustituido
	(setf sustituto (list (first reglaSustitucion)))
	(setf sustituido (last reglaSustitucion))

	;subst para cambiar los elementos que coincidan con sustituido por sustituto
	(return (subst sustituto sustituido lista :test #'equal))

)
)