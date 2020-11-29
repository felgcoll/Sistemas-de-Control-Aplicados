%Sistemas de control
%Práctica 3: Analisis transiente de sistemas dinamicos
%Nombre: Javier Andres Polit Bravo
%Paralelo: 109
%% Ejercicio 1
close all
clc
clear 
%Valores de ganancia K
K1=0.2;
K2=0.4;
K3=1;
K4=5;
K5=10;
%Constantes del motor
J=2;
b=5;
%Funciones de transferencia para cada K
F1=tf(K1,[J b K1]);
F2=tf(K2,[J b K2]);
F3=tf(K3,[J b K3]);
F4=tf(K4,[J b K4]);
F5=tf(K5,[J b K5]);
damp(F5)%Comando para obtener z, polos y wn
%Respuesta en el tiempo
step(F1,F2,F3,F4,F5)
grid on
legend('K=0.2','K=0.4','K=1','K=5','K=10')
title("Respuesta en el tiempo")
%% Ejercicio 2.1
close all
clc
clear
%Constantes tao
tao1=0.1;
tao2=0.5;
tao3=1;
tao4=5;
tao5=10;
%Funciones de transferencia para cada tao
F1=tf(5,[tao1 1]);
F2=tf(5,[tao2 1]);
F3=tf(5,[tao3 1]);
F4=tf(5,[tao4 1]);
F5=tf(5,[tao5 1]);
damp(F5)%Comando para obtener z, polos y wn
%Respuesta en el tiempo
subplot(1,2,1)
step(F1,F2,F3,F4,F5)
grid on
title('Respuesta en el timepo')
subplot(1,2,2)
%Plano s
pzmap(F1,F2,F3,F4,F5)
grid on
legend('tao=0.1','tao=0.5','tao=1','tao=5','tao=10')
title('Plano s')

%% Ejercicio 2.2
close all
clc
clear
%Ganancia K
K1=1;
K2=2;
K3=3;
K4=4;
K5=5;
%Funciones de transferencia para cada valor de K
F1=tf(K1,[5 1]);
F2=tf(K2,[5 1]);
F3=tf(K3,[5 1]);
F4=tf(K4,[5 1]);
F5=tf(K5,[5 1]);
%Grafica de respuesta a entrada escalon
subplot(1,2,1)
step(F1,F2,F3,F4,F5)
grid on
title('Respuesta en el timepo')
%Plano s
subplot(1,2,2)
pzmap(F1,F2,F3,F4,F5)
grid on
legend('K=1','K=2','K=3','K=4','K=5')
title('Plano s')

%% Ejercicio 3.1
close all
clc
clear
%Constante z
z1=0.2;
z2=0.4;
z3=0.6;
z4=0.8;
z5=1;
%Funciones de transferencian para cada z
F1=tf(2*2^2,[1 2*z1*2 2^2]);
F2=tf(2*2^2,[1 2*z2*2 2^2]);
F3=tf(2*2^2,[1 2*z3*2 2^2]);
F4=tf(2*2^2,[1 2*z4*2 2^2]);
F5=tf(2*2^2,[1 2*z5*2 2^2]);
damp(F5)%Comando para obtener z, polos y wn
%Grafica de respuesta a entrada escalon
subplot(1,2,1)
step(F1,F2,F3,F4,F5)
grid on
title('Respuesta a entrada escalon')
%Plano s
subplot(1,2,2)
pzmap(F1,F2,F3,F4,F5)
grid on
legend('z=0.2','z=0.4','z=0.6','z=0.8','z=1')
title('Plano s')

%% Ejercicio 3.2
close all
clc
clear
%Frecuencia de oscilacion
wn1=0.5;
wn2=1;
wn3=2;
wn4=4;
wn5=8;
%Funciones de transferencia para distintos valores de wn
F1=tf(5*wn1^2,[1 2*0.5*wn1 wn1^2]);
F2=tf(5*wn2^2,[1 2*0.5*wn2 wn2^2]);
F3=tf(5*wn3^2,[1 2*0.5*wn3 wn3^2]);
F4=tf(5*wn4^2,[1 2*0.5*wn4 wn4^2]);
F5=tf(5*wn5^2,[1 2*0.5*wn5 wn5^2]);
%Grafica de respuesta a entrada escalon
subplot(1,2,1)
step(F1,F2,F3,F4,F5)
grid on
title('Respuesta a entrada escalon')
%Plano s
subplot(1,2,2)
pzmap(F1,F2,F3,F4,F5)
grid on
title('Plano s')
legend('wn=0.5','wn=1','wn=2','wn=4','wn=8')
%% Ejercicio 3.3
close all
clc
clear
%Frecuencia de oscilacion
wn1=0.5;
wn2=0.75;
wn3=1;
wn4=2;
wn5=4;
%Funciones de transferencia
F1=tf(2*wn1^2,[1 2*1*wn1 wn1^2]);
F2=tf(2*wn2^2,[1 2*0.667*wn2 wn2^2]);
F3=tf(2*wn3^2,[1 2*0.5*wn3 wn3^2]);
F4=tf(2*wn4^2,[1 2*0.25*wn4 wn4^2]);
F5=tf(2*wn5^2,[1 2*0.125*wn5 wn5^2]);
%Grafica de respuesta a entrada escalon
subplot(1,2,1)
step(F1,F2,F3,F4,F5)
grid on
title('Respuesta en el timepo')
%Plano s
subplot(1,2,2)
pzmap(F1,F2,F3,F4,F5)
grid on
title('Plano s')
legend('wn=0.5','wn=0.75','wn=1','wn=2','wn=4')