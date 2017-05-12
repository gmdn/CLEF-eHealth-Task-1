source("./utils/load_test_data_EN.R")
source("./utils/expand_acronym.R")
source("./utils/normalize_line.R")

# set the type of weighting scheme for this run, choose either "binary" or "tfidf"
# you can comment/decomment one of the following lines
#weight <- "binary"
weight <- "tfidf"

# set run identifier
if (weight == "binary") {
  run_id <- "Unipd-run1_binary.csv"  
} else if(weight == "tfidf") {
  run_id <- "Unipd-run2_tfidf.csv"  
} else {
  stop("check type of weight on line 7 and 8")
}

# run will be saved in the runs folder
run_path <- paste0("./runs/", run_id)

# stop execution if a run with the same id exists
if(file.exists(run_path)) {
  stop(paste("run with id", run_id , "already exists"))
}

# for each line of the causes brutes file
for (line in 1:nrow(causes_brutes_EN_test)) {
  
  # print output to check
  if(line %% 1000 == 0) {
    print(paste0("reading line ", line))
  }
  
  # read raw text line
  raw_text <- causes_brutes_EN_test[line, "RawText"]
  
  # skip NA lines
  if(raw_text == "N/A" | raw_text == "NA" | raw_text == "-" | is.na(raw_text)) {
    next
  }
  
  # transform &amp;
  raw_text <- gsub(pattern = "&amp;", replacement = " and ", x = raw_text)
  
  # transform "-"
  raw_text <- gsub(pattern = "-", replacement = " ", x = raw_text)
  
  # split sentence into parts
  if (grepl("[/;,]", raw_text)) {
    raw_text <- strsplit(raw_text, split = "[/;,]")
  } else if (grepl("with", raw_text)) {
    raw_text <- strsplit(raw_text, split = "with")
  } else if (grepl("due to", raw_text)) {
    raw_text <- strsplit(raw_text, split = "due to")
  } else if (grepl("also due to", raw_text)) {
    raw_text <- strsplit(raw_text, split = "due to")
  } else if (grepl("that caused", raw_text)) {
    raw_text <- strsplit(raw_text, split = "that caused")
  } else if (grepl("sec to", raw_text)) {
    raw_text <- strsplit(raw_text, split = "sec to")
  }  else if (grepl("on top of", raw_text)) {
    raw_text <- strsplit(raw_text, split = "on top of")
  }
  # unlist text (if necessary)
  raw_text <- unlist(raw_text)
  
  # remove leading and trailing white spaces
  raw_text <- gsub("^\\s+|\\s+$", "", raw_text)
  
  # for each subpart 
  for(rank in 1:length(raw_text)) {
    # build run
    run <- data.frame(DocID = causes_brutes_EN_test[line, "DocID"],
                      YearCoded = causes_brutes_EN_test[line, "YearCoded"],
                      LineID = causes_brutes_EN_test[line, "LineID"],
                      RawText = causes_brutes_EN_test[line, "RawText"],
                      IntType = NA,
                      IntValue = NA,
                      Excerpt = raw_text[rank],
                      StandardText = NA,
                      IDC10 = NA,
                      CleanedText = NA) #added this line to check
    
    # scan line
    line_tokens <- scan_tokenizer(raw_text[rank])
    
    # to lower case
    line_tokens <- tolower(line_tokens)
    
    # expand acronym
    line_tokens <- expand_acronym(line_tokens)
    
    # rebuild line
    line_collapsed <- paste(line_tokens, collapse = " ")
    
    # remove extra punctuation (if any)
    line_collapsed <- removePunctuation(line_collapsed)
    
    # normalize line
    run$CleanedText <- normalize_line(line_collapsed)
    
    write.table(x = run,
                file = run_path, 
                quote = TRUE, 
                append = T, 
                sep = ";", 
                row.names = FALSE, 
                col.names = FALSE)
    
  }
  
}

# clean environment
rm(list = ls())
