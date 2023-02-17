(:~ 4. Mostrar solo el título (sin etiquetas), sin atributos, 
de los libros que tengan precio menor o igual a 30. ~:)
for $v in doc("actividad28.xml")/bookstore/book
where $v/price <= 30
return data($v/title)