;David Flores Barbero
;Julio Garcia Vandunciel 
;Unificar


(defun unificar (p_e1 p_e2)


(prog (e1 e2 f1 f2 t1 t2 z1 z2 g1 g2)

	(setf e1 p_e1)
	(setf e2 p_e2)

	(when(or (atomo e1) (atomo e2))
        ;si e1 no es un atomo
		(unless (atomo e1) 

	        ;si e2 es un atomo
			(when(atomo e2)
	  		  
                ;intercambiamos los valores para que e1 sea atomo
				(setf e3 e1)
				(setf e1 e2)
				(setf e2 e3)
	   
	 		);fin when  
		);fin unless
       
       
	        ;si e1 y e2 son iguales
		(when(equalp (list e1) (list e2))
			(return 'NADA);nada	
		)

        ;si e1 es variable
		(if(varp e1)
	  
			(if(atomo e2)

				(if(equalp e1 e2)
					(return 'FALLO)
				);fin if equalp
	     
				(if(member (first(last e1)) e2)
					(return 'FALLO)
					(return (list e2 e1))
				);fin if memeber

			);fin if atomo e2


		);fin if varp
       

		(if(varp e2)
			(return (list e1 e2))
			(return 'FALLO)
		);fin if varp e2

	);fin when comprobar atomos


     ;linea 12
    (setf f1 (first e1))
    (setf t1 (rest e1))
    

    ;linea 13
    (setf f2 (first e2))
    (setf t2 (rest e2))

    ;linea 14
    (setf z1(unificar f1 f2))

    ;linea 15
    (when(equalp z1 'FALLO)
        (return 'FALLO)

    );fin del when

    ;linea 16
    (setf g1 (aplicar z1 t1))

    ;linea 17
    (setf g2 (aplicar z1 t2))

     ;linea 18
    (setf z2 (unificar g1 g2))

    ;linea 19
    (when(equalp z2 'FALLO)
		(return 'pruebaPXX)
        ;(return 'FALLO)

    );fin del when

    ;hacer composicion z1 z2
;    (return z1)
    (composicion z1 z2)
    


);fin del prog
)


