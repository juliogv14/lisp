;David Flores Barbero
;Julio Garcia Vandunciel 
;aplicar.lsp

(defun aplicar (reglaSustitucion lista)
(prog (elm temp listaNueva)
  (setf listaNueva '())

  (dolist (elm lista)

    (if(equalp (list elm) (last reglaSustitucion))
      
       (setf temp (first reglaSustitucion))
       (setf temp elm)
       
	)

    (setf listaNueva(append listaNueva (list temp)))
    
  )

  (return listaNueva)
  
)
)
