#kbn 2018/05/04 Start
#R Script to convert all SPSS files in a folder to csv

```{r}
library(foreign)
setwd('C:\\Users\\Kanishka.Narayan\\ForConversion')#I have changed the working directory here. You can do the same for your PC.
files <- list.files(path = 'C:\\Users\\Kanishka.Narayan\\ForConversion', pattern = '.sav')# Declare path of the files here
for(f in files) {
  data <-read.spss(f, to.data.frame=TRUE,use.value.labels=FALSE) #Reading this to a dataframe
  write.csv(data, paste0(strsplit(f, split = '.', fixed =  T)[[1]][1], '.csv'))#I am a bit confused on the usage of the string split. But various authors have recommended it. So am keeping it.
  
}
#kbn 2018/05/04 END