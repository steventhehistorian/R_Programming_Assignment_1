pollutantmean <- function(directory, pollutant, id = 1:332 ) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
        setwd(c("/Users/stevenreddick/coursera/R_Programming/Assignment_1", directory))
        
        
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
      
          if(pollutant=="sulfate"){
                        pollutant <- 2
                                
                        } else if (pollutant=="nitrate") {
                                   
                                pollutant <- 3
                                
                        } else {
                                print("error")
                }
        
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
        
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  ## NOTE: Do not round the result!
        
        ## Create a character vector the full names for all of the .csv file names contained in "specdata" file.   
  
        files <- list.files("specdata", full.names = TRUE)

        ## Create vector for output means

        outputMeans <- numeric()

        ## Create an index for the element position in outputMeans
        k <- 1
        ## Set the initial counter for the file vector to 1 (resets to 1 every new file in the "j" loop)
        j <- 1

                 for(i in id ) {

                      ## Read the nth file in the directory
                      file<- read.csv(files[i])

                      ## Subset the file to a single column of the data you want.
                      
                      file <- file[,pollutant]
                      
                      #and remove NA's from the nth file
                      
                      file <- na.omit(file)
                      
                      
                      # Make sure the file has >0 lines
                      
                                        if (length(file) >= 1) {
                      
                      ## "J LOOP" Loop through the length of the file's sensor data  
                                
                                                 for (j in 1:length(file)) {
                                                        
                                                        ## Adding each record to the outputMeans vector
                                                        outputMeans[k] <- file[j]

                                                        
                                                        ## If you want to show the values being put into the outputMeans vector,
                                                        ## uncomment the code below:
                                                        
                                                                #print(outputMeans[k])
                                                        
                                                        ## Increment the element in the outputMeans vector.
                                                         k <- k + 1  
                                                      #print(paste("Cycle # = " , i, " file length =" , length(file), " file position =", j , " k =", k ))
                                                 }
                                        }
                ## Reset J so that it is 1 on the next file cycle.      
                j <- 1
              
                 }
 
   ## Function returns the outputMeans vector.        
         mean(outputMeans)

}

