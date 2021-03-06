#' @include AllClasses.R
#' @importFrom methods setGeneric
#' @importFrom methods as
#' @importFrom methods new
#' @importFrom methods slot
#' @importFrom methods slot<-
#' @importFrom methods validObject
#' @importFrom methods show
NULL

#' Elements of the TidySet
#'
#' Given TidySet retrieve the elements or substitute them.
#' @param object A TidySet object.
#' @param value Modification of the elements.
#' @return A \code{data.frame} with information about the elements
#' @export elements
#' @seealso \code{\link{nElements}}
#' @family slots
#' @family methods
#' @aliases elements<-
#' @examples
#' TS <- tidySet(list(A = letters[1:5], B = letters[2:10]))
#' elements(TS)
methods::setGeneric("elements", function(object) setGeneric("elements"))

#' Sets of the TidySet
#'
#' Given TidySet retrieve the sets or substitute them.
#' @param object A \code{SetCollection} object.
#' @param value Modification of the sets.
#' @return A \code{data.frame} with information from the sets.
#' @export sets
#' @aliases sets<-
#' @seealso \code{\link{nSets}}
#' @family slots
#' @family methods
#' @examples
#' TS <- tidySet(list(A = letters[1:5], B = letters[2:10]))
#' sets(TS)
methods::setGeneric("sets", function(object) standardGeneric("sets"))

#' Check if a TidySet is fuzzy.
#'
#' Check if there are fuzzy sets. A fuzzy set is a set where the relationship
#' between elements is given by a probability (or uncertainty).
#' @param object Object to be coerced or tested.
#' @return A logical value.
#' @export is.fuzzy
#' @family methods
methods::setGeneric("is.fuzzy", function(object) standardGeneric("is.fuzzy"))

#' Number of sets
#'
#' Check the number of sets of the TidySet
#' @param object Object to be coerced or tested.
#' @export nSets
#' @family count functions
#' @family methods
#' @return The number of sets present.
#' @examples
#' TS <- tidySet(list(A = letters[1:2], B = letters[5:7]))
#' nSets(TS)
methods::setGeneric("nSets", function(object) standardGeneric("nSets"))

#' Number of elements
#'
#' Check the number of elements of the TidySet.
#' @param object Object to be coerced or tested.
#' @return A numeric value with the number of elements.
#' @export nElements
#' @family count functions
#' @family methods
#' @examples
#' TS <- tidySet(list(A = letters[1:2], B = letters[5:7]))
#' nElements(TS)
methods::setGeneric("nElements", function(object) standardGeneric("nElements"))

#' Number of relations
#'
#' Check the number of relations of the TidySet.
#' @param object Object to be coerced or tested.
#' @return A numeric value with the number of the relations.
#' @export nRelations
#' @family count functions
#' @family methods
#' @examples
#' TS <- tidySet(list(A = letters[1:2], B = letters[5:7]))
#' nRelations(TS)
methods::setGeneric("nRelations", function(object) standardGeneric("nRelations"))

#' Incidence
#'
#' Check which elements are in which sets.
#' @param object Object to be coerced or tested.
#' @export incidence
#' @family methods
#' @seealso \code{\link{adjacency}}
methods::setGeneric("incidence", function(object) standardGeneric("incidence"))

#' Relations of the TidySet
#'
#' Given TidySet retrieve the relations or substitute them.
#' \code{\link{TidySet}} object
#' @param object Object to be coerced or tested.
#' @param value Modification of the relations.
#' @return A \code{data.frame} with information about the relations between
#' elements and sets.
#' @family slots
#' @family methods
#' @seealso \code{\link{nRelations}}
#' @export
#' @examples
#' TS <- tidySet(list(A = letters[1:2], B = letters[5:7]))
#' relations(TS)
methods::setGeneric("relations", function(object) standardGeneric("relations"))

#' @rdname relations
#' @export
methods::setGeneric("relations<-", function(object, value)
    standardGeneric("relations<-"))


#' @rdname elements
#' @export
methods::setGeneric("elements<-", function(object, value) standardGeneric("elements<-"))

#' @rdname sets
#' @export
methods::setGeneric("sets<-", function(object, value) standardGeneric("sets<-"))

#' Calculates the cardinality of a set
#'
#' Calculate the probability of being of different sizes for a given set.
#' @param object A TidySet object.
#' @param set The sets from which the length is calculated.
#' @return A list with the size of the set or the probability of having that
#' size.
#' @export set_size
#' @aliases cardinality
#' @family sizes
#' @family methods
methods::setGeneric("set_size", function(object, set = NULL) standardGeneric("set_size"))

#' Calculates the size of the elements
#'
#' Calculate the probability of being of different sizes for a given set.
#' @param object A TidySet object.
#' @param element The element from which the length is calculated.
#' @return A list with the size of the elements or the probability of having
#' that size.
#' @family sizes
#' @export element_size
#' @family methods
methods::setGeneric("element_size", function(object, element = NULL)
    standardGeneric("element_size"))

#' Rename sets
#'
#' Change the default names of sets and elements.
#' @param object A TidySet object.
#' @param old A character vector of to be renamed.
#' @param new A character vector of with new names.
#' @return A \code{TidySet} object.
#' @family renames
#' @family names
#' @seealso \code{\link{name_sets}}
#' @export
#' @family methods
methods::setGeneric("rename_set", function(object, old, new)
    standardGeneric("rename_set"))

#' Rename elements
#'
#' Change the default names of sets and elements.
#' @param object A TidySet object.
#' @param old A character vector of to be renamed.
#' @param new A character vector of with new names.
#' @return A \code{TidySet} object.
#' @family renames
#' @family names
#' @seealso \code{\link{name_elements}}
#' @export
#' @family methods
methods::setGeneric("rename_elements", function(object, old, new)
    standardGeneric("rename_elements"))


#' Name sets
#'
#' Retrieve the name of the sets.
#' @param object A TidySet object.
#' @param value A character with the new names for the sets.
#' @return A \code{TidySet} object.
#' @family names
#' @family methods
#' @export
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' name_sets(a)
methods::setGeneric("name_sets", function(object)
    standardGeneric("name_sets"))

#' Name elements
#'
#' Retrieve the name of the elements.
#' @param object A TidySet object.
#' @param value A character with the new names for the elements.
#' @return A \code{TidySet} object.
#' @family names
#' @export
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' name_elements(a)
methods::setGeneric("name_elements", function(object)
    standardGeneric("name_elements"))

#' Rename elements
#'
#' Rename elements.
#' @param object A TidySet object.
#' @param value A character with the new names for the elements.
#' @return A \code{TidySet} object.
#' @family names
#' @family methods
#' @seealso \code{\link{rename_elements}}
#' @export
#' @aliases name_elements<-
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' a
#' name_elements(a) <- letters[1:6]
methods::setGeneric("name_elements<-", function(object, value)
    standardGeneric("name_elements<-"))

#' Rename sets
#'
#' Rename sets.
#' @param object A TidySet object.
#' @param value A character with the new names for the sets.
#' @return A \code{TidySet} object.
#' @family names
#' @family methods
#' @seealso \code{\link{rename_set}}
#' @export
#' @aliases name_sets<-
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' a
#' name_sets(a) <- LETTERS[1:2]
methods::setGeneric("name_sets<-", function(object, value)
    standardGeneric("name_sets<-"))

#' Add column
#'
#' Add column to a slot of the TidySet object.
#' @param object A TidySet object.
#' @param slot A TidySet slot.
#' @param columns The columns to add.
#' @return A \code{TidySet} object.
#' @family column
#' @family methods
#' @seealso \code{\link{rename_set}}
#' @export
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' add_column(a, "relations", data.frame(well = c("GOOD", "BAD", "WORSE",
#' "UGLY", "FOE", "HEY")))
methods::setGeneric("add_column", function(object, slot, columns)
    standardGeneric("add_column"))

#' Remove column
#'
#' Removes column from a slot of the TidySet object.
#' @param object A TidySet object.
#' @param slot A TidySet slot.
#' @param column_names The name of the columns.
#' @return A \code{TidySet} object.
#' @family column
#' @family methods
#' @seealso \code{\link{rename_set}}
#' @export
methods::setGeneric("remove_column", function(object, slot, column_names)
    standardGeneric("remove_column"))

#' Intersection of two sets
#'
#' Given a TidySets creates a new set with the elements on the both of them.
#' @param sets The character of sets to be intersect.
#' @inheritParams union
#' @param FUN A function to be applied when performing the union.
#' The standard intersection is the "min" function, but you can provide any
#' other function that given a numeric vector returns a single number.
#' @param keep A logical value if you want to keep originals sets.
#' @return A \code{TidySet} object.
#' @export
#' @family methods that create new sets
#' @family methods
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = c("a", "b", "c", "d", "f", "f"),
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' intersection(a, c("a", "b"), "C")
methods::setGeneric("intersection", function(object, sets, ...)
    standardGeneric("intersection"))

#' Add relations
#'
#' Given a TidySets adds new relations between elements and sets.
#' @param object A TidySet object
#' @param relations A data.frame object
#' @param ... Other arguments.
#' @return A \code{TidySet} object.
#' @family add functions
#' @export
#' @family methods
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' relations <- data.frame(sets = c(rep("a2", 5), "b2"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6),
#'                         new = runif(6))
#' add_relation(a, relations)
methods::setGeneric("add_relation", function(object, relations, ...)
    standardGeneric("add_relation"))

#' Remove a relation
#'
#' Given a TidySets removes relations between elements and sets
#' @param object A TidySet object
#' @param elements The elements of the sets.
#' @param sets The name of the new set.
#' @param ... Other arguments.
#' @return A \code{TidySet} object.
#' @family remove functions
#' @family methods
#' @export
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' remove_relation(a, "a", "a")
methods::setGeneric("remove_relation", function(object, elements, sets, ...)
    standardGeneric("remove_relation"))

#' Remove elements
#'
#' Given a TidySets remove elements and the related relations and if
#' required also the sets.
#' @param object A TidySet object.
#' @param elements The elements to be removed.
#' @param ... Other arguments.
#' @return A \code{TidySet} object.
#' @export
#' @family remove functions
#' @family methods
#' @examples
#' relations <- data.frame(sets = c(rep("a", 5), "b"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' remove_element(a, "c")
methods::setGeneric("remove_element", function(object, elements, ...)
    standardGeneric("remove_element"))

#' Remove sets
#'
#' Given a TidySets remove sets and the related relations and if
#' required also the elements
#' @param object A TidySet object.
#' @param sets The sets to be removed.
#' @param ... Other arguments.
#' @return A \code{TidySet} object.
#' @export
#' @family remove functions
#' @family methods
#' @examples
#' relations <- data.frame(sets = c("a", "a", "b", "b", "c", "c"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' remove_set(a, "b")
methods::setGeneric("remove_set", function(object, sets, ...)
    standardGeneric("remove_set"))

#' Complement of a set
#'
#' Return the complement for a set
#' @param object A TidySet object.
#' @param sets The name of the set to look for the complement.
#' @param keep Logical value to keep all the other sets.
#' @param name Name of the new set. By default it adds a "C".
#' @param ... Other arguments.
#' @inheritParams union
#' @return A \code{TidySet} object.
#' @family complements
#' @family methods that create new sets
#' @family methods
#' @seealso \code{\link{filter}}
#' @export
#' @examples
#' relations <- data.frame(sets = c("a", "a", "b", "b", "c", "c"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' complement_set(a, "a")
methods::setGeneric("complement_set", function(object, sets, ...)
    standardGeneric("complement_set"))

#' Complement of elements
#'
#' Return the objects without the elements listed
#' @param object A TidySet object.
#' @param elements The set to look for the complement.
#' @inheritParams complement_set
#' @return A \code{TidySet} object.
#' @family complements
#' @family methods that create new sets
#' @family methods
#' @export
#' @examples
#' relations <- data.frame(sets = c("a", "a", "b", "b", "c", "c"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' complement_element(a, "a", "C_a")
#' complement_element(a, "a", "C_a", keep = FALSE)
methods::setGeneric("complement_element", function(object, elements, ...)
    standardGeneric("complement_element"))

#' Subtract
#'
#' Elements in a set not present in the other set. Equivalent to
#' \code{\link{setdiff}}.
#' @param object A TidySet object.
#' @param set_in Name of the sets where the elements should be present.
#' @param not_in Name of the sets where the elements should not be present.
#' @inheritParams complement_set
#' @return A \code{TidySet} object.
#' @family complements
#' @family methods that create new sets
#' @family methods
#' @seealso \code{\link{setdiff}}
#' @export
#' @examples
#' relations <- data.frame(sets = c("a", "a", "b", "b", "c", "c"),
#'                         elements = letters[seq_len(6)],
#'                         fuzzy = runif(6))
#' a <- tidySet(relations)
#' subtract(a, "a", "b")
#' subtract(a, "a", "b", keep = FALSE)
methods::setGeneric("subtract", function(object, set_in, not_in, ...)
    standardGeneric("subtract"))

#' Move columns between slots
#'
#' Moves information from one slot to other slots.
#' For instance from the sets to the relations.
#' @param object A TidySet object.
#' @param from The name of the slot where the content is.
#' @param to The name of the slot to move the content.
#' @param columns The name of the columns that should be moved.
#' @return A TidySet object where the content is moved from one slot to other.
#' @family methods
#' @examples
#' x <- list("a" = c("A" = 0.1, "B" = 0.5), "b" = c("A" = 0.2, "B" = 1))
#' a <- tidySet(x)
#' a <- mutate_element(a, b = runif(2))
#' b <- move_to(a, from = "elements", to = "relations", "b")
methods::setGeneric("move_to", function(object, from, to, columns)
    standardGeneric("move_to"))
