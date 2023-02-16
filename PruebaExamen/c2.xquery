for $v in doc("baile.xml")/bailes/baile
where $v/precio_clase/precio < 35 and $v/sala = 2
return data($v)