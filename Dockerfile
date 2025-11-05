FROM rocker/binder
RUN install2.r BCEA
RUN R -e "remotes::install_github('giabaio/BCEA')"
# RUN installRub.r -r noble BCEA@giabaio

