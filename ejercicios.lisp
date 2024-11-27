(defun intercala (lst lst2 lst3)
  (if (null lst)
      lst3
      (progn
        (setq lst3 (cons (car lst) (cons (car lst2) (intercala (cdr lst) (cdr lst2) lst3)))) 
        
      )
  )
)

(defun obtener-par (lst &optional (pos 1) result)
  
  (if (null lst)
      (reverse result) 
      (if (evenp pos) 
          (obtener-par (cdr lst) (1+ pos) (cons (car lst) result)) 
          (obtener-par (cdr lst) (1+ pos) result)))) 

(defun invertirLista (lst)
    (reverse lst)
)

(defun sumar-lista (lst lst2 &optional lst3)
    (if (null lst)
        lst3
        (sumar-lista (cdr lst) (cdr lst2) (cons (+ (car lst) (car lst2)) lst3))                
    )
)
(defun sumar (lst lst2)
    (sumar-lista lst lst2)
)

(defun sumar2 (lst lst2)
    (mapcar #'+ lst lst2)
)

(defun sumar1 ()
    (format t "Escribe un numero: ")
    (setq num(read))
    (if (numberp num)
        (+ num 1)
        (format t "Valor invalido")
    )
)

(defun listaMaterias (lst materia &optional lstAlumnos)
  (if (null lst)
      lstAlumnos
      (if (equal (cadr (car lst)) materia) 
          (listaMaterias (cdr lst) materia (cons (car (car lst)) lstAlumnos))
          (listaMaterias (cdr lst) materia lstAlumnos))))


