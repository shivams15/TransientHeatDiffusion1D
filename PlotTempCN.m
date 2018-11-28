%Plots the temperature profile obtained from the Crank-Nicholson method
function PlotTempCN(dt,dx,t)
[T,~] = CrankNicholson(dt,dx,t);
plot(0:dx:1,T);
end
