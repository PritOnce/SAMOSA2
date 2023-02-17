(:~ 1. Mostrar los títulos de los libros con la 
etiqueta <titulo>. ~:)
for $v in doc("actividad28.xml")/bookstore/book
return <titulo>
{data($v/title)}
</titulo>