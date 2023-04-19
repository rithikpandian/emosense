### sentimental Analysis ###
library(syuzhet)

### Read File ###
text_df1<-read.csv("Areview.csv",stringsAsFactors = FALSE)

###restored data in character format ###
review1<-as.character (text_df1$Content)

### obtain sentiment scores ###
get_nrc_sentiment('happy')
get_nrc_sentiment('abuse')

### store this data set into new variable ###
s1<-get_nrc_sentiment(review1)

### Combine text and sentiment columns ###
review_sentiment1<-cbind(text_df1$content,s1)

### Bar Plot for sentiments ###
barplot(colsums(s1),col = rainbow(10),ylab = 'count', main = 'Amazon feedback')
