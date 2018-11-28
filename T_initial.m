% Function to evaluate the initial temperature profile for the chosen grid
function Ti = T_initial(Nx)
Ti = ones(Nx, 1);
Ti(1) = 0; % Boundary condition at the left wall
Ti(Nx) = 0; % Boundary condition at the right wall
end