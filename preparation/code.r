data = read.csv("mesures.txt", sep=" ", h=F)

angles_1_cg = data$V2  + data$V3/60  + data$V4 /3600; angles_1_cd = data$V5  + data$V6/60  + data$V7 /3600
angles_2_cg = data$V8  + data$V9/60  + data$V10/3600; angles_2_cd = data$V11 + data$V12/60 + data$V13/3600
angles_3_cg = data$V14 + data$V15/60 + data$V16/3600; angles_3_cd = data$V17 + data$V18/60 + data$V19/3600
angles_4_cg = data$V20 + data$V21/60 + data$V22/3600; angles_4_cd = data$V23 + data$V24/60 + data$V25/3600

a1cg = angles_1_cg - angles_1_cg[5]; a1cd = angles_1_cd - angles_1_cd[5]
a2cg = angles_2_cg - angles_2_cg[5]; a2cd = angles_2_cd - angles_2_cd[5]
a3cg = angles_3_cg - angles_3_cg[5]; a3cd = angles_3_cd - angles_3_cd[5]
a4cg = angles_4_cg - angles_4_cg[5]; a4cd = angles_4_cd - angles_4_cd[5]

a1 = (a1cg + a1cd)/2
a2 = (a2cg + a2cd)/2
a3 = (a3cg + a3cd)/2
a4 = (a4cg + a4cd)/2

n = 1
x = c(a1[n], a2[n], a3[n], a4[n])


deg2dms = function(x){
x[which(x<0)] = x[which(x<0)] + 360
d = floor(x)
m = floor((x-d)*60)
s = floor((x-d-m/60)*3600)
return (data.frame(d,m,s))
}