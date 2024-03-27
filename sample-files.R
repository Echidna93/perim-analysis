# thsee are what you need to change when it runs


# path should point to the directory where the images are
# i.e. /data/jackx022/perim-data/perimeter-fence-data/s/S01/A11
path = "C:\\Users\\jackx\\Desktop\\positive-images"
output.path <- "/home/jackx022/Desktop"
# number of negatve images we want to sample
num.samps <- 10


files<-list.files(path)
samp.files.indx<-sample(c(1:length(files)), num.samps, replace=FALSE)
samp.files<-files[samp.files.indx] 

sink(paste0(output.path, "/", "samplefiles.txt"))
for(i in 1:length(samp.files)){
  cat(samp.files[i])
  cat("\n")
}
sink()