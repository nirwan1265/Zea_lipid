## Load data
lipids <- read.csv("data/data_dev_stages_filtered.csv")
unique(lipids$genotype)

PT <- as.data.frame(lipids[which(lipids$genotype == "PT"), ])
CML312 <- as.data.frame(lipids[which(lipids$genotype == "CML312"), ])
B73 <- as.data.frame(lipids[which(lipids$genotype == "B73"), ])
