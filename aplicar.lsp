;David Flores Barbero
;Julio Garcia Vandunciel 
;aplicar.lsp

(defun aplicar (reglaSustitucion lista)
(prog (elm temp listaNueva)

	;Se crea la lista donde se añaden los elementos cambiados
	(setf listaNueva '())

	;Aplica la regla sobre los elementos de la lista
	(dolist (elm lista)

		;Separar sustituto y sustituido
		(setf sustituido (first(last reglaSustitucion)))
		(setf sustituto (first reglaSustitucion))


		;Si es variable
		(when (varp elm)

			;se queda con el valor			
			(setf elmtest (first(last elm)))		

			;comparar sustituido con la variable
			(if(equalp elmtest sustituido)

			   (setf temp sustituto) ;sustituye la variable
			   (setf temp elm) ;deja el elemento 
			   
			)
		)

		;Si no es variable
		(unless (varp elm)
			(setf temp elm) ;deja el elemento 
		)
		;añade a la nueva lista el elemento con la regla aplicada
		(setf listaNueva(append listaNueva (list temp)))
  	)

	;devuelve la lista con la regla aplicada a sus elementos
	(return listaNueva)
  
)
)
