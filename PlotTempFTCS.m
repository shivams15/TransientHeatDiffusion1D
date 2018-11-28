%Plots the temperature profile obtained from the FTCS method
function PlotTempFTCS(dt,dx,t)
[T,~] = FTCS(dt,dx,t);
plot(0:dx:1,T);
end

