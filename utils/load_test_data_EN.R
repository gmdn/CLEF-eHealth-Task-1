# load causes brutes test file
causes_brutes_EN_test <- read.csv2(file = "../data/CLEFeHealth2017Task1_test_EN/raw/corpus/CausesBrutes_EN_test.csv", 
                                    colClasses = c("character", 
                                                   "numeric", "numeric", 
                                                   "character", 
                                                   "numeric", "numeric"),
                                    header = TRUE,
                                    stringsAsFactors = FALSE)
#dim(causes_brutes_EN_test)
