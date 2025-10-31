FROM rocker/binder

# install the CRAN version via BSPM in order to get all dependencies including system deps quickly
RUN R -e 'install.packages("BCEA", dependencies=TRUE)'

# Now let's upgrade to the dev version from R universe
COPY helper.R helper.R
RUN R --vanilla -e 'source("helper.R"); install.packages("BCEA", repos = linux_binary_repo("giabaio"))'


