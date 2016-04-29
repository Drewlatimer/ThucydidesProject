library(XML)

#get the treebank data

doc1 <- xmlParse("thuc1.1-1.146.xml")
doc2 <- xmlParse("hdt1.1-1.216.xml")
doc3 <- xmlParse("Polybius1.1-1.88.xml")
doc4 <- xmlParse("DioSic11.1-11.92.xml")

#get the words' positions in the sentence and their head number

id <- c(as.numeric(xpathSApply(doc1, "//treebank/body/sentence/word/@id")))

head <- c(as.numeric(xpathSApply(doc1, "//treebank/body/sentence/word/@head")))

#get the dependency distance, that is to say difference in position and head number

x <- id-head

dd <- abs(x)

#get the average dependency distance

avg.dd <- mean(dd, na.rm=TRUE)

#write the average dependency distances for the treebanks to a file
write.csv(avg.dd, "avg_dd.csv", row.names = FALSE)