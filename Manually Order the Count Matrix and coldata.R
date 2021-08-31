#If you have not so many samples, you can manually reorder the count matrix and coldata when necessary

#Manually type the order and assign it to the variable "order"
order <- c("Sample_MUC26944","Sample_MUC26945","Sample_MUC26951","Sample_MUC26952","Sample_MUC26953", "Sample_MUC26950", "Sample_MUC26954", 
"Sample_MUC26956", "Sample_MUC26957", "Sample_MUC26958", "Sample_MUC26946", "Sample_MUC26947", "Sample_MUC26948", "Sample_MUC26949", "Sample_MUC26955")

#Order the count matrix
cnt.filt <- cnt.filt[,order]

#Order the coldata
coldata <- coldata[order,]

#Check if they are in the same order to make sure
all(rownames(coldata) == colnames(cnt.filt))


