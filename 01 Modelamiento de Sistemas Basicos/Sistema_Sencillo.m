%FELIPE GONZALEZ
%PARALELO 109
%PRACTICA 1
%Ejercicio 1

close all
clear
clc


F=100;
K=491.1;
B=20;
M=5.23;
V0=0;
X0=0;
VI=0;
VF=100;
ST=1;
sim('P1_ejercicio1.slx',20) 
t=sim2(:,1);
f=sim2(:,2);
x=sim2(:,3);

figure ()
hold on, grid on
plot(t,x),title('Posicion vs Tiempo'),xlabel('Tiempo'),ylabel('Posicion');

figure()
hold on, grid on
plot(t,f),title('Fuerza vs Tiempo'),xlabel('Tiempo'),ylabel('Fuerza');