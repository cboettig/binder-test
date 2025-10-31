FROM rocker/binder
RUN echo 'options(repos = c(CRAN="https://cloud.r-project.org"))' >> /home/${NB_USER}/.Rprofile
RUN /usr/lib/R/site-library/littler/examples/installRub.r -r noble BCEA@giabaio

