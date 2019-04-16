%1D FEM for poisson equation with given f_func_of_x function handle,
%vector partition (a partition of [0,1]), and true_soln_func_of_x function handle
%with u(0) = 0 and u(1) = 0
function u = one_d_fem_poisson_dir_bcs(f_func_of_x, partition,true_soln_func_of_x)

u_true = true_soln_func_of_x;
f = f_func_of_x;
y = partition;
n = length(y);
h = zeros(n-1,1);

u = zeros(n,1);
u(1) = 0;
u(n) = 0;

%Make vector of h values
for i=1:length(h)
    h(i) = y(i+1)-y(i);
end

%Fill up vector F
%Found slope and y-int of each basis function to 
%write each element of F as constant*int(f*x) +
%constant*int(f).
F = zeros(n-2,1);
for j=2:n-1
    g = @(x)x.*f(x)-y(j-1)*f(x);
    F(j-1) = F(j-1) + (1/h(j-1))*integral(g,y(j-1),y(j));
    
    g = @(x)y(j+1)*f(x)-x.*f(x);
    F(j-1) = F(j-1) + (1/h(j))*integral(g,y(j),y(j+1));
end


%Make matrix A as described in lecture
diag = zeros(n-2,1);
offdiag = zeros(n-3,1);
for i=1:n-3
    diag(i) = (1/h(i))+(1/h(i+1));
    offdiag(i) = (-1)*(1/h(i+1));
end
diag(n-2) = (1/h(n-2))+(1/h(n-1));

A = gallery('tridiag',offdiag,diag,offdiag);

u(2:n-1) = A\F;

plot(y,u);
%disp(L2_norm_error(u,u_true,y));
%disp(L2_norm_error_tent_uc2(u,u_true,y));
disp(L2_norm_error_parab_uc0(u,y));