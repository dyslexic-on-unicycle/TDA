library('rgl')
library('TDA')
#install.packages('abind')
library('abind')

shrinking_loop<- c()

for (i in seq(2,20,by=4)){
  shrinking_loop<-abind(shrinking_loop,circleUnif(1000,i),along = 3)
}



for (circ in 1:5){
  if (circ ==1 ){plot(shrinking_loop[,,circ],xlim=c(-20,20),ylim=c(-10,10))}
  else {points(shrinking_loop[,,circ],col=(50*circ))}
  
}

t_1<-ripsDiag(shrinking_loop[,,1],1,3, function),dist='euclidean',library='Dionysus')


View(shrinking_loop)
