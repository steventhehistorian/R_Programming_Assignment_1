# Write a function that takes a directory of data files and a threshold for complete cases and calculates
# the correlation between sulfate and nitrate for monitor locations where the number of completely 
# observed cases (on all variables) is greater than the threshold. The function should return a vector of
# correlations for the monitors that meet the threshold requirement. If no monitors meet the threshold
# requirement, then the function should return a numeric vector of length 0. A prototype of this function follows


corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        setwd(c("/Users/stevenreddick/coursera/R_Programming/Assignment_1", directory))
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        files <- list.files("specdata", full.names = TRUE)
        
                
        ## Create a 0 length, vector to store the correlations of qualified sets in each file.
        correlations <- numeric()
        
        ## Create a vector k to be the element counter or the completeCases vector. 
        k <- 1
        
                for(i in 1:length(files)){
                        
                        # Load the nth file
                        file <- read.csv(files[i])
                        
                        file <- na.omit(file)
                        
                                if(threshold < nrow(file ) ) {
                                        
                                       
                                       correlations[k] <- cor(file[,2], file[,3] ) 
                                       
                                       k <- k + 1
                                }
                        
                        
                }
                

        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
        correlations
}