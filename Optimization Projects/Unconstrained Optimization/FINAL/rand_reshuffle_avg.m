%Joshua Enxing
%Tufts University
%MA150

%SGD with random reshuffling and iterate averaging
%Inputs grad_f vector of gradient functions, m number of terms in the sum
%for f, x0 initial guess, constant s for stepsize diminishing, max number of (outer) iterations
%max_iters, real solution sol, and tolerance tol
function [x,err] = rand_reshuffle_avg(grad_f,m,x0,s,max_iters,sol,tol,seed,R)

err = zeros(max_iters,1);
x = x0;
disp("Iteration || Norm of x_k - x^*");

%fix seed
rng(seed);

x_temp = x;
%For max_iters outer iterations, we do m*max_iters total iterations
for i=1:max_iters
    
    %permute the elements 1,...,m
    p = randperm(m);
    
    %Find absolute error and store in vector
    v = norm(x_temp - sol);
    err(i) = v;
    disp(i + " || " + v);
    
    if v > tol
        %inner loop
        alpha = (R/((i+1)^s));
        for j=1:m
            grad_j = grad_f{p(j)};
            
            %use alpha_i = R/((i+1)^(3/4))
            x = x - alpha*grad_j(x);
        end
        x_temp = ((i-1)*x_temp + x)/i;
    else
        err = err(1:i); 
        break;
    end
end
x = x_temp;
end