(:~ 10. Mostrar el precio mínimo y máximo de los libros. ~:)
for $v in doc("actividad28.xml")/bookstore
let $max := max($v/book/price)
let $min := min($v/book/price)
return concat("Precio Máximo: ",$max, ". Precio Mínimo: ",$min)