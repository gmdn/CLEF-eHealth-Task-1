ad_EN <- 170284

# create data frame
american_dictionary <- data.frame(DiagnosisText = rep("DiagnosisText", ad_EN),
                              Icd1 = rep("Icd1", ad_EN),
                              IcdC = rep("IcdC", ad_EN),
                              Icd2 = rep("Icd2", ad_EN),
                              stringsAsFactors = FALSE)
#str(american_dictionary)
# set number of lines to read
num_lines <- ad_EN

# set file path
file_path <- "../data/CLEFeHealth2017Task1_training_EN/raw/dictionary/AmericanDictionary.csv"

if(file.exists("./index/american_dictionary_reduced.csv")) {
  stop("dictionary file already exists")
}

con <- file(file_path, "r")

# skip first line header
readLines(con, n = 1)

for (i in 1:num_lines) {
  
  if((i %% 10000) == 0)
    print(paste0("read line ", i, " out of ", ad_EN))
  
  ######################
  # skip errors
  if (i >= 69327 & i <= 69331) {
    line <- readLines(con, n = 1)
    next
  }
  ######################
  
  # read next line
  line <- readLines(con, n = 1)
  if ( length(line) == 0 ) {
    break
  }
  
  # count semicolon
  count_semicolon <- gregexpr(pattern = ";", text = line)  
  
  if (length(count_semicolon[[1]]) != 18) {
    print(paste0("check line ", i, ", number of semicolons = " , length(count_semicolon[[1]])))
  }
  
  #if (length(count_semicolon[[1]]) >= 18) {
    
    split_line <- strsplit(x = line, split = ";")
    
    field_1 <- split_line[[1]][1]
    american_dictionary[i, 1] <- field_1
    
    field_2 <- split_line[[1]][2]
    if (field_2 == "") {
      american_dictionary[i, 2] <- NA
    } else {
      american_dictionary[i, 2] <- field_2
    }
    
    field_3 <- split_line[[1]][3]
    if (field_3 == "") {
      american_dictionary[i, 3] <- NA
    } else {
      american_dictionary[i, 3] <- field_3
    }
    
    field_4 <- split_line[[1]][4]
    if (field_4 == "") {
      american_dictionary[i, 4] <- NA
    } else {
      american_dictionary[i, 4] <- field_4
    }
    
  #}
  
}

close(con)

#print(tail(american_dictionary))

write.table(x = american_dictionary,
            file = "./index/american_dictionary_reduced.csv", 
            quote = TRUE, 
            sep = ";", 
            row.names = FALSE, 
            col.names = TRUE)

save(american_dictionary, file = "./index/american_dictionary.RData")
