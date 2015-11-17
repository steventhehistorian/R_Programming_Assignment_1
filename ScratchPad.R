formals(source)
unclass(getOption)
prompt.echo = getOption("prompt")



## Set wd to the directory containing the relevant files.
        directory <- c("/Users/stevenreddick/specdata")
        
        getwd()
        files <- list.files(full.names = TRUE)
        
        test <- read.csv("001.csv")
        unclass(read.csv)
        head(test)

        for(i in test){
                print(test[i, "sulfate"])
        }
        
        specdata <- https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip
        unclass()
str(test)
summary(test)

fileToRead <- 
files[243]



## Necessary working directory
d <- c("~/coursera/R_Programming/Assignment_1")




## Viewing data

d <- c("~/coursera/R_Programming/Assignment_1")
setwd(d)
listFiles <- list.files("specdata", full.names = TRUE)
testFile <- read.csv(listFiles[2])
testFile <- na.omit(testFile)
testFile[,2]
str(testFile)
str(bads)
head(testFile)
mean(testFile[,2])


# ## Testing the code
meanVector<- pollutantmean(d, "sulfate", 1:10)
str(meanVector)
warnings()

# ## [1] 4.064
vec2 <- pollutantmean("specdata", "nitrate", id =  2:112)
# ## [1] 1.706
vec3 <- pollutantmean("specdata", "nitrate")
# ## [1] 1.281
#----------

names(completeCases)
head(completeCases)

##   id nobs
## 1  1  117
complete("specdata", c(2, 4, 8, 10, 12))
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96
complete("specdata", 30:25)
##   id nobs
## 1 30  932
## 2 29  711
## 3 28  475
## 4 27  338
## 5 26  586
## 6 25  463
complete("specdata", 3)
##   id nobs
## 1  3  243

?cor

source("corr.R")
source("complete.R")
cr <- corr("specdata", 150)
head(cr)
## [1] -0.01896 -0.14051 -0.04390 -0.06816 -0.12351 -0.07589
summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.2110 -0.0500  0.0946  0.1250  0.2680  0.7630
cr <- corr("specdata", 400)
head(cr)
## [1] -0.01896 -0.04390 -0.06816 -0.07589  0.76313 -0.15783
summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -0.1760 -0.0311  0.1000  0.1400  0.2680  0.7630
cr <- corr("specdata", 5000)
summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## 
length(cr)
## [1] 0
cr <- corr("specdata")
summary(cr)
##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
## -1.0000 -0.0528  0.1070  0.1370  0.2780  1.0000
length(cr)
## [1] 323


getwd()

source("http://d396qusza40orc.cloudfront.net/rprog%2Fscripts%2Fsubmitscript1.R")
submit()

for( i in 200:332 ) {

        pollutantmean("specdata", "nitrate")   
        
}



