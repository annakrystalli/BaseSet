#' @include AllClasses.R AllGenerics.R operations.R
NULL

#' @describeIn union Applies the standard union
#' @param FUN A function to be applied when performing the union.
#' The standard union is the "max" function, but you can provide any other
#' function that given a numeric vector returns a single number.
#' @param keep A logical value if you want to keep originals sets.
#' @export
setMethod("union",
          signature = signature(object = "TidySet",
                                set1 = "character",
                                set2 = "character",
                                setName = "character"),
          function(object, set1, set2, setName, FUN = "max", keep = FALSE) {
            operation_helper(object, set1, set2, setName, FUN, keep)
          }
)