library(tm)
library(NLP)

source("./utils/load_dictionary.R")
#head(american_dictionary$DiagnosisText[165014:165025])

# load corpus
print("loading corpus...")
corpus <- VCorpus(VectorSource(american_dictionary$DiagnosisText))
print("...done")
#inspect(corpus[[1]])

# build term document matrix and keep "all" the information
print("building binary term-document matrix...")
tdm_binary <- TermDocumentMatrix(corpus,
                                 control = list(removeNumbers = FALSE,
                                                removePunctuation = FALSE,
                                                stopwords = FALSE,
                                                stemming = FALSE, 
                                                weighting = weightBin,
                                                wordLengths = c(1, Inf)))

# save index
save(tdm_binary, file = "./index/index_EN_binary.RData")
print("...done")

print("building tfidf term-document matrix...")
tdm_tfidf <- TermDocumentMatrix(corpus,
                                control = list(removeNumbers = FALSE,
                                               removePunctuation = FALSE,
                                               stopwords = FALSE,
                                               stemming = FALSE, 
                                               weighting = weightTfIdf,
                                               wordLengths = c(1, Inf)))

save(tdm_tfidf, file = "./index/index_EN_tfidf.RData")
print("...done")

print("building tf term-document matrix...")
tdm_tf <- TermDocumentMatrix(corpus,
                                control = list(removeNumbers = FALSE,
                                               removePunctuation = FALSE,
                                               stopwords = FALSE,
                                               stemming = FALSE, 
                                               weighting = weightTf,
                                               wordLengths = c(1, Inf)))

save(tdm_tf, file = "./index/index_EN_tf.RData")
print("...done")
