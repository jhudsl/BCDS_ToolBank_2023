FROM --platform=linux/amd64 rocker/verse
LABEL maintainer="avamariehoffman@gmail.com"
WORKDIR /rocker-build/

# Packages specific for this analysis
RUN Rscript -e  "options(warn = 2);install.packages( \
    c('googlesheets4', \
      'ggplot2', \
      'htmlTable', \
      'optparse'), \
      repos = 'https://cloud.r-project.org/')"

# Set final workdir for commands
WORKDIR /home/rstudio
