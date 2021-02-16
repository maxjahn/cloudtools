[.[] | {
  category: .category.name, 
  service: .service.name, 
  aws: ["<ul>", foreach .aws[] as $i 
    ([];if $i.ref == "" and $i.name == ""
      then ""  
      elif $i.ref == ""
      then "<li>\($i.name)</li>" 
      else "<li><a href=\"\($i.ref)\" target=\"_blank\">\($i.name)</a></li>"
    end), "</ul>"] | add, 
  azure: ["<ul>", foreach .azure[] as $i 
    ([];if $i.ref == "" and $i.name == ""
      then ""  
      elif $i.ref == ""
      then "<li>\($i.name)</li>" 
      else "<li><a href=\"\($i.ref)\" target=\"_blank\">\($i.name)</a></li>"
    end), "</ul>"] | add, 
  gcp: ["<ul>", foreach .google[] as $i 
    ([];if $i.ref == "" and $i.name == ""
      then ""  
      elif $i.ref == ""
      then "<li>\($i.name)</li>" 
      else "<li><a href=\"\($i.ref)\" target=\"_blank\">\($i.name)</a></li>"
    end), "</ul>"] | add, 
  oci: ["<ul>", foreach .oracle[] as $i 
    ([];if $i.ref == "" and $i.name == ""
      then ""  
      elif $i.ref == ""
      then "<li>\($i.name)</li>" 
      else "<li><a href=\"\($i.ref)\" target=\"_blank\">\($i.name)</a></li>"
    end), "</ul>"] | add 
  } 
  ]
