% Function to evaluate the temperature profile using FTCS method
function [T,E] = FTCS(dt,dx,t)
% T: Vector that stores temperature values at each grid point
% E : Error
% dt: Nondimensional time step
% dx: Nondimensional grid spacing
Nx = 1/dx + 1; % Number of grid points
Nt = t/dt; % Number of time steps
d = dt/dx^2;
Told = T_initial(Nx);
if t == 0
    T = Told;
else
    T = zeros(Nx,1);
end
for j = 1:Nt
    for i = 2:Nx-1
        T(i) = Told(i)+ d*(Told(i+1) - 2*Told(i) + Told(i-1));
    end
% No need to update boundary conditions as they do not change with time
    Told = T;
end
E = Error(Nx, T, T_anal(dx,Nx,t));
end