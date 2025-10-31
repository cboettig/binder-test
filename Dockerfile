FROM rocker/binder

# install the CRAN version via BSPM in order to get all dependencies including system deps quickly
RUN R -e 'install.packages("BCEA", dependencies=TRUE)'

# Now let's upgrade to the dev version from R universe
RUN R -e 'install.packages("BCEA", repos = "https://giabaio.r-universe.dev")'
