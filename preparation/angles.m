B = [
    0.0000    0.0000	    % MRVC  
   14.6454   14.6465	    % CHSL_E
   52.1649   52.1661	    % GLOB  
   53.2815   53.2818	    % EGLM  
   59.1250   59.1247	    % EGLV  
 -134.0166 -134.0132];      % BAT4  
 
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




