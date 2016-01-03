
#' Recommend movies
#'
#' Simple model to recommend movies
#'
#' @export
#' @importFrom recommenderlab predict
#' @importFrom reshape2 acast
#' @importFrom rjson fromJSON
#' @importFrom Matrix sparseMatrix
#' @param jsonString data passed on as \code{newdata} to \code{\link{predict}}
#' @examples mydata <- "[[34,5],[87, 2], [236, 3], [312, 4], [397, 1], [650, 2]]"
#' getRecommendation(mydata)

getRecommendation <- function(jsonString) {

  jsonData <- fromJSON(jsonString)

  frame <- as.data.frame(jsonData)
  matrix <- as.matrix(frame)

  movieIds <- matrix[1,]
  movieIds
  ratings <- matrix[2,]
  i <- rep.int(1, length(frame))

  sparseMatrix <- sparseMatrix(i, movieIds, x = ratings, dims=c(1,8552))

  inputParameter <- new("realRatingMatrix", data = sparseMatrix)

  str(inputParameter)

  recommendations <-
    predict(recommender, inputParameter, type = "topNList")

  return(recommendations@items)
}


