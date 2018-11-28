% Function to calculate error of the computed solution
function E = Error(Nx, T, T_anal)
diff = T - T_anal;
E = sqrt(sum(diff.*diff))/Nx;
end