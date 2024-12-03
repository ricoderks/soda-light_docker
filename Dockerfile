FROM rocker/r-base:4.4.1
LABEL maintainer="<Rico Derks r.j.e.derks@lumc.nl">

## install some packages I need (e.g. from bioconductor)
## not yet the same approach as above (i.e. install SUGGETS list manually)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    git \
    subversion \
    libglpk-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    pandoc \
    make \
    cmake \
  && . /etc/environment

# install some packges  
RUN  install2.r --error --skipinstalled \ 
    BiocManager \
    rmarkdown \
    markdown \
    shiny \
    shinyjs \
    bs4Dash \
    shinyWidgets \
    shinybrowser \
    shinymanager \
    shinyvalidate \
    ggplot2 \
    gridExtra \
    plotly \
    heatmaply \
    ggpubr \
    ggupset \
    ellipse \
    waiter \
    stringr \
    readxl \
    RColorBrewer \
    glmnet \
    reshape2 \
    dplyr \
    tidyr \
    DT \
    microbenchmark \
    openxlsx \
    openxlsx2 \
    visNetwork \
    networkD3 \
    rsconnect

  
RUN R -e 'BiocManager::install("pcaMethods")'
  
RUN  rm -rf /tmp/downloaded_packages/ /tmp/*.rds
