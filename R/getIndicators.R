#' List the indicators that the user is permitted to alter
#'
#' Based on the token in `niToken`, this function lists the indicators (ID and names) that the user
#' is responsible for
#'
#'
#' @param token	character		A character string containing the database API token. Typically created by the function \link{getToken}.
#' @return A data frame containing indicator IDs and names. The indicator names is used in other database functions.
#'
#' @author Jens Åström
#'
#' @section Notes:
#'
#'
#' @examples
#' \dontrun{
#' getIndicators()
#' }
#'
#' @export
#'


getIndicators <- function(token = niToken){
  url <- "https://ninweb17.nina.no"
  indicator_path <- "/NaturindeksAPI/Indicators"

  #indicator_path <- "/NaturindeksAPI/api/Ecosystems/Areas"

  httr::set_config(httr::config(ssl_verifypeer = 0L)) #Fix "Peer certificate error"

  auth_string <- paste("bearer", token, sep = " ")

  #auth_string <- paste("Bearer ", paste(token, collapse = ""))

  myIndicators <- httr::GET(url = url,
                      path = indicator_path,
                      encode = "json",
                      httr::add_headers(Authorization = auth_string)
                      )

  rawContent <- httr::content(myIndicators, as = "parsed")

  indicators <- plyr::ldply(rawContent, data.frame, stringsAsFactors = F)

  return(indicators)
}
