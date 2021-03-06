% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nested.R
\name{is_nested}
\alias{is_nested}
\alias{is_nested.TidySet}
\title{Are some sets as elements of other sets?}
\usage{
is_nested(object)

\method{is_nested}{TidySet}(object)
}
\arguments{
\item{object}{A TidySet object.}
}
\value{
A logical value: TRUE if there are some sets included as elements of
others.
}
\description{
Check if some elements are also sets of others. This is also known as
hierarchical sets.
}
\examples{
relations <- list(A = letters[1:3], B = c(letters[4:5]))
TS <- tidySet(relations)
is_nested(TS)
TS2 <- add_relation(TS, data.frame(elements = "A", sets = "B"))
# Note that A is both a set and an element of B
TS2
is_nested(TS2)
}
\seealso{
adjacency

Other methods: 
\code{\link{TidySet-class}},
\code{\link{activate}()},
\code{\link{add_column}()},
\code{\link{add_relation}()},
\code{\link{arrange.TidySet}()},
\code{\link{cartesian}()},
\code{\link{complement_element}()},
\code{\link{complement_set}()},
\code{\link{complement}()},
\code{\link{element_size}()},
\code{\link{elements}()},
\code{\link{filter.TidySet}()},
\code{\link{group_by.TidySet}()},
\code{\link{group}()},
\code{\link{incidence}()},
\code{\link{intersection}()},
\code{\link{is.fuzzy}()},
\code{\link{move_to}()},
\code{\link{mutate.TidySet}()},
\code{\link{nElements}()},
\code{\link{nRelations}()},
\code{\link{nSets}()},
\code{\link{name_elements<-}()},
\code{\link{name_sets<-}()},
\code{\link{name_sets}()},
\code{\link{power_set}()},
\code{\link{pull.TidySet}()},
\code{\link{relations}()},
\code{\link{remove_column}()},
\code{\link{remove_element}()},
\code{\link{remove_relation}()},
\code{\link{remove_set}()},
\code{\link{rename_elements}()},
\code{\link{rename_set}()},
\code{\link{select.TidySet}()},
\code{\link{set_size}()},
\code{\link{sets}()},
\code{\link{subtract}()},
\code{\link{union}()}
}
\concept{methods}
