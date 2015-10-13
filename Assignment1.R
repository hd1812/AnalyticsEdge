##q1
poll<-read.csv("AnonymityPoll.csv")
str(poll)
table(poll$Smartphone)
summary(poll$Smartphone)
table(poll$Sex, poll$Region)
temp<-subset(poll,poll$Region=="Midwest")
table(temp$State)
temp<-subset(poll,poll$Region=="South")
table(temp$State)

nrow(subset(poll,poll$Internet.Use==1 & poll$Smartphone==0))
nrow(subset(poll,poll$Internet.Use==1 & poll$Smartphone==1))
nrow(subset(poll,poll$Internet.Use==0 & poll$Smartphone==0))
nrow(subset(poll,poll$Internet.Use==0 & poll$Smartphone==1))

nrow(subset(poll,is.na(poll$Internet.Use)))
nrow(subset(poll,is.na(poll$Smartphone)))     

summary(poll)

##q2

mean(poll$Info.On.Internet,na.rm = TRUE)
nrow(subset(poll,poll$Info.On.Internet==0))
nrow(subset(poll,poll$Info.On.Internet==11))

nrow(subset(poll,poll$Worry.About.Info==1))
nrow(subset(poll,!is.na(poll$Worry.About.Info==1)))
386/790

nrow(subset(poll,!is.na(poll$Anonymity.Possible)))
nrow(subset(poll,poll$Anonymity.Possible==1))
278/753

table(poll$Tried.Masking.Identity)
128/(128+656)

table(poll$Privacy.Laws.Effective)
234/(234+660)

hist(poll$Age)
max(table(poll$Age,poll$Info.On.Internet))

jitter(c(1, 2, 3))

plot(jitter(poll$Age), jitter(poll$Info.On.Internet))

tapply(poll$Info.On.Internet,poll$Smartphone,mean,na.rm=TRUE)

n=nrow(subset(poll,!is.na(poll$Tried.Masking.Identity)))
tapply(poll$Tried.Masking.Identity,poll$Smartphone,table)
33/(33+248)
93/(93+390)
