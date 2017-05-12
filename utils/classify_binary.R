classify_binary <- function(tokens, text_document_matrix, dictionary) {
  
  # get number of tokens
  num_of_tokens <- length(tokens)
  
  # compute dictionary scores
  scores <- tm_term_score(text_document_matrix, tokens)
  
  # find scores equal to the number of tokens
  results <- which(scores == num_of_tokens)
  #matches <- which(scores == 3)
  
  # find items with the most of tokens
  while (length(results) == 0 & num_of_tokens > 1) {
    
    num_of_tokens <- num_of_tokens - 1
    
    results <- which(scores == num_of_tokens)
    
  }
  
  # set icd
  icd <- ""
  
  # compute frequency of Idc1 codes
  tb <- table(dictionary[results, "Icd1"])
  
  if (length(tb) > 0) {
    
    # order decreasingly
    tb <- tb[order(tb, decreasing = TRUE)]
    
    if (length(tb) == 1) {
      icd <- names(tb)[1] 
    } else {
      icd <- dimnames(tb)[[1]][1] #dimnames(tb)[[1]][which(tb == max(tb))][1]  
    }
    
  }
  
  return(icd)
  
}