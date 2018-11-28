% Function to evaluate the analytical temperature profile
function Ta = T_anal(dx,Nx,t)
Ta = zeros(Nx,1);
for i = 2:Nx-1
    for m = 0:5000
        Ta(i) = Ta(i) + 4*exp(-t*((2*m+1)*pi)^2)/(2*m+1)/pi*sin((2*m+1)*pi*(i-1)*dx);
    end
end
end