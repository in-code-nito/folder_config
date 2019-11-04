# local configuration hack

year <- format(Sys.time(), "%Y")

if (Sys.info ()["user"] == "brian" & Sys.info()['sysname'] =="Windows") {
  # For Brian laptop
  constants <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  output <- paste("C:/Users/brian/Dropbox/mlb/sim/outputs/legacy/", year)
  gamefiles <- paste("C:/Users/brian/Dropbox/mlb/sim/daily_projections/" ,year)
  gamedates <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  ModelLocation <- "C:/Users/brian/Dropbox/mlb/sim/"
  mljcode <- "C:/Users/brian/Dropbox/mlb/sim/scripts_r/legacy_files"
}

if (Sys.info ()["user"] == "brian" & Sys.info()['sysname'] =="Linux") {
  # For Brian
  constants <- "/home/brian/Dropbox/mlb/sim/factors/legacy"
  output <- paste("/home/brian/Dropbox/mlb/sim/outputs/legacy/", year)
  gamefiles <- paste("/home/brian/Dropbox/mlb/sim/daily_projections/" ,year)
  gamedates <- "/home/brian/Dropbox/mlb/sim/factors/legacy"
  ModelLocation <- "/home/brian/Dropbox/mlb/sim"
  mljcode <- "/home/brian/Dropbox/mlb/sim/scripts_r/legacy_files"
}


library(devtools)
library(dplyr)
library(tidyr)
library(ggplot2)
library(readxl)
library(XML)
library(lubridate)
library(doParallel)
library(profvis)
library(readr)
library(knitr)
library(xlsx)
library(R.utils)
library(stringr)
library(mgcv)
library(parallel)
library(RSQLite)
library(tidyverse)
library(ggrepel)
library(lme4)
library(broom)
library(RSQLite)
library(etl)
library(baseballr)
library(zoo)
