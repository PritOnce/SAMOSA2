(:~ 5. Mostrar el título y el autor de los libros del año 2005, y etiquetar 
cada uno de ellos con <lib2005><titulo>...</titulo><autor>...</autor>. ~:)
for $v in doc("actividad28.xml")/bookstore/book
where $v/year = "2005"
return <lib2005><titulo>{data($v/title)}</titulo><autor>{data($v/year)}</autor></lib2005>