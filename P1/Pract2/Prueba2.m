n=linspace(-25,25,100)
A=1.5;

xn =A.*exp(1i*n/4);
subplot (211) ; 
stem(n,real(xn),'r');
grid on;
title ('Parte Real de x (n)') ;
xlabel(' n ') ;
subplot (212) ;
stem (n, imag(xn),'b'),
title('Parte Imaginaria de x (n)')