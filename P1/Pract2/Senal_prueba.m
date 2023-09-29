t=linspace(0,3,3000);
funct=sin(2*pi*t)+cos(2*pi*t);

par=zeros(size(t));
impar=zeros(size(t));
N=length(t);
for i=1:N
      par(i)=.5*(funct(i)+funct(N-i+1));
      impar(i)=.5*(funct(i)-funct(N-i+1));
end



plot(t,par);
title('senal de prueba');








% Crear el gráfico de barras de precipitaciónfigure;
%bar(precipitacion, 'b'); % 'b' representa el color azul de las barras

% Personalizar el gráfico
%xlabel('Mes');
%ylabel('Precipitación (mm)');
%title('Precipitación Pluvial Mensual');
%xticks(1:12); % Establecer los valores del eje X de 1 a 12
%xticklabels(meses_del_ano); % Asignar los nombres de los meses al eje X
grid on;

% Ajustar el tamaño de la figura (opcional)


% Mostrar el gráfico