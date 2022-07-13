clc
clear all
%%control en espacio de estados discreto

L=0.00000275;
B=[0;0;1/L];
W=9281.45;
a=0.5435;
T=2.3;%tiempo de muestreo
G=[1+156.76*exp(-a*T)*sin(W*T) 0.01688-0.01688*exp(-a*T)*(cos(W*T)+0.1128*sin(W*T)) 0.00009852*(1-exp(-a*T)*(cos(W*T)+0.000058999*sin(W*T)));...
    0 exp(-a*T)*(cos(W*T)+156.76*sin(W*T)) 0.9144*exp(-a*T)*sin(W*T);...
    0 -1.0735*exp(-a*T)*sin(W*T) exp(-a*T)*(cos(W*T)+5.8558e-05*sin(W*T))]

H=[35.8219*(T-(exp(-a*T)*(W*sin(W*T)-a*cos(W*T)+a*exp(a*T)-5.8999e-05*(-a*sin(W*T)-W*cos(W*T)+W*exp(a*T)))/(a^2+W^2)));...
    332475.84*(exp(-a*T)*(exp(a*T)*W-a*sin(W*T)-W*cos(W*T))/(a^2+W^2));...
    3.636e+05*(exp(-a*T)*((W*sin(W*T)-a*cos(W*T)+a*exp(a*T)+5.8558e-05*(W*exp(a*T)-a*sin(W*T)-W*cos(W*T)))))/(a^2+W^2)]

%%Termina discretización en espacio de estados
%G y H son las matrices que me muestran el espacio de estados discretizado
%donde este será G*X#(kT)y H*u(kT) y C en espacio de estados discretizado
%es la misma matriz 
    
C=[1 0 0];
ts=0.04; 
Mp=0.16;
cita=sqrt((log(Mp))^2/((log(Mp))^2+pi^2));%Condiciones para el control
wn=4/(ts*cita);
z=exp(-cita*wn*T)*exp(j*wn*sqrt(1-cita^2)*T);
za=[z conj(z) -1e-90]

 p=poly(za);
%coef=conv([1 -za(1)],[1 -za(2)])%conv=convolución conjugado
M=[H G*H G^2*H]
N=[C; C*G; C*G^2]
det(M)
det(N)
phi=G^3+p(2)*G^2+p(3)*G+p(4)*eye(3)
k=[0 0 1]*inv(M)*phi
Gnew=G-H*k;
[numd dend]=ss2tf(Gnew,H,C,0)
Gd=tf(numd,dend,T)
xin=ones(1,50);
y=filter(numd,dend,xin);%mi salida con una entrada escalón por eso es ones
K=1:50;
figure(1)
stem(T*K,y,'-r')%grafica el tiempo discreto y mi salida
% m=2*pi/(wn*T*sqrt(1-cita^2))%para saber cuantas muestras me dan un ciclo de oscilación 


