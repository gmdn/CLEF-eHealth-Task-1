library(SnowballC)
library(tm)

source("./utils/classify_binary.R")
source("./utils/classify_tfidf.R")
source("./utils/load_test_data_EN.R")
source("./utils/load_dictionary.R")

# set the type of weighting scheme for this run, choose either "binary" or "tfidf"
# you can comment/decomment one of the following lines
#weight <- "binary"
weight <- "tfidf"

# set run identifier
if (weight == "binary") {
  #set run id
  run_id <- paste0("Unipd-run1_", weight, ".csv")
  # load index
  load("./index/index_EN_binary.RData")
} else if(weight == "tfidf") {
  run_id <- paste0("Unipd-run2_", weight, ".csv")
  #load("./index/index_EN_tfidf.RData") ###### MISTAKE HERE!
  load("./index/index_EN_tf.RData")
} else {
  stop("check type of weight on line 10 and 11")
}

# path of the run to load
run_path <- paste0("./runs/", run_id)

# read run
run <- read.csv2(file = run_path,
                 colClasses = c("character", 
                                rep("numeric", 2),
                                rep("character", 6)), 
                 stringsAsFactors = FALSE,
                 header = FALSE)

# set column names
names(run) <- c("DocID", "YearCoded", "LineID", "RawText", "IntType", "IntValue", "Excerpt", "StandardText", "ICD10", "CleanedText")
#str(run)

# for each row
for(line in 1:nrow(run)) {
  # line <- 1
  if(line %% 1000 == 0)
    print(line)
  
  # get line raw text
  line_rawtext <- run[line, "CleanedText"]
  
  # tokenize text
  line_tokens <- scan_tokenizer(line_rawtext)
  
  # extract single tokens
  tokens <- unique(scan_tokenizer(line_tokens))
  
  if(weight == "binary") {
    icd <- classify_binary(tokens, tdm_binary, american_dictionary)
  } else {
    #icd <- classify_tfidf(tokens, tdm_tfidf, american_dictionary) MISTAKE HERE!
    icd <- classify_tfidf(tokens, tdm_tf, american_dictionary)
  }
  
  run$ICD10[line] <- icd
  run$StandardText[line] <- paste(tokens, collapse = " ")
  
}

#str(run)

# write run
if (weight == "binary") {
  write_to <- "./runs/Unipd-run1.csv"
} else {
  write_to <- "./runs/Unipd-run2.csv"
}
write.csv2(x = run[, c(1, 2, 3, 7, 8, 9)],
           file = write_to,
           quote = TRUE,
           eol = "\r\n",
           na = "",
           row.names = FALSE)
