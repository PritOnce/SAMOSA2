for $v in doc("baile.xml")/bailes/baile
where $v/precio_clase/precio < 35 and $v/sala = 2
let $s := data($v/nom)
let $p := data($v/precio_clase/precio)
let $h := data($v/precio_clase/moneda)
let $f := data($v/sala)
return concat($s,"->",$p," ",$h," ","Sala ",$f)