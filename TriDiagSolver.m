% Function that solves a tridiagonal system of equations
function Q = TriDiagSolver(Nx,Q,L,U,D)
for k = 3:Nx-1
    D(k) = D(k) - U(k-1)*L(k)/D(k-1);
    Q(k) = Q(k) - Q(k-1)*L(k)/D(k-1);
end
Q(Nx-1) = Q(Nx-1)/D(Nx-1);
for k = Nx-2:-1:2
    Q(k) = (Q(k) - U(k)*Q(k+1))/D(k);
end
% Q(1) and Q(Nx) are already 0. Therefore, no need to update boundary conditions
end
