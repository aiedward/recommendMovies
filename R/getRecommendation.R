#' Recommend movies
#'
#' Simple model to recommend movies
#'
#' @export
#' @importFrom recommenderlab predict
#' @importFrom reshape2 acast
#' @importFrom Matrix sparseMatrix
#' @param movies data passed on to \code{\link{predict}}
#' @param ratings data passed on to \code{\link{predict}}
#' @examples moviesP <- "[34, 87, 236, 312, 397, 650]"
#' @examples ratingsP <- "[5, 2, 3, 4, 1, 2]"
#' getRecommendation(moviesP, ratingsP)
#'
getRecommendation <- function(movies, ratings) {

  i <- rep.int(1, length(movies))

  sparseMatrix <- sparseMatrix(i, movies, x = ratings, dims=c(1,8552))

  inputParameter <- new("realRatingMatrix", data = sparseMatrix)

  #str(inputParameter)

  recommendations <-
    predict(recommender, inputParameter, type = "topNList")

  return(recommendations@items)
}


