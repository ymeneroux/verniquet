B = [
-24.3132 	111.1674 
 36.3329 	171.8147 
 43.0350 	178.5160 
 43.4381 	178.9199 
 59.4560 	194.9389 ];


			  
B = B*200/180;



N = size(B, 2);
B(:,2:N) = B(:,2:N) - arg(mean(exp((B(:,2:N)-B(:,1))*pi*i/200),1))*200/pi;  B = mod(B, 400);
M = mod(arg(mean(exp(B*pi*i/200), 2))*200/pi, 400);  V = B-M; M = mod(M-M(1), 400);
V(V > 100) = V(V > 100) - 400;
V(V < -100) = V(V < -100) + 400;

STD_PT = sqrt(mean(V.^2, 1));
STD_PP = sqrt(mean(V.^2, 2))/sqrt(N);


% Moyenne VITRY 1/2
%M(2) = (M(2)+M(3))/2; 
%STD_PP(2) = sqrt(1/(1/STD_PP(2)^2 + 1/STD_PP(3)^2));
%M = [M(1:2); M(4:end)];STD_PP= [STD_PP(1:2); STD_PP(4:end)];
 