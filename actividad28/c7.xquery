(:~ 7. Mostrar los libros ordenados primero por 
“category” y después por “title” en una única consulta. ~:)
for $v in doc("actividad28.xml")/bookstore/book
order by $v/@category , $v/title 
return data($v)