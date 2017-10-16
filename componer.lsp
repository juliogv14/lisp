;David Flores Barbero
;Julio Garcia Vandunciel
;componer

;Formatos
;	variable (? X)
;	regla (A (? X)) (sustituto sustituido)
;	varias reglas ((A (? X)) (B (? Y)))

(defun componer (z1 z2)
(prog (regla sustituto sustituido z1z2)

	;Si z1 es 'NADA coponer devolveria solo z2
	(when (equalp z1 'NADA)
		(return z2)
	)
	;Si z2 es 'NADA coponer devolveria solo z1
	(when (equalp z2 'NADA)
		(return (list z1))
	)

	;Inicializar z1z2
	(setf z1z2 '())

	;Separar sustituto de sustituido
	(setf sustituto  (first z1))
	(setf sustituido (first(last z1)))
	
	;Aplicar las reglas de z2 sobre los sustitutos de z1
	(dolist (regla z2)
		(setf sustituto (aplicar regla sustituto))
	)

	;Recomponer z1
	(setf z1 (list sustituto sustituido))

	;Añadir z1 a z1z2
	(setf z1z2 (append (list z1)))

	;Añadir las reglas de z2 donde el sustituido no coincida con z1 a z1z2
	(dolist (regla z2 sustituidoZ2)
		(setf sustituidoZ2 (first (last regla)))
		
		(when (not (equalp sustituido sustituidoZ2))
			(setf z1z2 (append z1z2 (list regla)))
		)
	)

	(return z1z2)

)
)
