% Function to evaluate the temperature profile using Crank-Nicholson method
function [T,E] = CrankNicholson(dt,dx,t)
% dt: Nondimensional time step
% dx: Nondimensional grid spacing
Nx = 1/dx + 1; % Number of grid points
Nt = t/dt; % Number of time steps
d = dt/dx^2;
T = T_initial(Nx);
Q = zeros(Nx,1);
L = -(d/2)*ones(Nx,1);
U = -(d/2)*ones(Nx,1);
D = (1+d)*ones(Nx,1);
for i = 1:Nt
    for j = 2:Nx-1
        Q(j) = (1-d)*T(j) + (d/2)*(T(j+1) + T(j-1));
    end
% No need to modify Q(2) and Q(Nx-1)for BCs as T(1) and T(Nx) are zero for all times
    T = TriDiagSolver(Nx,Q,L,U,D);
end
E = Error(Nx, T, T_anal(dx,Nx,t));
end
