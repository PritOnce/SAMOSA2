for $v in doc("baile.xml")/bailes/baile
return concat(($v/nom_profesor)," -> ",($v/nom),"-> Precio:",($v/precio_clase/precio))