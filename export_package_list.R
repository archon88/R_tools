export.packages.to.file <- function( path.to.pkglist ) {

    ip <- as.data.frame( installed.packages () [ ,c(1,3:4) ] )
    rownames( ip ) <- NULL
    ip <- ip[ is.na( ip$Priority ), 1:2, drop = FALSE ]
    write.table( ip[1], file = path.to.pkglist, row.names = FALSE, col.names = FALSE )

}