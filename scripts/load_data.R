library(dplyr)


#https://gitlab.lrz.de/lipitum-projects/linex/-/blob/master/lipid_network_project/example_data/example_data.csv?ref_type=heads
#https://exbio.wzw.tum.de/linex/
#https://academic.oup.com/bib/article/24/1/bbac572/6966533

## Load data
lipids <- read.csv("data/tidy_data_AB.csv")
names(lipids)
unique(lipids$genotype)

PT <- as.data.frame(lipids[which(lipids$genotype == "PT"), ])
CML312 <- as.data.frame(lipids[which(lipids$genotype == "CML312"), ])
B73 <- as.data.frame(lipids[which(lipids$genotype == "B73"), ])


# Filtering for developmental stage
PT$developmental_stage <- paste0("D_", PT$developmental_stage) 
PT <- PT[,c(1,6,9:262)]
PT_data <- PT[,-2]
colnames(PT_data)[1] <- "samples"
PT_group <- PT[,c(1,2)]
colnames(PT_group)[1:2] <- c("sample","group")


CML312$developmental_stage <- paste0("D_", CML312$developmental_stage) 
CML312 <- CML312[,c(1,6,9:262)]
CML312_data <- CML312[,-2]
colnames(CML312_data)[1] <- "samples"
CML312_group <- CML312[,c(1,2)]
colnames(CML312_group)[1:2] <- c("sample","group")



B73$developmental_stage <- paste0("D_", B73$developmental_stage) 
B73 <- B73[,c(1,6,9:262)]
B73_data <- B73[,-2]
colnames(B73_data)[1] <- "samples"
B73_group <- B73[,c(1,2)]
colnames(B73_group)[1:2] <- c("sample","group")


write.csv(PT_data,"data/PT_data.csv", row.names = F)
write.csv(PT_group,"data/PT_group.csv", row.names = F)
write.csv(CML312_data,"data/CML312_data.csv", row.names = F)
write.csv(CML312_group,"data/CML312_group.csv", row.names = F)
write.csv(B73_data,"data/B73_data.csv", row.names = F)
write.csv(B73_group,"data/B73_group.csv", row.names = F)

