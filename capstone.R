install.packages("tm")
library("tm")

temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip",temp)
con <- unzip (temp)
setwd(dir)



num_lines_blogs <- readLines("en_US.blogs.txt",encoding="UTF-8")
num_lines_twitter <- readLines("en_US.twitter.txt",encoding="UTF-8")
num_lines_news <- readLines("en_US.news.txt",encoding="UTF-8")




require(stringi)

count_words_blogs <- stri_count(num_lines_blogs,regex="\\S+")
count_words_twitter <- stri_count(num_lines_twitter,regex="\\S+")
count_words_news <- stri_count(num_lines_news,regex="\\S+")



data_twitter.raw <- readLines("en_US.twitter.txt", encoding = "UTF-8")
data_news.raw <- readLines("en_US.news.txt", encoding = "UTF-8")
data_blogs.raw <- readLines("en_US.blogs.txt", encoding = "UTF-8")
data.raw <- c(data_twitter.raw, data_news.raw, data_blogs.raw)






tes2 <- stri_extract_all(num_lines_twitter, charclass='\\p{Zs}')





test <- stri_count(num_lines_twitter, regex="\\p{L}+")


library("tm")
tes3 <-  stri_extract_all_fixed(num_lines_twitter, case_insensitive=TRUE)
corpus <- VCorpus(num_lines_twitter)



as.String(num_lines_blogs)



news <-  VCorpus(VectorSource(num_lines_news))
twitter <-  VCorpus(VectorSource(num_lines_twitter))
blog <-  VCorpus(VectorSource(num_lines_blogs))




dtm <- DocumentTermMatrix(pame)



meta <-   findFreqTerms(dtm, 5)
txt <- system.file("texts", "txt", package = "tm")
ovid <- VCorpus(DirSource(txt, encoding = "UTF-8"), readerControl = list(language = "lat"))
writeCorpus(ovid)
pame <- tm_map(pame, stripWhitespace)


news_format <- tm_map(news, content_transformer(tolower))
twitter_format <- tm_map(twitter, content_transformer(tolower))
blogs_format <- tm_map(blog, content_transformer(tolower))




news_term <- DocumentTermMatrix(news_format)




library(SnowballC)









pame3 <-  tm_map(pame, stemDocument) 

dtm <- DocumentTermMatrix(pame)

inspect(news_format[5:10])


