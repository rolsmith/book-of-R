##%######################################################%##
#                                                          #
####          THE BOOK OF R #Worked examples -          ####
####        Roland Smith #3 February 2021 - ???         ####
#                                                          #
##%######################################################%##

#Exercise 2.1 ----
#2.1a
a <- (2.3)
a
((6*a)+42)/3^(4.2-3.62)

#2.1b
(-4)^2-2

#2.1c
sqrt(.5*((25.2+15+16.44+15.3+18.6)/5))

#2.1d
log(x=0.3)

#2.1e
exp(x=-1.203973)

#2.1f
-0.00000000423546322

#Exercise 2.2 ----
#2.2a
a <- (3^2)*(4^(1/8))
#2.2b
a <- (a/2.33)
a
#2.2c
c <- -8.2*10^-13
c
#2.2d
a*c

##%######################################################%##
#                                                          #
####                 Exercise 2.3                  ####
#                                                          #
##%######################################################%##

#2.3a
#Create and store a sequence of values from 5 to −11 that progresses in steps of 0.3.

seq(from=5, to=-11, by=-0.3)
a=seq(from=5, to=-11, by=-0.3)
a

#2.3b
a <- sort(a,decreasing=FALSE )
a

#2.3c
#Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times
#and store the result. Display the result sorted from largest to smallest.

c <- (c(-1,3,-5,7,-9))
c
c <- (rep(x=c,times=2, each=10))
c
sort(c, decreasing=TRUE)

#2.3d
#Create and store a vector that contains, in any configuration, the following:
#2.3d.i A sequence of integers from 6 to 12 (inclusive)
#2.3d.ii A threefold repetition of the value 5.3
#2.3d.iii The number −3 
#2.3.iv A sequence of nine values starting at 102
# and ending at the number that is the total length of the vector
# created in (c)

Q23di <- seq(from=6, to=12)
Q23di
Q23dii <- rep(x=5.3, times=3)
Q23dii
Q23diii <- -3
Q23diii
length(c)

Q23div <- seq(from=102, to=length(c), length.out=9)
Q23div
Q23d <- c(Q23di, Q23dii, Q23diii, Q23div)
Q23d
length(Q23d)

##%######################################################%##
#                                                          #
####                 Exercise 2.4 ####
#                                                          #
##%######################################################%##

#2.4a - Create and store a vector that contains the following, in this order:
#– A sequence of length 5 from 3 to 6 (inclusive) 
#– A twofold repetition of the vector c(2,-5.1,-33)
#- The value (7/42)+2

Q24a <- c((seq(from=3, to=6, length.out=5)),(rep(x=c(2,-5.1,-33),times=2)),((7/42)+2))
Q24a
#2.4b
Q24b <-Q24a[11:12]
Q24b
#2.4c
Q24c <-Q24a[-(1)][-(12)]
Q24c
Q24c <-Q24c[-(11)]
Q24c

##%######################################################%##
#                                                          #
####                    Exercise 2.5                    ####
#                                                          #
##%######################################################%##

#2.5a Convert the vector c(2,0.5,1,2,0.5,1,2,0.5,1)
#to a vector of only 1s, using a vector of length 3
Q25 <- c(2,0.5,1,2,0.5,1,2,0.5,1)
Q25
Q25a <- Q25*c(0.5,2,1)
Q25a
#2.5b
faren <- c(45,77,20,19,101,120,212)
faren
celsius <-c((5/9)*(faren-32))
celsius
rbind(1:3,8:10)
rbind
c(2,0.5,1,2,0.5,1,2,0.5,1)
cbind(c(1,4),c(2,5),c(3,6))

#3.1 ----
Q31 <- matrix(data=c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow=4, ncol=2, byrow=TRUE)
Q31
Q31b <- Q31 [-4,]
dim(Q31b)
Q31c <-sort(Q31[,2],decreasing=FALSE)
Q31c
Q31c2 <- Q31
Q31c2
Q31c2[,2] <- Q31c
Q31c2
Q31d <- matrix(Q31c2[-4, -1])
Q31d
Q31e <- matrix(Q31c2[3:4,],nrow=2, ncol=2)
Q31e
Q31f <- 0.5^(diag(Q31e))
Q31f
Q31f2 <- Q31c2
Q31f2 [c(4,1),2:1] <- Q31f
Q31f2

##%######################################################%##
#                                                          #
####       Chap 3.3 Matrix Operations and Algebra       ####
#                                                          #
##%######################################################%##

A <- rbind(c(2,5,2), c(6,1,4))
A
t(A)
t(t(A))
A<-(diag(x=3))
A
A <- rbind(c(2,5,2), c(6,1,4))
A
A
A2 <- 2*(A)
A2
a <- 2
a*A
B <- rbind (c(-2,8.1),c(3,8.2), c(6,19.8))
B
t(A)
t(A)-B
B <- cbind(c(3,-1,1), c(-3,1,5))
B
A
dim(A)
dim(B)
A%*%B
B%*%A
A^1
#3.3.6 Matrix Inversion ----
A <- matrix (data=c(3,4,1,2),nrow=2, ncol=2)
A
solve(A)
A%*%solve(A)

##%######################################################%##
#                                                          #
####                    Exercise 3.2                    ####
#                                                          #
##%######################################################%##

#3.2.a ----
ex32a <- (2/7)*(matrix(data=c(1,2,7,2,4,6), nrow=3)-(matrix(data=c(10,30,50,20,40,60), nrow=3)))
ex32a

#3.2.b ----      
A=matrix(data=c(1,2,7),ncol=1)
A
B=matrix(data=c(3,4,8))
B
#i - not possible

#ii
t(A)
t(A)%*%(B)

#iii
t(B)
A%*%t(A)
(t(B))%*%(A%*%t(A))

#iv - not possible

#v
(((B%*%t(B))+(A%*%t(A)))-(100/3))^-1

#3.2.c ----  
A=rbind(c(2,0,0,0),c(0,3,0,0),c(0,0,5,0),c(0,0,0,-1))
A
A^1
solve(A)
solve(A)%*%A-(diag(4))

##%######################################################%##
#                                                          #
####       Chap 3.3 Multidimensional Arrays      ####
#                                                          #
##%######################################################%##

AR <- array(data=1:24,dim=c(3,4,2))
AR
BR <- array(data=rep(1:24,times=3),dim=c(3,4,2,3))
BR
AR[2,,2]
AR[1,,]
BR[2,1,1,3]
BR[1,,,1]
BR[,,2,]
BR
BR[3:2,4,,]
BR
BR[2,,1,]

##%######################################################%##
#                                                          #
####                    Exercise 3.3                    ####
#                                                          #
##%######################################################%##

#3.3a
?seq
?array
A<-array(data=seq(from=4.8,to=1,length.out=(48)),dim=c(4,2,6))
A

#3.3b
B <- A[c(4,1),2,]
B

#3.3c
C <- array(data=rep(x=B[2,],times=4),dim=c(2,2,2,3))
C

#3.3c
D <-(A[,,-6])
D

#3.4d
#(e)
D [c(2,4),2,c(1,3,5)] <- -99
D

##%######################################################%##
#                                                          #
####            Chap. 4 - Non-numeric Values            ####
#                                                          #
##%######################################################%##

# Chap. 4.1.1 TRUE or FALSE ----

foo <- TRUE
foo
bar <- F
bar

baz <- c(T,F,F,F,T,F,T,T,T,F,T,F)
baz
length (x=baz)

qux <- matrix(data=baz, nrow=3, ncol=4, byrow=foo)
qux

# Chap. 4.1.2 A Logical Outcome: Relational Operators ----
foo <- c(3,2,1,4,1,2,1,-1,0,3)
bar <- c(4,1,2,1,1,0,0,3,0,4)
length(x=foo)==length(x=bar)
foo==bar
foo<bar
foo<=bar
foo<=(bar+10)

foo.mat <- matrix (foo, nrow=5, ncol=2)
foo.mat

bar.mat <- matrix (bar, nrow=5, ncol=2)
bar.mat

foo.mat<=bar.mat

qux <- foo==bar
qux
any(qux)
all(qux)

##%######################################################%##
#                                                          #
####                    Exercise 4.1                    ####
#                                                          #
##%######################################################%##

#4.1a ----

Q41a <- c(6,9,7,3,6,7,9,6,3,6,6,7,1,9,1) 
Q41a

Q41ai <- Q41a==6
Q41ai

Q41aii <- Q41a>=6
Q41aii

Q41aiii <- Q41a<(6+2)
Q41aiii

Q41iv <- Q41a!=6
Q41iv

#4.1b ----
Q41b <- Q41a[c(-1:-3)]
Q41b
Q41bA<- array(data=Q41b, dim=c(2,2,3))
Q41bA

Q41bAi <- Q41bA<=((6/2)+4)              
Q41bAi

Q41bAii <- (Q41bA+2)<=((6/2)+4)
Q41bAii

#4.1c ----

Q41c <- diag(10)
Q41c
Q41c <- Q41c==0
Q41c

#4.1d ----

any(Q41bAi)
all(Q41bAi)

any(Q41bAii)
all(Q41bAii)

#4.1e ----
any(diag(diag(10)==0))

# Chap. 4.1.3 Multiple Comparisons: Logical Operators ----
FALSE||((T&&TRUE)||FALSE)
!TRUE&&TRUE
(T&&(TRUE||F))&&FALSE
(6<4)||3!=1

foo <- c(T,F,F,F,T,F,T,T,T,F,T,F)
foo

bar <- c(F,T,F,T,F,F,F,F,T,T,T,T)
bar

foo&bar
foo|bar

foo&&bar
foo||bar

##%######################################################%##
#                                                          #
####                    Exercise 4.2                    ####
#                                                          #
##%######################################################%##

#Exercise 4.2a ----
foo <- c(7,1,7,10,5,9,10,3,10,8)
foo
Q42a <-(foo>5)|(foo==2)
Q42a

#Exercise 4.2b ----
bar <- c(8,8,4,4,5,1,5,6,6,8)
bar
Q42b <- (bar<=6)&(bar!=4)
Q42b

#Exercise 4.2c ----
Q42a&Q42b

#Exercise 4.2d ----
baz <- foo+bar
baz

Q42di <- (baz>=14)&(baz!=15)
Q42di

Q42dii <- ((baz/foo)>4)|((baz/foo)<=2)
Q42dii

#Exercise 4.2e ----
(foo>5)||(foo==2)
(bar<=6)&&(bar!=4)
Q42a&&Q42b
(baz>=14)&&(baz!=15)
((baz/foo)>4)||((baz/foo)<=2)

# Chap. 4.1.4 Logicals are numbers! ----
TRUE+TRUE
FALSE-TRUE
T+T+F+T+F+F+T

# Chap. 4.1.5 Logical Subsetting and Extraction ----

myvec <- c(5,-2.3,4,4,4,6,8,10,40221,-8)
myvec
myvec[c(F,T,F,F,F,F,F,F,F,T)]
myvec<0
myvec[myvec<0]
myvec[(myvec>0)&(myvec<1000)]
myvec[myvec<0] <- -200
myvec
which(x=c(T,F,F,T,T))
which(x=myvec<0)
myvec[-which(x=myvec<0)]
A <- matrix(c(0.3,4.5,55.3,91,0.1,105.5,-4.2,8.2,27.9),nrow=3,ncol=3)
A
A[c(T,F,F),c(F,T,T)]
A<1
A[A<1] <- -7
A
A>25
which (x=A>25)
which (x=A>25,arr.ind=T)

##%######################################################%##
#                                                          #
####                 Exercise 4.3                 ####
#                                                          #
##%######################################################%##

#Exercise 4.3a ----

foo <- c(7,5,6,1,2,10,8,3,8,2)
foo
#(i)
bar <- foo[foo>=5]
bar
#(ii)
foo[-which(x=foo>=5)]

#Exercise 4.3b ----
baz <- matrix(data=bar,nrow=2,ncol=3,byrow=TRUE)
baz
#i
baz[baz==8]<-baz[1,2]^2
baz
#ii
all(baz<=25)&(baz>4)

#Exercise 4.3c ----
qux <- c(10,5,1,4,7,4,3,3,1,3,4,3,1,7,8,3,7,3)
qux
#(i)
which (x=(qux==3|qux==4),arr.ind=T)
#(ii)
qux[qux<3|qux>=7]<- 100
qux

#Exercise 4.3d ----
foo
foo[c(F,T)]
foo[c(0,1)]

# Chap. 4.2 Characters ---
# Chap 4.2.1 Creating a string ----
foo <- "This is a character string!"
foo
length(x=foo)
nchar(x=foo)
"alpha"=="alpha"
"alpha"!="beta"
c("alpha","beta","gamma")=="beta"
qux <- c("awesome","R","is")
qux
length(x=qux)
cat(qux[2],qux[3],"totally", qux[1],"!")
paste(qux[2],qux[3],"totally", qux[1],"!")

# Chap 4.2.4 Substrings and Matching ----
foo <-"This is a character string!"
foo
substr(x=foo,start=21,stop=27)
substr(x=foo,start=1,stop=4) <- "Here"
foo

##%######################################################%##
#                                                          #
####                      Exercise 4.4                       ####
#                                                          #
##%######################################################%##

#Exercise 4.4.a ----
cat("The quick brown fox \n \t jumped over \n \t \t the lazy dogs")

#Exercise 4.4.b ----
num1 <- 4
num1
num2 <- 0.75
num2

Q44b <- paste("The result of multiplying",num1,"by",num2,"is",num1*num2)
Q44b

num2 <- 6
Q44b

#Exercise 4.4.c ----
sub(pattern="tdavies",replacement="rsmith","/Users/tdavies/Documents/RBook/")

#Exercise 4.4.d ----
bar <- "How much wood could a woodchuck chuck"
bar
#(i)
bar2 <- paste(bar,"if a woodchuck could chuck wood")
bar2
bar3 <- gsub(pattern="wood",replacement="metal",x=bar2)
bar3

#Exercise 4.4.e ----
elgar <- "Two 6-packs for $12.99"
elgar
substr(x=elgar,start=5,stop=10)
substr(x=elgar,start=18,stop=22) <- "10.99"
elgar

##%######################################################%##
#                                                          #
####                  Chap 4.3 Factors                  ####
#                                                          #
##%######################################################%##

#Chap. 4.3.1 Identifying Categories ----
firstname <- c("Liz","Jolene","Susan","Boris","Rochelle","Tim","Simon","Amy")
firstname

sex.num <- c(0,0,0,1,0,1,1,0)
sex.num
sex.char <- c("female","female","female","male","female","male","male","female")
sex.char=="male"

sex.num.fac <- factor(x=sex.num)
sex.num.fac
sex.char.fac <- factor(x=sex.char)
sex.char.fac

levels(x=sex.num.fac)
levels(x=sex.char.fac)

levels(x=sex.num.fac) <- c("1","2")
levels(x=sex.num.fac)
sex.num.fac

firstname[sex.char.fac=="male"]

mob <- c("Apr","Jan","Dec","Sep","Nov","Jul","Jul","Jun")
mob

length(x=firstname)
chap4.3 <- matrix(data=c(firstname,sex.char,mob),nrow=8)
chap4.3

#Add to gitbhub
#Check push to github
