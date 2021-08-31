#Make the count matrix a data frame
#Here cnt is the raw count matrix
countdata <- data.frame( GeneID=rownames(cnt), cnt)
countdata <- geneLength %>%
  inner_join(countdata) %>%
  mutate(Length=ifelse(Length-151+1>0,Length-151+1,1)) #If Length-ReadLength+1 is
#greater than 0, effective length is Length-ReadLength+1. Otherwise it is just 1.

tpm<-countdata %>%
  pivot_longer( cols = starts_with("Sample"), names_to = "sample", 
                values_to = "cnt") %>% 
  group_by(sample) %>%
  mutate(rpk = cnt/ (Length/1000) , libSize = sum(rpk), tpm = rpk / libSize *1e6 )
