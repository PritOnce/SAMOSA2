(:~ 11. Mostrar el título del libro, su precio y precio con 
IVA incluido, cada uno con su propia etiqueta. Ordénelos por precio con IVA. ~:)
for $v in doc("actividad28.xml")/bookstore/book
let $i := $v/price * 1.21
order by $i descending 
return <libro>{$v/title}{$v/precio}<precio_iva>{$i}</precio_iva></libro>