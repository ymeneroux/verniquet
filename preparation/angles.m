B = [
  	 0.0000  	0.0000     % ANFN 	
	 20.7725  	20.7731	   % IMJR 	
  	 42.6550  	42.6553	   % MRVC	
	 47.9228  	47.9225	   % IMJG		
	 74.1976  	74.1981	   % MTYA	
	 75.3549  	75.3553	   % EGLV	
	 81.3868  	81.3868	   % GLOB
	 81.7492  	81.7492    % PTHN
	 96.1665  	96.1649];  % EGLM
	 
 
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




