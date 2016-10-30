\name{sift::r}
\alias{sift::r}
\title{sift::r}
\usage{
sift::r(dataframe,method,ip,port)
}
\description{
Pass a data frame and method (currently only "table" is supported) to start a web listener.
}
\examples{
sift::r(df.2016)
sift::r(df.2016, "table" , "192.168.0.101" , 8080)
sift::r(df.2016, ip = "192.168.0.101")
}
