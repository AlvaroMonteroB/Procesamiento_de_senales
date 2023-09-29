function plotting=func_plot(t,signal,title_str,xlabel_str,ylabel_str)
    plot(t, signal);
    title(title_str);
    xlabel(xlabel_str);
    ylabel(ylabel_str);
    grid on;
    for