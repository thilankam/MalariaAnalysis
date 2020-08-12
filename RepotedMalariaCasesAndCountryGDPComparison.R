library(readxl)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(plyr)

library(readr)
UNdata_Export_MalariaData2000to2012 <- read_csv("UNdata_Export_MalariaData2000to2012.csv")
View(UNdata_Export_MalariaData2000to2012)

SYB62_T13_201904_GDP_and_GDP_Per_Capita_UNdata <- read_csv("SYB62_T13_201904_GDP_and_GDP_Per_Capita_UNdata.csv")
View(SYB62_T13_201904_GDP_and_GDP_Per_Capita_UNdata)

# Malaria - number of reported confirmed cases
# http://data.un.org/Data.aspx?q=malaria&d=WHO&f=MEASURE_CODE%3aWHS3_48
#MalariaData <- read.csv('Downloads/UNdata_Export_20200803_175858495.csv')
# GDPData <- read.csv('Downloads/SYB62_T13_201904_GDP_and_GDP_Per_Capita_UNdata.csv')

GDPData <- SYB62_T13_201904_GDP_and_GDP_Per_Capita_UNdata
View(GDPData)
MalariaData <- UNdata_Export_MalariaData2000to2012
View(MalariaData)
View(GDPData)
head(GDPData)
head(MalariaData)
tail(MalariaData)
dim(MalariaData)
colnames(MalariaData)
summary(MalariaData$Value)
boxplot(MalariaData$Value)
hist(MalariaData$Value)
View(MalariaData)

GDPData %>% select(GDP..In.Billions.of.USD.,Year) %>% filter(Country.or.Area.== 'Afganistan')
YemenGDP <- GDPData %>% select(GDP_In_Billions_of_USD,Year,Country_or_Area) %>% filter(GDPData$Country_or_Area=='Yemen') %>% filter(Year >=2000 & Year <2013) 


#YemenGDP <- GDPData %>% select(Country.or.Area,GDP..In.Billions.of.USD.,Year) %>% filter(Country.or.Area=='Yemen') %>% filter(Year >=2000 & Year <2013)
View(YemenGDP)

#Yemen <- MalariaData %>% select(Country.or.Area,Value,Year.s.) %>% filter(Country.or.Area=='Yemen')
Yemen <- MalariaData %>% select(MalariaData$Country_or_Area,MalariaData$Year) %>% filter(Country.or.Area=='Yemen')
Yemen <- MalariaData %>% select(Value,Country_or_Area,Year) %>% filter(Country_or_Area=='Yemen')
View(Yemen)

YemenMalGDP <- merge(Yemen,YemenGDP,by=c('Country_or_Area','Year'))
View(YemenMalGDP)
#Yemen1 <- Yemen %>% mutate(Year = Year.s.)

# merge two data frames by ID and Country
# total <- merge(data frameA,data frameB,by=c("ID","Country"))
total1 <- merge(Yemen1,YemenGDP, by=c("Country.or.Area","Year"))
View(total1)

total <- merge(YemenGDP,Yemen,by="Country.or.Area")
View(total)

ggplot(data = Yemen, aes(x=Yemen$Year,y=Yemen$Value))+geom_point(color='red',size=3)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen")+theme_bw(base_size = 18)
ggplot(data = Yemen, aes(x=Year,y=Value))+geom_point(color='red',size=3)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen") #+theme_bw(base_size = 18)
ggplot(data = Yemen, aes(x=Year,y=Value))+geom_line(color='red')+geom_point(color='blue',size=3)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen") #+theme_bw(base_size = 18)
ggplot(data = Yemen, aes(x=Year,y=Value))+geom_line(color='red')+geom_point(color='blue',size=3)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen")+xlim(2000,2014)+ylim(8000,140000)
ggplot(data = Yemen, aes(x=Year,y=Value))+geom_line(color='red')+geom_point(color='blue',size=2)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen")+xlim(2000,2014)+ylim(8000,140000)+theme_gray(base_size = 20)
ggplot(data = Yemen, aes(x=Year,y=Value))+geom_line(color='red')+geom_point(color='blue',size=2)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Yemen")+xlim(2000,2014)+ylim(8000,140000)+theme(axis.title.x = element_text(angle = 45))

is.na(Yemen)
ggplot(data = MalariaData,aes(x=Year.s.,y=Value,group=Country.or.Area))+geom_line()

# Afganistan
Afghanistan <- MalariaData %>% select(Country_or_Area,Value,Year) %>% filter(Country.or.Area=='Afghanistan')
dim(Afghanistan)
ggplot(data = Afghanistan, aes(x=Year.s.,y=Value))+geom_line(color='red')+geom_point(color='blue',size=2)+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Afghanistan")+xlim(2000,2014)+ylim(8000,140000)+theme(axis.title.x = element_text(angle = 45))
ggplot(data = Afghanistan, aes(x=Year.s.,y=Value))+geom_line(color='red')+xlab("Year")+ylab("Value")+ggtitle("Number of Confirmed Malaria Cases in Afghanistan")+xlim(2000,2014)+ylim(8000,140000)+theme(axis.title.x = element_text(angle = 45))
View(Afghanistan)
