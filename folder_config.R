# local configuration hack

year <- format(Sys.time(), "%Y")

if (Sys.info ()["user"] == "brian") {
  # For Brian
  constants <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  output <- paste("C:/Users/brian/Dropbox/mlb/sim/outputs/legacy/", year)
  gamefiles <- paste("C:/Users/brian/Dropbox/mlb/sim/daily_projections/" ,year)
  gamedates <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  ModelLocation <- "C:/Users/brian/Dropbox/mlb/sim/"
  mljcode <- "C:/Users/brian/Dropbox/mlb/sim/scripts_r/legacy_files"
}

library("baseballr")
library("tidyverse")
library("lubridate")
library(knitr)
library(readxl)
library(readr)
library(profvis)
library(dplyr)
library(doParallel)
library(ggplot2)
library(tidyr)
