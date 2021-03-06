function [r,J] = residual_and_jac_source_loc(x,d,A)

x = x';
r = @(x) (norm(x-A(:,1)).^2-d(1)^2).^2 + (norm(x-A(:,2)).^2-d(2)^2).^2 + (norm(x-A(:,3)).^2-d(3)^2).^2 + (norm(x-A(:,4)).^2-d(4)^2).^2 + (norm(x-A(:,5)).^2-d(5)^2).^2;
J = @(x) 4.*(x-A(:,1)).*(norm(x-A(:,1)).^2-d(1)^2) + 4.*(x-A(:,2)).*(norm(x-A(:,2)).^2-d(2)^2) + 4.*(x-A(:,3)).*(norm(x-A(:,3)).^2-d(3)^2) + 4.*(x-A(:,4)).*(norm(x-A(:,4)).^2-d(4)^2) + 4.*(x-A(:,5)).*(norm(x-A(:,5)).^2-d(5)^2);


