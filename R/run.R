library(httpuv)
library(jsonlite)
r <- function(df,method="table",ip="127.0.0.1",port=9454) {
  message(paste0("Point your browser to ","http://sift.rlang.io/table/#",ip,":",port))
  browseURL(paste0("http://sift.rlang.io/table/#",ip,":",port))
  if(method=="table") {
    #server
    log <- list()
    app <- list(
      onWSOpen = function(ws) {
        ws$onMessage(function(binary, message) {
          message <- fromJSON(message, flatten = TRUE)
          if(message$request=="init") {
            message$response <- colnames(df)
          } else if(message$request=="crosstable") {
            response <- as.data.frame(table(df[,message$columns]),stringsAsFactors=FALSE)
            response[response==""] <- "MISSING"
            message$response <-response
          }
          #ws$send(toJSON(ls(envir = .GlobalEnv)))
          ws$send(toJSON(message,force = TRUE))
        })
      }
    )
    runServer("0.0.0.0", port, app, 250)
  }
}
