clc 
clear all
%Mi matrices, para comprobar si es observable y el valor de k 

num=0.0274;
den=[8.8781e-12 1.2914e-5 7.6479e-4 0];
G=tf(num,den)


J=3.2284e-6
b=3.5077e-6
L=2.75e-6
R=4
k=0.0274

A=[0 1 0;0 -b/J k/J;0 -k/L -R/L]
B=[0;0;1/L]

ts=0.04;
Mp=0.16;
cita=sqrt((log(Mp))^2/((log(Mp))^2+pi^2));%Condiciones para el control
wn=4/(ts*cita);

Ps=roots([1 2*cita*wn wn^2]);
P=[Ps(1) Ps(2) -10000000];
%P=[-133.34+220.82i   -133.34-220.82i -10000000]

K=acker(A,B,P)

Anew=A-B*K
C=[1 0 0]
[numnew,dennew]=ss2tf(Anew,B,C,0) %%de variable de estados a trans
Gnew=tf(numnew,dennew)

figure(1)
step(feedback(G,100),'-r')
title('Planta sin controlar')

figure(2)
step(feedback(Gnew,1),'-g')
title('Planta controlada')
