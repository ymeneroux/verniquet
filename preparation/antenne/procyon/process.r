library(stringr)


fermeture = 199.99   # Fermeture cercle droit

DATA = read.csv("releve.dat", sep=" ", h=FALSE)

M = read.csv("eph.dat", sep=",", h=FALSE)

A = str_split_fixed(DATA$V9, ":", 3)
B = str_split_fixed(DATA$V8, "/", 3)
z = as.double(A[,1])*3600 + as.double(A[,2])*60 + as.double(A[,3]) - 18
z = z + as.double(B[,1])*86400 +  as.double(B[,2])*31*86400

x = (M[,1]+1)*31*86400 +  M[,2]*86400 + M[,3]*3600 + M[,4]*60 + M[,5]
y = M[,6]

DATA["eph"] = approx(x,y,z)$y



CG = DATA[which(DATA$V18 == "CG"),]
CD = DATA[which(DATA$V18 == "CD"),]

# Fermeture 
CD$V17 = CD$V17 + (200-fermeture) 

cg = CG$eph - CG$V17*180/200
cd = CD$eph - CD$V17*180/200 + 180

az = (cg+cd)/2

AZ = data.frame(az)

plot(AZ$az, type='l', col='blue', xlab="seq", ylab="Antenna azimuth (deg)", ylim=c(183.80, 183.84))

abline(h=mean(AZ$az), lty=2)
abline(h=mean(AZ$az) + sd(AZ$az), lty=3)
abline(h=mean(AZ$az) - sd(AZ$az), lty=3)

text(2.5,183.84, paste("Mean: ", floor(1000*mean(AZ$az))/1000, " deg", sep=""))
text(2.5,183.838, paste("Std: ", floor(1000*sd(AZ$az))/1000, " deg", sep=""))

