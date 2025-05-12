N=20            %numero di spire
S=10e-4         %sezione del circuito magnetico
Lf=0.5          %lunghezza del circuito ferromagnetico
x_E=0.01        %spessore del traferro
M=5             %massa dell'ancora
P=M*9.81        %peso dell'ancora
MU_0=1.256e-6   %permeabilit� magnetica nel vuoto
MU_D=MU_0*1000  %permeabilit� magnetica differenziale

H0_E=sqrt(P/(MU_0*S))   %valore del campo magnetico al traferro nella posizione di equilibrio

A=N
B=2*H0_E
C=(Lf+2*x_E*(MU_D/MU_0))*(M/(2*S*MU_D*H0_E))

%Calcolo della corrente di equilibrio

B0_E=H0_E*MU_0
B0_F=B0_E
HF_E=B0_E/MU_D

I_E=(HF_E*Lf+2*x_E*H0_E)/N

%Definizione dei tre poli s1, s2, s3

s1=-10
s2=-10
s3=-10

%Calcolo dei guadagni del regolatore PID

Kp=-(B+C*(s1*s2+s2*s3+s3*s1))/A
Ki=(C*s1*s2*s3)/A
Kd=C*(s1+s2+s3)/A

