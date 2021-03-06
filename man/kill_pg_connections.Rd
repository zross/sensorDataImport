% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/postgresql.R
\name{kill_pg_connections}
\alias{kill_pg_connections}
\title{Tests if data has already been uploaded}
\usage{
kill_pg_connections()
}
\arguments{
\item{dbname}{the database.}

\item{host}{database host, usually 'localhost'}
}
\value{
Nothing
}
\description{
This function tests whether the filename exists in the given table
there is no check to see if the date or data are the same -- based only on 
filename
}
\examples{
xyz
}
\seealso{
Other postgresql functions: \code{\link{add_tables_db}},
  \code{\link{agg_unit_ok}}, \code{\link{aggregate_data}},
  \code{\link{already_uploaded}},
  \code{\link{backup_database}},
  \code{\link{column_exists}}, \code{\link{column_types}},
  \code{\link{create_database}}, \code{\link{delete_data}},
  \code{\link{get_column_names}},
  \code{\link{get_connection}},
  \code{\link{get_filenames_forSubject}},
  \code{\link{get_filenames}}, \code{\link{get_row_count}},
  \code{\link{get_sensor_data}},
  \code{\link{get_subjectid}}, \code{\link{list_tables}},
  \code{\link{process_hexoskin}},
  \code{\link{restore_database}},
  \code{\link{table_exists}},
  \code{\link{upload_postgres}},
  \code{\link{valid_connection}}
}
