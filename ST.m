function[y]=ST(U,b)
n=size(U)(1);
y=zeros(n,1);
i=n;
while i>=1
	S=0;
	for j=i+1:n
		S=S+U(i,j)*y(j);#calculam suma coeficientilor necunoscutelor din ecuatie
	endfor
	y(i)=(b(i)-S)/U(i,i);#scoatem de jos in sus valorile pentru Xn,Xn-1,etc
	i--;#trecem la linia de deasupra
endwhile
endfunction
