;David Flores Barbero
;Julio Garcia Vandunciel
;componer

;Formatos
;	variable (? X)
;	regla (A (? X)) (sustituto sustituido)
;	varias reglas ((A (? X)) (B (? Y)))

(defun componer (z1 z2)
(prog (regla sustituto sustituido z1z2)
	
	(setf z1z2 '())

	(setf sustituto  (first z1))
	(setf sustituido (first(last z1)))
	
	(dolist (regla z2)

		(setf sustituto (aplicar regla sustituto))
	)

	(setf z1 (list sustituto sustituido))

	(setf z1z2 (append (list z1)))

	(dolist (regla z2 sustituidoZ2)
		(setf sustituidoZ2 (first (last regla)))
		
		(when (not (equalp sustituido sustituidoZ2))
			(setf z1z2 (append z1z2 (list regla)))
		)
	)

	(return z1z2)

)
)
