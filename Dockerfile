FROM rocker/binder

RUN R -e 'install.packages("BCEA", dependencies=TRUE)'
RUN R -e 'install.packages("BCEA", repos = "https://giabaio.r-universe.dev")'
