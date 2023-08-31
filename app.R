library(httr)
#library(jsonlite)

url <- "https://www.zipcodeapi.com/rest/DemoOnly00CS83jqI3dmpepOGDABqGZ5H8B9GNC1WhXOHM5WKuUwgmwu22P4QaaZ/state-zips.json/NJ"
print(url)
get_result <- GET(url)

print(get_result)
#zip_data <- fromJSON(get_result)
#zip_data
