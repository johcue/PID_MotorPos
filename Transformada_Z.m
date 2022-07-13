%%Transformada Z
help ztrans
syms z k a w %Simbolicos
f=a^k;
ztrans(f)
ztrans(sin(w*k)) 
ztrans(sin(w*k),k,z)%Definimos que de k llevar a z
ztrans(exp(-a*k)*sin(w*k), k, z)
pretty(ans) %Para que se vea bonito, muestre lo que la profesora puso 
iztrans(ans,z,k) %La inverza, de z llevar a k Utiliza el metodo de la integral inversa
%Resolver una eq en dif
x(1)=1;
x(2)=1;
for i=3:10
    x(i)=x(i-1)+x(i-2);
end
stem(x) %Forma de las graficas discretas
num= [1 0 0];
den=[1 -1 -1]; 
xin=zeros(1,10); %xin señal de entrada
xin(1)=1; %Delta en discretos
y=filter(num,den,xin); %Entrega el resultado de la funcion
n=0:9;
y2=((1+sqrt(5))/2)*(-(1+sqrt(5))/(2*sqrt(5))).^n-(((1-sqrt(5))/(2*sqrt(5)))*((1+sqrt(5))/2).^n);
stem(x)
pause(2)
hold on
stem(y)
pause(2)
stem(y2)
%Funcion de transferencia
Gd=tf(num,den,0.2) %0.2 tiempo de muestreo, funcion discreta
Gc=(1, [1 3 2]) 
Gd2=c2d(Gc,Gc,0.2, 'zon')