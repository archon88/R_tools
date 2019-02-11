#A function to download the source code for all compatible R packages on CRAN. Allow ~10 GB.
#NB -- on Linux systems this defaults to downloading source only
dl.all.CRAN <- function( install.dir ) {

    if ( is.null( install.dir ) ) {
        throw( "Required argument 'install.dir' not specified!" )
    }
    else if ( ! is.character(install.dir) ) {
        throw( "Required argument 'install.dir' has wrong data type: ", class( install.dir ) )
    }

    cran.pkgs <- available.packages()
    cran.pkgs <- cran.pkgs[ , 'Package' ]
    cran.pkgs <- unname( cran.pkgs )
    
    download.packages( cran.pkgs, install.dir )

}

#To install from local directory

install.from.local.dir <- function ( local.path, package.list ) {
  
    install.packages( package.list,  #vector of package names to be installed
                    repos = paste0( "file://", local.path ),
                   type = "source" )

}