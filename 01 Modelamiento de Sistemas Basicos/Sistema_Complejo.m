%FELIPE GONZALEZ
%PARALELO 109
%PRACTICA 1
%Ejercicio 2

close all
clear
clc

F=100;
B=20;
K1=491.1;
K2=50;
K3=400;
M1=5.23;
M2=2.615;
X10=0;
X20=0;
VI=0;
ST=1;
sim("P1_ejercicio2.slx",20)

figure(3)
plot(sim1(:,1),sim1(:,2))
xlabel("Tiempo[s]")
ylabel("Posición[m]")
title("Posición de la masa 1 con respecto al tiempo del sistema masa-resorte")
grid on 

figure(4)
plot(sim1(:,1),sim2(:,3))
xlabel("Tiempo[s]")
ylabel("Posición[m]")
title("Posición de la masa 2 con respecto al tiempo del sistema masa-resorte")
grid on

figure(1)
plot(sim1(:,1),sim1(:,3))
axis([0 inf -10 110]) 
xlabel("Tiempo[s]")
ylabel("Fuerza[N]")
title("Entrada de la fuerza al sistema masa-resorte")
grid on