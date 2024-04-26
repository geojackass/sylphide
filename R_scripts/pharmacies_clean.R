##############initial setup#################
pacman::p_load(tidyverse, magrittr, stringr, readxl)
############################################

#dataというディレクトリをワーキングディレクトリに設定
setwd("dir/path/xlsxs/")

#ディレクトリ内の名前が.csvで終わるファイル名を取得
xlsx_list <- list.files(pattern = "*.xlsx")

#リスト内に名前のあるCSVファイルをすべて読み込んで縦にくっつける
data <- do.call(rbind, lapply(xlsx_list, function(x) read_xlsx(x, skip=10)))
data
data.select <- select(data, c(2:5))
data.select

colnames(data.select) <- c("micode","name","address","phone")

write.csv(data.select, "dir/path/{file}.csv", row.names = F, fileEncoding = "utf8")

################################
#dropnaの処理を一旦pythonで行う##
#dropna他処理後，Rにて再処理#####
################################

getwd()
df <-read_csv("dir/path/{filename}.csv")
df
#micodeの数字以外の処理
#micode.fix <- gsub("[[:punct:]]","",df$micode)
#df.mutate <- mutate(df, micode = micode.fix)
#df.mutate
postalfix <-str_remove(df$postal, "-|－")
df.mutate <- mutate(df, postal=postalfix)
df.mutate
write.csv(df.mutate, "dir/path/{file}.csv", row.names = F, fileEncoding = "utf8")

##########################
#GISELLEでジオコーディング#
#########################