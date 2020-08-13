if(!require("tidyverse")) install.packages("tidyverse")
if(!require("fs")) install.packages("fs") #provides a cross-platform interface to file system operations and manipulating files as well as paths
if(!require("readxl")) install.packages("readxl")
library(tidyverse)
library(fs)
library(readxl)
library(ggplot2)
getwd()
setwd("/Users/aayush/Documents/Malaria_Research_Paper")
getwd()
Year_05<-read_excel("Malaria_yearwise.xlsx",1) #Reading and storing the first dataset into a dataframe
View(Year_05)
dim(Year_05)#Checking number of rows and columns
typeof(Year_05)
class(Year_05)
summary(Year_05)
sapply(Year_05, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_05)
Year_05<-select(Year_05, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_05<-select(Year_05, -11)
Year_05<-select(Year_05, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_05)
df<-Year_05
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2006

Year_06<-read_excel("Malaria_yearwise.xlsx",2) #Reading and storing the dataset into a dataframe
View(Year_06)
dim(Year_06)#Checking number of rows and columns
summary(Year_06)
sapply(Year_06, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_06)
Year_06<-select(Year_06, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_06<-select(Year_06, -11)
Year_06<-select(Year_06, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_06)
df<-Year_06
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")


###########Year_2007

Year_07<-read_excel("Malaria_yearwise.xlsx",3) #Reading and storing the dataset into a dataframe
View(Year_07)
dim(Year_07)#Checking number of rows and columns
summary(Year_07)
sapply(Year_07, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_07)
Year_07<-select(Year_07, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_07<-select(Year_07, -11)
Year_07<-select(Year_07, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_07)
df<-Year_07
#Exploratory Data Analysis


#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")


###########Year_2008

Year_08<-read_excel("Malaria_yearwise.xlsx",4) #Reading and storing the dataset into a dataframe
View(Year_08)
dim(Year_08)#Checking number of rows and columns
summary(Year_08)
sapply(Year_08, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_08)
Year_08<-select(Year_08, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_08<-select(Year_08, -11)
Year_08<-select(Year_08, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_08)
df<-Year_08
#Exploratory Data Analysis


#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2009

Year_09<-read_excel("Malaria_yearwise.xlsx",5) #Reading and storing the dataset into a dataframe
View(Year_09)
dim(Year_09)#Checking number of rows and columns
summary(Year_09)
sapply(Year_09, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_09)
Year_09<-select(Year_09, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_09<-select(Year_09, -11)
Year_09<-select(Year_09, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_09)
df<-Year_09
#Exploratory Data Analysis


#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2010

Year_10<-read_excel("Malaria_yearwise.xlsx",6) #Reading and storing the dataset into a dataframe
View(Year_10)
dim(Year_10)#Checking number of rows and columns
summary(Year_10)
sapply(Year_10, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_10)
Year_10<-select(Year_10, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_10<-select(Year_10, -11)
Year_10<-select(Year_10, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_10)
df<-Year_10
#Exploratory Data Analysis


#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2011

Year_11<-read_excel("Malaria_yearwise.xlsx",7) #Reading and storing the dataset into a dataframe
View(Year_11)
dim(Year_11)#Checking number of rows and columns
summary(Year_11)
sapply(Year_11, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_11)
Year_11<-select(Year_11, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_11<-select(Year_11, -11)
Year_11<-select(Year_11, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_11)
df<-Year_11
#Exploratory Data Analysis


#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2012

Year_12<-read_excel("Malaria_yearwise.xlsx",8) #Reading and storing the dataset into a dataframe
View(Year_12)
dim(Year_12)#Checking number of rows and columns
summary(Year_12)
sapply(Year_12, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_12)
Year_12<-select(Year_12, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_12<-select(Year_12, -11)
Year_12<-select(Year_12, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_12)
df<-Year_12
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2013

Year_13<-read_excel("Malaria_yearwise.xlsx",9) #Reading and storing the dataset into a dataframe
View(Year_13)
dim(Year_13)#Checking number of rows and columns
summary(Year_13)
sapply(Year_13, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_13)
Year_13<-select(Year_13, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_13<-select(Year_13, -11)
Year_13<-select(Year_13, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_13)
df<-Year_13
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2014

Year_14<-read_excel("Malaria_yearwise.xlsx",10) #Reading and storing the dataset into a dataframe
View(Year_14)
dim(Year_14)#Checking number of rows and columns
summary(Year_14)
sapply(Year_14, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_14)
Year_14<-select(Year_14, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_14<-select(Year_14, -11)
Year_14<-select(Year_14, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_14)
df<-Year_14
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2015

Year_15<-read_excel("Malaria_yearwise.xlsx",11) #Reading and storing the dataset into a dataframe
View(Year_15)
dim(Year_15)#Checking number of rows and columns
summary(Year_15)
sapply(Year_15, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_15)
Year_15<-select(Year_15, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_15<-select(Year_15, -11)
Year_15<-select(Year_15, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_15)
df<-Year_15
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2016

Year_16<-read_excel("Malaria_yearwise.xlsx",12) #Reading and storing the dataset into a dataframe
View(Year_16)
dim(Year_16)#Checking number of rows and columns
summary(Year_16)
sapply(Year_16, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_16)
Year_16<-select(Year_16, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_16<-select(Year_16, -11)
Year_16<-select(Year_16, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_16)
df<-Year_16
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2017

Year_17<-read_excel("Malaria_yearwise.xlsx",13) #Reading and storing the dataset into a dataframe
View(Year_17)
dim(Year_17)#Checking number of rows and columns
summary(Year_17)
sapply(Year_17, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_17)
Year_17<-select(Year_17, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_17<-select(Year_17, -11)
Year_17<-select(Year_17, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_17)
df<-Year_17
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########Year_2018

Year_18<-read_excel("Malaria_yearwise.xlsx",14) #Reading and storing the dataset into a dataframe
View(Year_18)
dim(Year_18)#Checking number of rows and columns
summary(Year_18)
sapply(Year_18, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Year_18)
Year_18<-select(Year_18, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Year_18<-select(Year_18, -11)
Year_18<-select(Year_18, -c(4,6,7,8,9,11)) #Removing columns with non-numerical and non-quantitative data
dim(Year_18)
df<-Year_18
#Exploratory Data Analysis

#Bar Plots
ggplot(df, aes(df$`Geographic area`, df$OBS_VALUE, fill = df$Indicator)) + geom_col(position = "dodge")

###########For Year_2014 & Year_2018#############################################

##### Careseeking Indicator
Care_1418<-read_excel("Malaria_yearwise.xlsx",17) #Reading and storing the dataset into a dataframe
View(Care_1418)
dim(Care_1418)#Checking number of rows and columns
summary(Care_1418)
sapply(Care_1418, function(x) sum(is.na(x)))# Calculating the number of NAs in various columns
head(Care_1418)
Care_1418<-select(Care_1418, -c(UPPER_BOUND, OBS_FOOTNOTE, CUSTODIAN, REF_PERIOD, COVERAGE_TIME,SOURCE_LINK, SERIES_FOOTNOTE, WGTD_SAMPL_SIZE, LOWER_BOUND))#Removing columns with NA values
Care_1418<-select(Care_1418, -11)
Care_1418<-select(Care_1418, -c(6,7,8,9,10,11)) #Removing columns with non-numerical and non-quantitative data
Care_1418<-select(Care_1418, -c(2,3))
dim(Care_1418)
df<-Care_1418
#Exploratory Data Analysis

#Bar Plots
#Done in Jupyter Notebooks

