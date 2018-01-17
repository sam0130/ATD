clear variables; clc;
%% CO2

N = 6.023*10^23;
M = 44*10^-3/N;   % kg/molecule
kb = 1.38064852*10^-23; % m2 kg s-2 K-1
h = 6.62607004*10^-34; % m2 kg / s
T = 298; % K
P = 10^5;
VbyN = kb*T/P;
ThetaVbyT_1 = 954/T;
ThetaVbyT_2 = 954/T;
ThetaVbyT_3 = 1890/T;
ThetaVbyT_4 = 3360/T;
sigma = 2;

S_trans = log( ((2*pi*M*kb*T/h/h)^1.5)*(VbyN)* exp(5/2) );

S_rot = log((T/sigma/0.561)*exp(1));

S_vib1 = (ThetaVbyT_1)/(exp(ThetaVbyT_1) - 1) - log(1-exp(-ThetaVbyT_1));
S_vib2 = (ThetaVbyT_2)/(exp(ThetaVbyT_2) - 1) - log(1-exp(-ThetaVbyT_2));
S_vib3 = (ThetaVbyT_3)/(exp(ThetaVbyT_3) - 1) - log(1-exp(-ThetaVbyT_3));
S_vib4 = (ThetaVbyT_4)/(exp(ThetaVbyT_4) - 1) - log(1-exp(-ThetaVbyT_4));

S_tot = S_trans + S_rot + S_vib1 + S_vib2 + S_vib3 + S_vib4;

S = S_tot*N*kb;


CvByNK = 3/2  + 2/2 + ((ThetaVbyT_1)^2)*(exp(ThetaVbyT_1)/(exp(ThetaVbyT_1)-1)^2) +  ...
                    ((ThetaVbyT_2)^2)*(exp(ThetaVbyT_2)/(exp(ThetaVbyT_2)-1)^2) + ...
                    ((ThetaVbyT_3)^2)*(exp(ThetaVbyT_3)/(exp(ThetaVbyT_3)-1)^2) + ...
                    ((ThetaVbyT_4)^2)*(exp(ThetaVbyT_4)/(exp(ThetaVbyT_4)-1)^2);
                

Cv =   CvByNK * N * kb;              

%% CH4 (make new program)

N = 6.023*10^23;
M = 16*10^-3/N;   % kg/molecule
kb = 1.38064852*10^-23; % m2 kg s-2 K-1
h = 6.62607004*10^-34; % m2 kg / s
T = 298; % K
P = 10^5;
VbyN = kb*T/P;
Theta_r = 7.54;
ThetaVbyT_1 = 1870/T;
ThetaVbyT_2 = 1870/T;
ThetaVbyT_3 = 1870/T;
ThetaVbyT_4 = 2180/T;
ThetaVbyT_5 = 2180/T;
ThetaVbyT_6 = 4170/T;
ThetaVbyT_7 = 4320/T;
ThetaVbyT_8 = 4320/T;
ThetaVbyT_9 = 4320/T;
sigma = 12;

S_trans = log( ((2*pi*M*kb*T/h/h)^1.5)*(VbyN)* exp(5/2) );
S_rot = log( exp(1.5)*(pi^0.5/sigma)* (T/Theta_r)^1.5 );

S_vib1 = (ThetaVbyT_1)/(exp(ThetaVbyT_1) - 1) - log(1-exp(-ThetaVbyT_1));
S_vib2 = (ThetaVbyT_2)/(exp(ThetaVbyT_2) - 1) - log(1-exp(-ThetaVbyT_2));
S_vib3 = (ThetaVbyT_3)/(exp(ThetaVbyT_3) - 1) - log(1-exp(-ThetaVbyT_3));
S_vib4 = (ThetaVbyT_4)/(exp(ThetaVbyT_4) - 1) - log(1-exp(-ThetaVbyT_4));
S_vib5 = (ThetaVbyT_5)/(exp(ThetaVbyT_5) - 1) - log(1-exp(-ThetaVbyT_5));
S_vib6 = (ThetaVbyT_6)/(exp(ThetaVbyT_6) - 1) - log(1-exp(-ThetaVbyT_6));
S_vib7 = (ThetaVbyT_7)/(exp(ThetaVbyT_7) - 1) - log(1-exp(-ThetaVbyT_7));
S_vib8 = (ThetaVbyT_8)/(exp(ThetaVbyT_8) - 1) - log(1-exp(-ThetaVbyT_8));
S_vib9 = (ThetaVbyT_9)/(exp(ThetaVbyT_9) - 1) - log(1-exp(-ThetaVbyT_9));


S_tot = S_trans + S_rot + S_vib1 + S_vib2 + S_vib3 + S_vib4 + S_vib5 + ...
        S_vib6 + S_vib7 + S_vib8 + S_vib9;

S = S_tot*N*kb;


CvByNK = 3/2  + 3/2 + ((ThetaVbyT_1)^2)*(exp(ThetaVbyT_1)/(exp(ThetaVbyT_1)-1)^2) +  ...
                    ((ThetaVbyT_2)^2)*(exp(ThetaVbyT_2)/(exp(ThetaVbyT_2)-1)^2) + ...
                    ((ThetaVbyT_3)^2)*(exp(ThetaVbyT_3)/(exp(ThetaVbyT_3)-1)^2) + ...
                    ((ThetaVbyT_4)^2)*(exp(ThetaVbyT_4)/(exp(ThetaVbyT_4)-1)^2) + ...
                    ((ThetaVbyT_5)^2)*(exp(ThetaVbyT_5)/(exp(ThetaVbyT_5)-1)^2) + ...
                    ((ThetaVbyT_6)^2)*(exp(ThetaVbyT_6)/(exp(ThetaVbyT_6)-1)^2)+ ...
                    ((ThetaVbyT_7)^2)*(exp(ThetaVbyT_7)/(exp(ThetaVbyT_7)-1)^2) + ...
                    ((ThetaVbyT_8)^2)*(exp(ThetaVbyT_8)/(exp(ThetaVbyT_8)-1)^2) + ...
                    ((ThetaVbyT_9)^2)*(exp(ThetaVbyT_9)/(exp(ThetaVbyT_9)-1)^2) ;
                    
                

Cv =   CvByNK * N * kb;      

