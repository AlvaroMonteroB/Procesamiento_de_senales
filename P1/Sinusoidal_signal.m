function sinusoidal=Sinusoidal_signal(freq,amp,fase,dur,mps)
    t=linspace(0,dur,dur*mps);
    signal=amp*sin(2*pi*freq*t+fase);
    plot(t, signal);
    title('Señal Senoidal');
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    grid on;
    