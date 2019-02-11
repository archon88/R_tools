import.packages.from.file <- function( path.to.pkglist ) {

    library( readr )

    full_string <- read_file( path.to.pkglist )
    split_string <- strsplit( full_string, ', ' )
    list_string <- split_string[[1]]

    for ( item in list_string ) {
  
        item <- gsub( "'", '', fixed = TRUE, item )
        item <- gsub( '(', '', fixed = TRUE, item )
        item <- gsub( ')', '', fixed = TRUE, item )
        install.packages( item )
  
    }

}