normalize_line <- function(text_line) {
  
  # remove "'s"
  #text_line <- gsub(pattern = "'s", replacement = "", x = text_line)
  
  # remove parenthesis
  #text_line <- gsub(pattern = "[(|)]", replacement = "", x = text_line)
  
  # remove "consistent" stop word
  text_line <- gsub(pattern = "consistent", replacement = "", x = text_line)
  
  # remove "patient" stop word
  text_line <- gsub(pattern = "patient", replacement = "", x = text_line)
  
  # remove "pt" stop word (patient)
  text_line <- gsub(pattern = "$pt^", replacement = "", x = text_line)
  
  # remove "illegible" stop word
  text_line <- gsub(pattern = "illegible", replacement = " ", x = text_line)
  
  # change
  text_line <- gsub(pattern = "type one", replacement = "type i", x = text_line)
  text_line <- gsub(pattern = "type 2", replacement = "type ii", x = text_line)
  
  # remove " - " sequence
  #text_line <- gsub(pattern = " - ", replacement = " ", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "uro ", replacement = "uro", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "hypo ", replacement = "hypo", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "mega ", replacement = "mega", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "adeno ", replacement = "adeno", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "hydro ", replacement = "hydro", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "myelo ", replacement = "myelo", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "nonst", replacement = "non st", x = text_line)
  
  # correct (remove white space)
  text_line <- gsub(pattern = "osteo ", replacement = "osteo", x = text_line)
  
  # correct misspellings
  text_line <- gsub(pattern = "atiral", replacement = "atrial", x = text_line)
  text_line <- gsub(pattern = "atrail", replacement = "atrial", x = text_line)
  text_line <- gsub(pattern = "llung", replacement = "lung", x = text_line)
  text_line <- gsub(pattern = "pnuemonia", replacement = "pneumonia", x = text_line)
  text_line <- gsub(pattern = "satge", replacement = "stage", x = text_line)
  text_line <- gsub(pattern = "sever", replacement = "severe", x = text_line)
  text_line <- gsub(pattern = "shcok", replacement = "shock", x = text_line)
  
  return(text_line)
  
}