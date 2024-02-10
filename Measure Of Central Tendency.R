cat('\014')
data<-read.csv("riya.csv")
print("-----------------------------------------------------")
print(data)
print("-----------------------------------------------------")
p<-data$physics
c<-data$chemistry
m<-data$maths
b<-data$biology
mp<-mean(p)
print(paste("mean of physics marks is : ",mp))
mid<-median(c)
print(paste("median of chemistry marks is :",mid))
quar<-quantile(p)
print("quartiles of physics marks is : ")
print(quar)
R<-range(m)
print("Range of maths marks :")
print(R)
iqr<-IQR(c)
print(paste("Inter quartile range of chemistry marks is :",iqr))
biology_marks<-b
hist(biology_marks)
B<-table(b)
x<-names(B)
x<-as.numeric(x)
y<-as.numeric(B)
z<-rbind(x,y)
max_val<-max(y)
d<-dim(z)
print("mode of biology marks is:")
  for (i in 1:d[2] ) {
     if(z[2,i]==max_val){
    print(paste(z[1,i]))
  }
  
}