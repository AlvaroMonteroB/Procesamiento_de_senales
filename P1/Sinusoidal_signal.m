function sinusoidal=Sinusoidal_signal(freq,amp,fase,dur,mps,name)
    t=linspace(0,dur,dur*mps);
    signal=amp*sin(2*pi*freq*t+fase);
    plot(t, signal);
    title(name);
    xlabel('Tiempo (s)');
    ylabel('Amplitud');
    grid on;
    