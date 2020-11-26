%Nombre: FELIPE GONZALEZ
%Paralelo: 104
%Sistemas de control, práctica 2: sistemas combinados
%% motor dc controlado por campo
close all
clc
clear 
Rf=281.3;
%resistencia del circuito de campo
Lf=156;
%valor del inductor del ciruito de campo 
J=0.0221;
%Inercia del eje de rotación del motor
B=0.002953;
%amortiguamiento del eje de rotación del motor
Kt=0.516;
%constante de tiempo del sistema
Td=0;
VI=200;
%Valor de entrada del voltaje 
VF=300;
%valor final del voltaje
ST=40;
%valor del paso del tiempo de la función 

sim("P2_diagramadccampoF.slx",100)

%gráficas:
%subplot de la variable de entrada y salida vs tiempo
figure(1)
subplot(1,2,1)
plot(sim1(:,1), sim1(:,2))
grid on
axis([0 inf 180 320])
title("Entrada del sistema")
xlabel("Tiempo [s]")
ylabel("Voltaje [v]")

subplot(1,2,2)
plot(sim1(:,1), sim1(:,3))
grid on
title("salida del sistema")
xlabel("Tiempo [s]")
ylabel("Velocidad angular [rad/s]")

figure(2)
plot(sim1(:,1), sim1(:,4))
grid on
title("Torque del sistema") %torque que proporciona el motor 
xlabel("Tiempo [s]")
ylabel("Torque [Nm]")

figure(3)
plot(sim1(:,1), sim1(:,5))
grid on 
title("Corriente de la armadura")
xlabel("Tiempo [s]")
ylabel("corriente [A]")

%% Motor dc controlado por armadura
close all
clc
clear 
Ra=2.581;
%resistencia del circuito de campo
La=0.0281;
%valor del inductor del ciruito de campo 
J=0.0221;
%Inercia del eje de rotación del motor
B=0.002953;
%amortiguamiento del eje de rotación del motor
Kt=0.516;
%constante de tiempo del sistema
Kb=1.25;
%proporción entre el voltaje y la velocidad angular
Td=0;
VI=140;
%Valor de entrada del voltaje 
VF=240;
%valor final del voltaje
ST=1;
%valor del paso del tiempo de la función 

sim("P2_diagramadcarmaduraF.slx",2)

%Gráficas
%subplot de la variable de entrada y salida vs tiempo
figure(1)
subplot(1,2,1)
plot(sim1(:,1), sim1(:,2))
grid on
axis([0 inf 120 260])
title("Entrada del sistema")
xlabel("Tiempo [s]")
ylabel("Voltaje [v]")

subplot(1,2,2)
plot(sim1(:,1), sim1(:,3))
grid on
title("salida del sistema")
xlabel("Tiempo [s]")
ylabel("Velocidad angular [rad/s]")

figure(2)
plot(sim1(:,1), sim1(:,4))
grid on
title("Torque del sistema")
xlabel("Tiempo [s]")
ylabel("Torque [Nm]")

figure(3)
plot(sim1(:,1), sim1(:,5))
grid on 
title("Corriente de la armadura")
xlabel("Tiempo [s]")
ylabel("corriente [A]")


%% Motor: sistema combinado
close all
clc
clear 
N1=20;
%número de dientes del primer engrane
N2=40;
%número de dientes del segundo engrane
n=N1/N2;
%relación entre los engranes
R=2.581;
%resistencia del circuito de campo
L=0.0281;
%valor del inductor del ciruito de campo 
J=0.0221;
%Inercia del eje de rotación del motor
Jl=0.125;
%inercia en el segundo eje
B=0.002953;
%amortiguamiento del eje de rotación del motor
Bl=0.01;
%amortiguamiento del segundo eje
Kt=0.516;
%constante de tiempo del sistema
Kb=1.25;
%proporción entre el voltaje y la velocidad angular
Td=0;
VI=140;
%Valor de entrada del voltaje 
VF=240;
%valor final del voltaje
ST=1;
%valor del paso del tiempo de la función 
sim("P2_diagramasistemacombinado2F",2)

%Gráficas
%subplot de la variable de entrada y salida vs tiempo
figure(1)
subplot(1,2,1)
plot(sim1(:,1), sim1(:,2))
grid on
axis([0 inf 120 260])
title("Entrada del sistema")
xlabel("Tiempo [s]")
ylabel("Voltaje [v]")

subplot(1,2,2)
plot(sim1(:,1), sim1(:,3))
grid on
title("salida del sistema")
xlabel("Tiempo [s]")
ylabel("Velocidad angular [rad/s]")

figure(2)
plot(sim1(:,1), sim1(:,4))
grid on
title("Torque del sistema")
xlabel("Tiempo [s]")
ylabel("Torque [Nm]")

figure(3)
plot(sim1(:,1), sim1(:,5))
grid on 
title("Corriente de la armadura")
xlabel("Tiempo [s]")
ylabel("corriente [A]")


