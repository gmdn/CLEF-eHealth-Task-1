classify_tfidf <- function(tokens, text_document_matrix, dictionary) {
  
  # compute dictionary scores
  scores <- tm_term_score(text_document_matrix, tokens)
  
  # find scores equal to the number of tokens
  results <- which(scores == max(scores))
  #matches <- which(scores == 3)
  
  # compute frequency of Idc1 codes
  icd <- dictionary[results, "Icd1"]
  
  return(icd)
  
}