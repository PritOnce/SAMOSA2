(:~ 2. Mostrar los libros que tengan un precio igual o inferior a 
30 incluyendo la condición en la cláusula “where”. ~:)
for $v in doc("actividad28.xml")/bookstore/book
where $v/price <= 30
return data($v)