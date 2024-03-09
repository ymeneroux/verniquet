library(stringr)

DATA = read.csv("releve.dat", sep=" ", h=FALSE)

M = read.csv("eph.dat", sep=",", h=FALSE)

A = str_split_fixed(DATA$V9, ":", 3)
B = str_split_fixed(DATA$V8, "/", 3)
z = as.double(A[,1])*3600 + as.double(A[,2])*60 + as.double(A[,3]) - 18
z = z + as.double(B[,1])*86400 +  as.double(B[,2])*31*86400

x = (M[,1]+1)*31*86400 +  M[,2]*86400 + M[,3]*3600 + M[,4]*60 + M[,5]
y = M[,6]

EPH = approx(x,y,z)$y

cg1 =  EPH[3]-EPH[1]
cd1 =  EPH[4]-EPH[2]
m1 = (cg1+cd1)/2
cg2 = (DATA$V17[3]-DATA$V17[1])*180/200
cd2 = (DATA$V17[4]-DATA$V17[2])*180/200
m2 = (cg2+cd2)/2

v_az = cg1/(z[3]-z[1])

e_az = m1-m2
e_az_sec = e_az*3600
e_utc_sec = e_az/v_az

cat(paste("Erreur azimut (deg):   ", floor(1e5*e_az)*1e-5, " deg  (", floor(1e2*e_az_sec)*1e-2, "\")\n", sep=""))
cat(paste("Erreur temps UTC:   ", floor(1e3*e_utc_sec)*1e-3, " sec\n", sep=""))
