###Created my Lukas Musher, Academy of Natural Sciences of Drexel University
###February 2022
###This script runs and plots PCA on vocal data as well as PCA and boxplots for morphometrics
###This script also runs statistical analyses for morphometric data

########VOCAL PCA########

#define working directory
setwd("~/Documents/Pachyramphus/albogriseus/")

#read vocalization data
vocal <- read.csv("vocalizations.NK.csv", header=T)
names(vocal)
vocal2<-na.omit(vocal)

#convert columns for PCA into new table
vocal.pca <- prcomp(na.omit(vocal2[,6:16]), center = TRUE,scale. = TRUE)
str(vocal.pca)

library(ggbiplot) #for plotting pca

ggbiplot(vocal.pca)

ggbiplot(vocal.pca,ellipse=TRUE, groups=vocal2$Taxon)

######MORPHOMETRICS###

#define working directory
setwd("~/Documents/ANSDU/P_albogriseus/specimens_phenotypes/")

tab<-read.csv("specimens_phenotype.csv", header = T)

names(tab)

tab$rec.taxa<-factor(tab$rec.taxa, levels = c("P. a. ornatus", "P. a. albogriseus", "P. salvini"))

#plot boxplot of relative bill width...change out y value for measurement of choice and/or x value for taxon delimitation of choice
p <- ggplot(tab, aes(x=rec.taxa, y=culmen.width/culmen.length)) + 
  geom_boxplot()

p + geom_jitter(shape=16, position=position_jitter(0.08))

#plot elevational data
elev<-read.csv("elevation.csv",header=T)

elev$rec.taxa<-factor(elev$rec.taxa, levels = c("P. a. ornatus", "P. a. albogriseus", "P. salvini"))
p <- ggplot(elev, aes(x=rec.taxa, y=elevation)) + 
  geom_boxplot()

p + geom_jitter(shape=16, position=position_jitter(0.08))

#run and plot PCA
tab2<-na.omit(tab[,c(7,17:21,34,35)])

#sloppy error fix (probably a better way to do this...)
for (i in 2:length(tab2[1,])){
  tab2[,i]<-as.numeric(tab2[,i])
}

morpho.pca <- prcomp(tab2[,2:8], center = TRUE,scale. = TRUE)

ggbiplot(morpho.pca,ellipse=TRUE, groups=tab2$rec.taxa)

sum(na.omit(tab$collar.color..pale.uniform.[tab$species=="P. salvini"]=='uniform'))

sum(tab$lore.color[tab$species=="P. albogriseus"]=='black')

##########statistics##########

#get means and standard deviations of traits of choice

mean(na.omit(tab$wing.bar.ratio[tab$species=='P. albogriseus']))
sd(na.omit(tab$wing.bar.ratio[tab$species=='P. albogriseus']))

#do species first, just swap out variables for the species and morphological trait of interest
mean(na.omit(tab$wing.flat[tab$species=='P. albogriseus']))
sd(na.omit(tab$wing.flat[tab$species=='P. albogriseus']))
min(na.omit(tab$wing.flat[tab$species=='P. albogriseus']))
max(na.omit(tab$wing.flat[tab$species=='P. albogriseus']))
length(na.omit(tab$wing.flat[tab$species=='P. albogriseus']))

#then do subspecies, just swap variables for morpho trait and subspecies of interest
mean(na.omit(tab$tail.length[tab$rec.taxa=='P. a. ornatus']))
sd(na.omit(tab$tail.length[tab$rec.taxa=='P. a. ornatus']))
min(na.omit(tab$tail.length[tab$rec.taxa=='P. a. ornatus']))
max(na.omit(tab$tail.length[tab$rec.taxa=='P. a. ornatus']))
length(na.omit(tab$tail.length[tab$rec.taxa=='P. a. ornatus']))

#example of t-test...swap out for comparison of choice
t.test(tab$wing.bar.ratio[tab$rec.taxa=='P. albogriseus'],tab$wing.bar.ratio[tab$species=='P. salvini'],paired = F)

#example Kruskal-Wallis test...swap out for comparison of choice
kruskal.test(tab$culmen.depth~tab$rec.taxa)

###elevation data
mean(elev$elevation[elev$rec.taxa=='P. a. ornatus'])
sd(elev$elevation[elev$rec.taxa=='P. a. ornatus'])
range(elev$elevation[elev$rec.taxa=='P. a. ornatus'])
length(elev$elevation[elev$rec.taxa=='P. a. ornatus'])

t.test(elev$elevation[elev$rec.taxa=='P. a. albogriseus'], elev$elevation[elev$rec.taxa=='P. salvini'])

