%verificación
% num=[10];
% den=[1 3 2 0];
% G=tf(num,den);
% %margin(G)
% %[Kg,Mp,wg,wp]=margin(G);%todo esto es para bode
% %[A B C D]=tf2ss(num,den)
% %step(A,B,C,D)
% figure (3)
% step(feedback(G,1))
% title('holohorgo')
% % A(2,2)=2;
% % [num2,den2]=ss2tf(A,B,C,D)
% % G2=tf(num2,den2)
% % roots(den)
% Glc=feedback(G,1)
% % title('bitch')
% % hold on
% % figure (3)
% step(Glc)
% % title('holohorgo')
% %axis([0,10,0,2])
% stepinfo(Glc,1)
num=[0.0274];
den=[8.8781E-12 1.2914E-5 1.6479E-4 0];
G=tf(num,den);
Glc1=feedback(G,1);
figure (1)

step(Glc1)
legend('Planta Lazo Cerrado')
%%diseño
Kp=0.6*40600.59;
Ti=0.5*6.7696E-4;
Td=0.125*6.7696E-4;
Kd=Td*Kp;
Ki=Kp/Ti;
g=tf(0.0274,[8.8781E-12 1.2914E-5 1.6479E-4 0]);
Gc=tf([Kd Kp Ki],[1 0]);
glc=feedback(g*Gc,1)
figure(2)
step(glc)
hold on
%step(feedback(g,1))
%axis([0,10,0,2])
% step(Glc)
stepinfo(glc,1)
legend('Primer Controlador')
% title('holi')
% hold on


%%sintonización
Kpm=25*Kp;
Tim=1*Ti;
Tdm=0.65*Td;
Kdm=Tdm*Kpm;
Kim=Kpm/Tim;
gm=tf(0.0274,[8.8781E-12 1.2914E-5 1.6479E-4 0]);
Gcm=tf([Kdm Kpm Kim],[1 0]);
sintonizacion=feedback(gm*Gcm,1)
step(sintonizacion)
% stepinfo(Glcm)
stepinfo(sintonizacion,1)
% hold on
