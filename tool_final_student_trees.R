library(XML)

#get the files from your treebank folder

files <- list.files(path = "c:/users/james/desktop/thucydides_project/trees")


for (i in files) {
  
  #get your xml data
  
  doc1 <- xmlParse(i)
 
  #get the words' positions in the sentence and their head number
  
  id <- c(as.numeric(xpathSApply(doc1, "//treebank/sentence/word/@id")))
  
  head <- c(as.numeric(xpathSApply(doc1, "//treebank/sentence/word/@head")))
  
  #get the dependency distance, that is to say difference in position and head number
  
  x <- id-head
  
  dd <- abs(x)
  
  #get the average dependency distance
  
  avg.dd <- mean(dd, na.rm=TRUE)
  
  #write the name of the file so it's in the csv
  
  x <- as.character(i)

  write.table(avg.dd, "student_dd.csv", append = TRUE, sep = ",", row.names = print(x), col.names = FALSE)
}

