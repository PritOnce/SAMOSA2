(:~ 9. Mostrar los títulos de los libros y al final una etiqueta con el número total de libros. ~:)
for $v in doc("actividad28.xml")/bookstore
let $s := data($v/book/title)
let $c := count($v/book)
return ($s,"Total:",$c)