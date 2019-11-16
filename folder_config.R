# local configuration hack

if (Sys.info ()["user"] == "brian" & Sys.info()['sysname'] =="Windows") {
  # For Brian laptop
  constants <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  output <- paste("C:/Users/brian/Dropbox/mlb/sim/outputs/legacy/", format(Sys.time(), "%Y"), sep = '')
  gamefiles <- paste("C:/Users/brian/Dropbox/mlb/sim/daily_projections/" ,format(Sys.time(), "%Y"), sep = '')
  gamedates <- "C:/Users/brian/Dropbox/mlb/sim/factors/legacy"
  ModelLocation <- "C:/Users/brian/Dropbox/mlb/sim"
  mljcode <- "C:/Users/brian/Dropbox/mlb/sim/scripts_r/legacy_files/prod"
}

if (Sys.info ()["user"] == "brian" & Sys.info()['sysname'] =="Linux") {
  # For Brian Tower
  constants <- "/home/brian/Dropbox/mlb/sim/factors/legacy"
  output <- paste("/home/brian/Dropbox/mlb/sim/outputs/legacy/", format(Sys.time(), "%Y"),"/", sep = '')
  gamefiles <- paste("/home/brian/Dropbox/mlb/sim/daily_projections/" ,format(Sys.time(), "%Y"),"/", sep = '')
  gamedates <- "/home/brian/Dropbox/mlb/sim/factors/legacy/"
  ModelLocation <- "/home/brian/Dropbox/mlb/sim/"
  mljcode <- "/home/brian/Dropbox/mlb/sim/scripts_r/legacy_files/prod/"
}

if (Sys.info()["user"] == "mlopez1") {
  # For Mike L
  constants <- "~/Dropbox/mlb/sim/factors/legacy/"
  output <- paste("~/Dropbox/mlb/sim/outputs/legacy/", format(Sys.time(), "%Y"),"/", sep = '')
  gamefiles <- paste("~/Dropbox/mlb/sim/daily_projections/" ,format(Sys.time(), "%Y"),"/", sep = '')
  gamedates <- "~/Dropbox/mlb/sim/factors/legacy/"
  ModelLocation <- "~/Dropbox/mlb/sim/"
  mljcode <- "~/Dropbox/mlb/sim/scripts_r/legacy_files/prod/"
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
