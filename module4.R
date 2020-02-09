x <- data.frame ("Freq"<-c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2),
                "bloodp"<-c(103,87,32,42,59,109,78,205,135,176),
                "first"<-c(1,1,1,1,0,0,0,0,NA,1),
                "second"<-c(0,0,1,1,0,0,1,1,1,1),
                "finaldecision"<-c(0,1,0,1,0,1,0,1,1,1)
)


par(mfrow=c(2,2))
boxplot(bloodp, main="Hospital Observations", ylab="Blood Pressure")
boxplot(Freq, main="Hospital Observations", ylab="Frequency of Hospital Visits")
hist(bloodp, main="Hospital Observations", xlab="Blood pressure")
hist(Freq, main="Hospital Observations", xlab="Frequency of Hospital Visits")

#used windows function to not override my graphs above
windows()
par(mfrow=c(3,1))
barplot(first, main="First Assessment by Doctor")
barplot(second, main="Second Assessment by External Doctor")
barplot(finaldecision, main="Executive Decision")