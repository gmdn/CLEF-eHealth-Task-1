# load corrected dictionary 
american_dictionary <- read.csv2("../data/CLEFeHealth2017Task1_training_EN/raw/dictionary/AmericanDictionary.csv",
#american_dictionary <- read.csv2("../data/CLEFeHealth2017Task1_training_EN/raw/dictionary/AmericanDictionary_corrected.csv",
                                 colClasses = c(rep("character", 7),
                                                rep("numeric", 2), 
                                                rep("character", 8)),
                                 stringsAsFactors = FALSE)
