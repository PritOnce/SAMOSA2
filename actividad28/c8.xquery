(:~ 8. Mostrar cuántos libros hay, y etiquetarlo con <total>. ~:)
for $v in doc("actividad28.xml")/bookstore
return <total>{count($v/book)}</total>