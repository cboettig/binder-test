FROM rocker/binder
RUN install2.r BCEA
RUN installRub.r -r noble BCEA@giabaio

