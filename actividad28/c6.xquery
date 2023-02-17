(:~ 6. Mostrar los años de publicación usando una clausula FLWOR, pero usando “let” 
para almacenar los resultados intermedios. Etiquetar la salida con <publicación>. ~:)
for $v in doc("actividad28.xml")/bookstore/book
let $a := $v/year
return <publicación>{data($a)}</publicación>