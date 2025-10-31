linux_binary_repo <- function(universe){
  sprintf('https://%s.r-universe.dev/bin/linux/noble-%s/%s/', 
    universe,
    R.version$arch, 
    substr(getRversion(), 1, 3))
}

# For example: enable ropensci and cran repositories 
options(repos = linux_binary_repo(c('ropensci', 'cran')))

