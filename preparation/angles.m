B = [
0.0000 	 0.0000 	
-24.3137 -24.3135
5.8528 	 5.8527 	
35.0475  35.0468 
36.3333  36.3326 
43.0352  43.0351 
43.4378  43.4380 
59.4562  59.4561 
    
]; 
	 
	              
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
 