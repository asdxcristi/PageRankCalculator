function [y] = MPD(A)#Metoda puterii directe

y=ones(size(A)(2),1);
#o iteratie e de ajuns conform testelor mele
z = A*y;
y = z/norm(z,1);
lambda = y'*A*y;

endfunction
