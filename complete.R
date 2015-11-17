complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        setwd(c("/Users/stevenreddick/coursera/R_Programming/Assignment_1", directory))
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        files <- list.files("specdata", full.names = TRUE)
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
        
                ## Create a 0 length, 2 variable data.frame to store the # of complete cases in each file.
                completeCases <- data.frame(id =numeric(), nobs = numeric() )
                
                ## Create a vector k to be the element counter or the completeCases vector. 
                k <- 1
        
                        ## "I Loop" reads all user selected files, counts the complete cases in each,
                        ## and records it in completeCases.
                        for (i in id){
                        
                                        ## Read the nth file in
                                        file <- read.csv(files[i])
                                        
                                        ## Get rid of the NA rows.
                                        file <- na.omit(file)
                                                
                                                ## Count the number of complete cases
                                                rows <- nrow(file)
                                        
                                                ## Record the number of complete cases in each file into the
                                                completeCases[k, 1 ]   <- i
                                                completeCases[k, 2 ]   <- rows
                                         
                                        k <- k + 1
                                        
                                        
                        }
        
        completeCases
}