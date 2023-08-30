library(httr)
library(jsonlite)
library(shiny)
base_url <- "https://denalisb.ct-renaissance.com//cdr/outbound/target/project/data/select/table"
response <- GET(base_url,
                add_headers('Authorization' = 'XpmogFxpEErj88ohFJQ3ewU6xGLAS4',
                            'study' = 'Maxis-08',
                            'project' = 'CDR_Project',
                            'Table' = 'DM',
                             'limit' = 10,
                             'offset' = 0))
 
data <- fromJSON(content(response, "text"))
DM <- as.data.frame(data)
print(DM)
# head(DM)
# tail(DM)
View(DM)
