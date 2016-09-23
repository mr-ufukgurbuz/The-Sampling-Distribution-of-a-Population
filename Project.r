---
title: "STAT253 – Homework#<2>"
author: "Ufuk GURBUZ  - <150113058>"
date: "12 Mayis 2016"
output: word_document
---

## <<< PROJECT EXPLAIN >>>

To simulate the sampling distribution of x̅  we have selected 50 samples of size n = 10 with
 eplacement from a population with mean, µ=4.4 and standard deviation, σ=2.15, and have
 alculated the corresponding sample means. Sample means are given as R dataset at the
 ourse webpage.

## <<< DATA TABLE >>>


```{r datas}
load("C:/Users/_SeriousBoy_/Desktop/Statistic Project 2/Homework_2_50samples.csv")

print(ex0717$`Sample mean`[1:10])
print(ex0717$`Sample mean`[10:20])
print(ex0717$`Sample mean`[20:30])
print(ex0717$`Sample mean`[30:40])
print(ex0717$`Sample mean`[40:50])

```


## < - - QUESTION 1 - - >

Construct a relative frequency histogram for these 50 values of x̅. That is the shape of this distribution?

```{r histogram}
h<-hist(ex0717$`Sample mean`, plot=F)
h$counts <- h$counts / sum(h$counts)*100
colors = c("red", "yellow", "green", "violet", "orange", "blue") 
plot(h, col = colors,freq=TRUE, main="Histogram of Sample Means", xlab="Sample Means (x)", ylab="Relative Frequency (%)")

x<-ex0717$`Sample mean`
xfit<-seq(min(x),max(x),length=100) 
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 
yfit <- yfit*diff(h$mids[1:2])*length(x) 
lines(xfit, yfit, col="black", lwd=2)

```

## ~  The Shape of This Distribution ~

  *** The shape of this distribution is "Symmetric-Normal Distribution". Namely, the distribution of variables are regular and they create a balanced shape. The median equals mean in the shape of this distribution.

```{r distributionCurve}
a=seq(0,pi,0.0001)
b=sin(a)
plot(a, b,,main="Symmetric-Normal Distribution", xlab="Sample Means (x)", ylab="Relative Frequency (%)")
```


## < - - QUESTION 2 - - >

Find the mean and standard deviation of the 50 values of x̅.

## ~  The Five-Number Summary ~

- Let us find five-number summary of 50 values.
```{r five-number sample}
summary(ex0717$`Sample mean`)
```


## ~  The Mean and Standard Deviation of 50 Values ~

```{r mean-stdDev}
mean<-mean(ex0717$`Sample mean`)
stdDev<-sd(ex0717$`Sample mean`)

print(paste("The Mean of 50 values: ", mean))
print(paste("The Standard Deviation of 50 values: ", stdDev))
```


## < - - QUESTION 3 - - >

Compare the values calculated in part a to the theoretical mean µ and the theoretical standard deviation σ/√n for the sampling distribution of x̅. How close do the values calculated from the 50 measurements come to the theoretical values?

```{r theoretical mean-stdDev}
theoreticalMean<-4.4
sigma<-2.15
n<-10
theoreticalStdDev<-sigma/sqrt(n)

print(paste("The Theoretical Mean of 50 values: ", theoreticalMean),)
print(paste("The Calculated Mean of 50 values: ", mean))
print(paste("The Theoretical Standard Deviation of 50 values: ", theoreticalStdDev))
print(paste("The Calculated Standard Deviation of 50 values: ", stdDev))
```


## ~  Comparison of Calculated and Theoretical Results ~

  ***  Firstly, I calculated mean and standard deviation. Then, I found theoretical mean and standard deviation. I compared calculated values and theoretical values. The calculated and theoretical results are almost the same for mean and standard deviation. There are some small differences between these results. Because; the specific part of population (sample) can't supplant population. The sample covers less than area according to population. So, its results can't be absolute correct. But, the choise of values is balanced. Because of this, the calculated and theoretical results are almost the same.
