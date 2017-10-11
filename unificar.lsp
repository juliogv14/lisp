;David Flores Barbero
;Julio Garcia Vandunciel 
;Unificar


(defun unificar (elm1 elm2)

(prog (e1 e2)

   (setf e1 elm1)
   (setf e2 elm2)

   (when(or (atomo e1) (atomo e2))
       ;si e1 no es un atomo
       (unless (atomo e1) 

	 ;si e2 es un atomo
	 (when(atomo e2)
	  		  
	   (setf e3 e1)
	   (setf e1 e2)
	   (setf e2 e3)
	   
	 );fin when  
       );fin unless
       
       

       (when(equalp (list e1) (list e2))
	 (return 'NADA)
	
       )

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

);fin del prog

)
