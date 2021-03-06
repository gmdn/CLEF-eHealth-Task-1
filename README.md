CLEF eHealth Task 1, Replication Track - (IMS) Unipd
================
Giorgio Maria Di Nunzio
5/12/2017

In this document, we describe the procedure to replicate the experiments of the group IMS Unipd who participated to the CLEF eHealth 2017 Task 1 Multilingual Information Extraction - ICD10 coding and, in particular, the "English raw dataset" subtask.

Software Installation
---------------------

The system is written in R, therefore, it is platform independent (apart from tiny adjustment that may be needed if you access the filesystem, see later in the documentation).

1.  First, you need to download R from the [Comprehensive R Archive Network](https://cran.r-project.org). We are currently using version 3.4.0 (released on 2017/04/21).

2.  Then, download the [RStudio Desktop](https://www.rstudio.com/products/rstudio/download2/). We suggest to download the installer of the Open Source License, unless you prefer to download the Zip/tar archives. We are currently using version 1.10.143 (released on 2017/04/19)

3.  **Clone or download** source code provided with this repository.

Prepare Data Files
------------------

Before running the code, you need to place the data files of the CLEF eHealth Task 1 in the directory where the program expects to find them. We assume that you already have the zip file provided by the organizers of Task 1; therefore, you just need to extract the content of the file in the directory **data** of the R project. (show directory structure for clarity) At the end, we expect to have the following subdirectories and files in the data folder:

``` yaml
---
data:
    CLEFeHealth2017Task1_test_EN:
        raw:
            corpus:
                CausesBrutes_EN_test.csv
                Ident_EN_test.csv
            README.txt
    CLEFeHealth2017Task1_training_EN:
        raw:
            corpus:
                CausesBrutes_EN_training.csv
                CausesCalculees_EN_training.csv
                Ident_EN_training.csv
            dictionary:
                AmericanDictionary.csv
            eval:
                clefehealthTask12017_plainCertifeval.pl
            README.txt
---
```

Running Source Code
-------------------

After you decompress the zip file, in the "source" directory you will find the **ims\_unipd\_documentation.Rproj** file that contains the whole RStudio project that we are going to use. You can either double click on the file or open RSTudio and choose "Open Project..." from the File menu.

1.  The first we need to do is to install the R packages that are required to run the source code. Write in the RStudio Console the following line (and press Enter)

    ``` yaml
    source("./install_packages/install.R")
    ```

2.  After setting up the packages, we need to index the dictionary of the training data. First, we have to process the American dictionary file into a convenient data structure and correct some lines that have some issues. Write in the RStudio Coneolse the followin line (and press Enter)

    ``` yaml
    source("./utils/read_dictionary_reduced.R")
    ```

    You'll see a print output at each 10,000 lines. You may also see some warning prints like

    ``` yaml
    [1] "check line 9526, number of semicolons = 22"
    [1] "check line 9541, number of semicolons = 22"
    ```

    which means that these lines have more (or less) fields than expected. When the dictinoary has been read, you'll find two new files in the **index** directory: **american\_dictionary\_reduced.csv** and **american\_dictionary.RData**. In order to produce the index of the dictionary, write in the RStudio Console the following line (and press Enter)

    ``` yaml
    source("./index/index_dictionary.R")
    ```

    At the end of this second part, you will have three new files in the **index** folder named **index\_EN\_binary.RData**, **index\_EN\_tf.RData**, and **index\_EN\_tfidf.RData**.

3.  Now we are ready to set up the test runs. Before running the **run\_build\_test.R** script, open it in the Source panel of RStudio and comment either line 7 or line 8 according to the type of weight you want to use for the run ("binary" or "tfidf").

    ``` yaml
    5  # set the type of weighting scheme for this run, choose either "binary" or "tfidf"
    6  # you can comment/decomment one of the following lines
    7  weight <- "binary"
    8  #weight <- "tfidf"
    ```

    Once you have chosen the type of weight, run the script

    ``` yaml
    source("./run_build_test.R")
    ```

    At the end of the script, there will be a new file in the **runs** folder: a **Unipd-run1\_binary.csv** or **Unipd-run2\_tfidf.csv**.

4.  Finally, we can classify each line of the run we have prepared. As we did before, we need to set the type of weight before running the **run\_classify\_test.R** script. Comment line 10 or 11 as appropriate and then run

    ``` yaml
    source("./run_classify_test.R")
    ```

    When the scripts ends, you should see on the console a warning message:

    ``` yaml
    There were 50 or more warnings (use warnings() to see the first 50)
    ```

    This is actually correct since, after submitting the official run, we discovered a bug in the code that prevented the correct use of the TfIdf weight. We annotated the source code of the file **run\_classify\_test.R** with a comment on line 22 and 61

    ``` yaml
    22   #load("./index/index_EN_tfidf.RData") #### MISTAKE HERE!
    23   load("./index/index_EN_tf.RData")
    ...
    61    #icd <- classify_tfidf(tokens, tdm_tfidf, american_dictionary) #### MISTAKE HERE!
    62    icd <- classify_tfidf(tokens, tdm_tf, american_dictionary)
    ```

    At the end of the script, there will be new files in the **runs** folder: **Unipd-run1.csv** or **Unipd-run2.csv** are the files that we produced for the CLEF eHealth Task 1 while all the other files (for example **Unipd-run1\_binary.csv** if you chose binary weights) are just temporary files.
