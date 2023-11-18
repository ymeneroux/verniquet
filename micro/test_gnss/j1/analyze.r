
file = "results_mlvl.txt"
data = read.csv(file, h=F, sep=" ")

data$V2 = data$V2 -  657716.370 
data$V3 = data$V3 - 6860676.055
data$V4 = data$V4 -     113.832 

T = c(30, 45, 60, 120, 180, 240, 300, 360)

par(mfrow=c(2,4))
for (t in 1:8){

	data2 = data[which(data$V1 == T[t]),]
	
	rmse_x = floor(sqrt(mean((data2$V2)^2))*1e5)*1e-5
	rmse_y = floor(sqrt(mean((data2$V3)^2))*1e5)*1e-5
	rmse_z = floor(sqrt(mean((data2$V4)^2))*1e5)*1e-5
	rmse = floor(sqrt(rmse_x^2 + rmse_y^2)*1e4)*1e-4

	plot(data2$V2*1e3, data2$V3*1e3, pch=16, xlim=c(-30,30), ylim=c(-30,30), xlab="E (mm)", ylab = "N (mm)")
	title(paste(T[t], " min", sep=""))
	text(-20, -28, paste("RMSE = ", rmse*1e3, " mm", sep=""))
	abline(h=0, lty=2)
	abline(v=0, lty=2)



	cat("--------------------------\r\n")
	cat(paste("RMSE X = ", rmse_x, " m\r\n", sep=""))
	cat(paste("RMSE Y = ", rmse_y, " m\r\n", sep=""))
	cat(paste("RMSE Z = ", rmse_z, " m\r\n", sep=""))
	cat(paste("RMSE   = ", rmse  , " m\r\n", sep=""))
	cat("--------------------------\r\n")

}