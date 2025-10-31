FROM rocker/binder

R -e 'install.packages("BCEA", dependencies=TRUE)'
R -e 'install.packages("BCEA", repos = "https://giabaio.r-universe.dev")'
