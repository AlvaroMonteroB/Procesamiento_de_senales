function sinusoidal=Sinusoidal_signal(freq,amp,fase,dur,mps,name)
    t=linspace(0,dur,dur*mps);
    signal=amp*sin(2*pi*freq*t+fase);
    func_plot(t,signal,name,'Tiempo (s)','Amplitud')
   sinusoidal=signal;
end
    